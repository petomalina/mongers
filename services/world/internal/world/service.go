package world

import (
	"context"
	"github.com/grpc-ecosystem/go-grpc-middleware/util/metautils"
	v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"
	"go.uber.org/zap"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/timestamppb"
	"io"
)

type WorldService struct {
	v1.WorldServiceServer

	playerManager *PlayerManager

	resourcesMan   *ResourceService
	expeditionsMan *ExpeditionService

	log *zap.Logger
}

func NewService(log *zap.Logger, pm *PlayerManager) *WorldService {
	return &WorldService{
		log:            log,
		playerManager:  pm,
		resourcesMan:   NewResourceService(),
		expeditionsMan: NewExpeditionService(),
	}
}

func (ws *WorldService) Dispose() {

}

func (ws *WorldService) WorldInfo(context.Context, *emptypb.Empty) (*v1.World, error) {
	ws.log.Info(
		"received a request",
		zap.String("method", "WorldInfo"),
	)

	return &v1.World{}, nil
}

type PlayerRegister interface {
	RegisterPlayer(playerID string) error
	DisposePlayer(playerID string) error
}

func (ws *WorldService) Connect(ctx context.Context, req *v1.ConnectRequest) (*v1.ConnectResponse, error) {
	L := ws.log.With(
		zap.String("playerID", req.PlayerId),
		zap.String("method", "/v1.WorldService/Connect"),
	)
	L.Info("New Connect request")

	// early return if the player is already connected (the session has his data)
	if ws.playerManager.IsAllowed(req.PlayerId) {
		return &v1.ConnectResponse{
			Approved: true,
		}, nil
	}

	err := ws.playerManager.TryConnect(req.PlayerId)
	if err != nil {
		L.Warn("Server exhausted")
		return &v1.ConnectResponse{
			Approved: false,
		}, status.Error(codes.ResourceExhausted, err.Error())
	}

	// TODO: this should probably be fetched from a DB
	player := &v1.Player{PlayerId: req.PlayerId}

	// TODO: this could be probably abstracted in some way, but we still need
	//       a non-interfaced direct access to the services
	registers := []PlayerRegister{
		ws.resourcesMan,
		ws.expeditionsMan,
	}

	// register player to all resources
	for _, reg := range registers {
		err = reg.RegisterPlayer(player.PlayerId)
		if err != nil {
			return &v1.ConnectResponse{
				Approved: false,
			}, status.Error(codes.Canceled, err.Error())
		}
	}

	L.Info("A new player has connected")
	return &v1.ConnectResponse{
		Approved: true,
	}, nil
}

func (ws *WorldService) ListResourcesState(ctx context.Context, req *v1.ListResourcesStateRequest) (*v1.ListResourcesStateResponse, error) {
	rr := ws.resourcesMan.ListResources(req.PlayerId)

	return &v1.ListResourcesStateResponse{
		Resources: rr,
	}, nil
}

// notifyResourceStateChange sends the notification about a resource state change to the
// particular player
func (ws *WorldService) notifyResourceStateChange(playerID string) {
	stream := ws.playerManager.GetNotifier(playerID)
	if stream == nil {
		return
	}

	rr := ws.resourcesMan.ListResources(playerID)

	err := stream.Send(
		&v1.ServerPlayMessage{
			Res: &v1.ServerPlayMessage_ListResources{
				ListResources: &v1.ListResourcesStateResponse{
					Resources: rr,
				},
			},
		},
	)
	if err != nil {
		ws.log.Warn(
			"watch stream broken for a player, cleaning up the stream",
			zap.String("playerID", playerID),
		)
		ws.playerManager.StopWatch(playerID)
	}
}

// StartExpedition starts a new expedition for a player if they have enough resources
// and the expedition is currently available.
func (ws *WorldService) StartExpedition(ctx context.Context, req *v1.StartExpeditionRequest) (*v1.StartExpeditionResponse, error) {
	L := ws.log.With(
		zap.String("playerID", req.PlayerId),
		zap.String("expeditionID", req.ExpeditionId),
		zap.String("method", "/v1.WorldService/StartExpedition"),
	)
	L.Info("New StartExpedition request")

	ex := ws.expeditionsMan.SelectAvailableExpedition(req.ExpeditionId)
	if ex == nil {
		return &v1.StartExpeditionResponse{}, status.Error(
			codes.NotFound,
			"expedition could not be found",
		)
	}

	if ws.expeditionsMan.IsPlayerOnExpedition(req.PlayerId, req.ExpeditionId) {
		return &v1.StartExpeditionResponse{}, status.Error(
			codes.FailedPrecondition,
			ErrExpeditionAlreadyStarted.Error(),
		)
	}

	err := ws.resourcesMan.SpendResources(req.PlayerId, ex.Cost)
	if err != nil {
		return &v1.StartExpeditionResponse{}, status.Error(codes.FailedPrecondition, err.Error())
	}

	state := &v1.ExpeditionState{
		Expedition: ex,
		Status:     v1.ExpeditionStatus_EXPEDITION_STATUS_IN_PROGRESS,
		StartedAt:  timestamppb.Now(),
		Duration:   ex.BaseDuration,
	}

	ws.expeditionsMan.StartExpedition(req.PlayerId, state)
	ws.notifyResourceStateChange(req.PlayerId)

	L.Info("New Expedition started")
	return &v1.StartExpeditionResponse{}, nil
}

