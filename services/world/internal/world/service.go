package world

import (
	"context"
	v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"
	"go.uber.org/zap"
)

type WorldService struct {
	v1.WorldServiceServer

	log *zap.Logger
}

func NewService(log *zap.Logger) *WorldService {
	return &WorldService{
		log: log,
	}
}

func (ws *WorldService) Dispose() {

}

func (ws *WorldService) WorldInfo(context.Context, *v1.Empty) (*v1.Empty, error) {
	return nil, nil
}
