package world

import (
	"context"
	v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"
	"go.uber.org/zap"
	"time"
)

type WorldService struct {
	v1.WorldServiceServer

	playerManager *PlayerManager

	log *zap.Logger
}

func NewService(log *zap.Logger, pm *PlayerManager) *WorldService {
	return &WorldService{
		log:           log,
		playerManager: pm,
	}
}

func (ws *WorldService) Dispose() {

}

func (ws *WorldService) WorldInfo(context.Context, *v1.Empty) (*v1.World, error) {
	ws.log.Info(
		"received a request",
		zap.String("method", "WorldInfo"),
	)

	return &v1.World{}, nil
}

func (ws *WorldService) Connect(context.Context, *v1.ConnectRequest) (*v1.ConnectResponse, error) {
	return &v1.ConnectResponse{}, nil
}

func (ws *WorldService) GetResources(ctx context.Context, r *v1.ResourcesRequest) (*v1.ResourcesResponse, error) {
	return &v1.ResourcesResponse{
		Resources: []*v1.Resource{
			{
				Id:        "money",
				Value:     100000,
				Timestamp: time.Now().Unix(),
				Rpm:       0,
			},
			{
				Id:        "iron",
				Value:     3000,
				Timestamp: time.Now().Unix(),
				Rpm:       60000,
			},
			{
				Id:        "clay",
				Value:     2000,
				Timestamp: time.Now().Unix(),
				Rpm:       25000,
			},
			{
				Id:        "oil",
				Value:     0,
				Timestamp: time.Now().Unix(),
				Rpm:       10000,
			},
		},
	}, nil
}

func (ws *WorldService) Play(s v1.WorldService_PlayServer) error {
	return nil
}

func (ws *WorldService) Watch(_ *v1.Empty, s v1.WorldService_WatchServer) error {
	return nil
}