func (ws *WorldService) CollectExpedition(ctx context.Context, req *v1.CollectExpeditionRequest) (*v1.CollectExpeditionResponse, error) {
	L := ws.log.With(
		zap.String("playerID", req.PlayerId),
		zap.String("expeditionID", req.ExpeditionId),
		zap.String("method", "/v1.WorldService/CollectExpedition"),
	)
	L.Info("New CollectExpedition request")

	_, exs, err := ws.expeditionsMan.ListExpeditions(
		req.PlayerId,
		v1.ListExpeditionFilter_LIST_EXPEDITION_FILTER_PLAYER_ONLY,
	)
	if err != nil {
		L.Info("Cannot list expeditions", zap.Error(err))
		return &v1.CollectExpeditionResponse{}, status.Error(codes.Canceled, err.Error())
	}

	var expedition *v1.ExpeditionState
	for _, e := range exs {
		if e.Expedition.ExpeditionId == req.ExpeditionId {
			expedition = e
		}
	}
	if expedition == nil {
		err := status.Error(
			codes.NotFound,
			"Expedition not found",
		)
		L.Info("Expedition not found", zap.Error(err))
		return &v1.CollectExpeditionResponse{}, err
	}

	expedition = reconcileExpedition(expedition, DefaultTimeSource{})

	if expedition.Status != v1.ExpeditionStatus_EXPEDITION_STATUS_DONE {
		err := status.Error(
			codes.FailedPrecondition,
			"Expedition not done yet",
		)
		L.Info("Expedition not done yet")
		return &v1.CollectExpeditionResponse{}, err
	}

	err = ws.expeditionsMan.CollectExpedition(req.PlayerId, expedition)
	if err != nil {
		L.Info("Cannot collect expedition", zap.Error(err))
		return &v1.CollectExpeditionResponse{}, status.Error(codes.Internal, err.Error())
	}

	err = ws.resourcesMan.AddResources(req.PlayerId, expedition.Expedition.Rewards)
	if err != nil {
		L.Info("Cannot add expedition reward", zap.Error(err))
		return &v1.CollectExpeditionResponse{}, status.Error(codes.Internal, err.Error())
	}

	L.Info("Expedition collected")
	return &v1.CollectExpeditionResponse{}, nil
}

func (ws *WorldService) ListExpeditions(ctx context.Context, req *v1.ListExpeditionsRequest) (*v1.ListExpeditionsResponse, error) {
	expeditions, states, err := ws.expeditionsMan.ListExpeditions(
		req.PlayerId,
		req.ExpeditionFilter,
	)
	if err != nil {
		return &v1.ListExpeditionsResponse{}, err
	}

	return &v1.ListExpeditionsResponse{
		AvailableExpeditions: expeditions,
		ExpeditionStates:     states,
	}, nil
}

func (ws *WorldService) Play(s v1.WorldService_PlayServer) error {
	playerID := metautils.ExtractIncoming(s.Context()).Get("user_id")

	ws.playerManager.BeginWatch(playerID, s)
	defer func() {
		ws.playerManager.StopWatch(playerID)
	}()

	for {
		req, err := s.Recv()
		if err == io.EOF {
			return nil
		}
		if err != nil {
			return err
		}

		switch r := req.Req.(type) {
		case *v1.ClientPlayMessage_ListResources:
			res, err := ws.ListResourcesState(s.Context(), r.ListResources)
			if err != nil {
				return err
			}
			err = s.Send(
				&v1.ServerPlayMessage{
					Res: &v1.ServerPlayMessage_ListResources{
						ListResources: res,
					},
				},
			)
			if err != nil {
				return err
			}
		case *v1.ClientPlayMessage_ListExpeditions:
			res, err := ws.ListExpeditions(s.Context(), r.ListExpeditions)
			if err != nil {
				return err
			}
			err = s.Send(
				&v1.ServerPlayMessage{
					Res: &v1.ServerPlayMessage_ListExpeditions{
						ListExpeditions: res,
					},
				},
			)
			if err != nil {
				return err
			}
		case *v1.ClientPlayMessage_StartExpedition:
			res, err := ws.StartExpedition(s.Context(), r.StartExpedition)
			if err != nil {
				return err
			}
			err = s.Send(
				&v1.ServerPlayMessage{
					Res: &v1.ServerPlayMessage_StartExpedition{
						StartExpedition: res,
					},
				},
			)
			if err != nil {
				return err
			}
		}
	}
}

func (ws *WorldService) Watch(_ *emptypb.Empty, s v1.WorldService_WatchServer) error {
	return nil
}
