package world

import (
	"context"
	v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"
	"go.uber.org/zap"
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
	return nil, nil
}

func (ws *WorldService) Connect(context.Context, *v1.ConnectRequest) (*v1.ConnectResponse, error) {
	return nil, nil
}

func (ws *WorldService) Play(s v1.WorldService_PlayServer) error {
	return nil
}

func (ws *WorldService) Watch(_ *v1.Empty, s v1.WorldService_WatchServer) error {
	return nil
}
