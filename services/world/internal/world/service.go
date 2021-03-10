package world

import (
	"context"
	v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"
	"go.uber.org/zap"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
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
	// early return if the player is already connected (the session has his data)
	if ws.playerManager.IsAllowed(req.PlayerId) {
		return &v1.ConnectResponse{
			Approved: true,
		}, nil
	}

	err := ws.playerManager.TryConnect(req.PlayerId)
	if err != nil {
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

	ws.log.Info("A new player has connected", zap.String("playerID", req.PlayerId))
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

func (ws *WorldService) StartExpedition(ctx context.Context, req *v1.StartExpeditionRequest) (*v1.StartExpeditionResponse, error) {
	return &v1.StartExpeditionResponse{}, nil
}

func (ws *WorldService) CollectExpedition(ctx context.Context, req *v1.CollectExpeditionRequest) (*v1.CollectExpeditionResponse, error) {
	return &v1.CollectExpeditionResponse{}, nil
}

func (ws *WorldService) ListExpeditions(ctx context.Context, req *v1.ListExpeditionsRequest) (*v1.ListExpeditionsResponse, error) {
	ee, err := ws.expeditionsMan.ListExpeditions(req.PlayerId, req.ExpeditionFilter)
	if err != nil {
		return &v1.ListExpeditionsResponse{}, err
	}

	power := ws.expeditionsMan.ListPower(req.PlayerId)

	return &v1.ListExpeditionsResponse{
		Expeditions: ee,
		Power:       power,
	}, nil
}

func (ws *WorldService) Play(s v1.WorldService_PlayServer) error {
	return nil
}

func (ws *WorldService) Watch(_ *emptypb.Empty, s v1.WorldService_WatchServer) error {
	return nil
}
