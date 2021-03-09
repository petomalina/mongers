package world

import (
	"context"
	v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"
	"go.uber.org/zap"
	"google.golang.org/protobuf/types/known/emptypb"
	"time"
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

func (ws *WorldService) Connect(context.Context, *v1.ConnectRequest) (*v1.ConnectResponse, error) {
	return &v1.ConnectResponse{}, nil
}

func (ws *WorldService) ListResources(ctx context.Context, r *v1.ListResourcesRequest) (*v1.ListResourcesResponse, error) {
	return &v1.ListResourcesResponse{
		Resources: []*v1.Resource{
			{
				ResourceId: "money",
				Value:      100000,
				Timestamp:  time.Now().Unix(),
				Rpm:        0,
			},
			{
				ResourceId: "iron",
				Value:      3000,
				Timestamp:  time.Now().Unix(),
				Rpm:        60000,
			},
			{
				ResourceId: "clay",
				Value:      2000,
				Timestamp:  time.Now().Unix(),
				Rpm:        25000,
			},
			{
				ResourceId: "oil",
				Value:      0,
				Timestamp:  time.Now().Unix(),
				Rpm:        10000,
			},
		},
	}, nil
}

func (ws *WorldService) StartExpedition(context.Context, *v1.StartExpeditionRequest) (*v1.StartExpeditionResponse, error) {
	return &v1.StartExpeditionResponse{}, nil
}

func (ws *WorldService) CollectExpedition(context.Context, *v1.CollectExpeditionRequest) (*v1.CollectExpeditionResponse, error) {
	return &v1.CollectExpeditionResponse{}, nil
}

func (ws *WorldService) ListExpeditions(context.Context, *v1.ListExpeditionsRequest) (*v1.ListExpeditionsResponse, error) {
	return &v1.ListExpeditionsResponse{}, nil
}

func (ws *WorldService) Play(s v1.WorldService_PlayServer) error {
	return nil
}

func (ws *WorldService) Watch(_ *emptypb.Empty, s v1.WorldService_WatchServer) error {
	return nil
}
