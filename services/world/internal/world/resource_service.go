package world

import (
	v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"
	"time"
)

type ResourceService struct {
	// data is a map of [player_id][]Resource
	data map[string][]*v1.Resource
}

func NewResourceService() *ResourceService {
	return &ResourceService{
		data: map[string][]*v1.Resource{},
	}
}

func (rs *ResourceService) RegisterPlayer(playerID string) error {
	// create the basic resources for the playerID, so the expeditions
	// can work with them
	rs.data[playerID] = []*v1.Resource{
		{
			ResourceId: "money",
			Value:      0,
			Timestamp:  time.Now().Unix(),
			Rpm:        0,
		},
		{
			ResourceId: "iron",
			Value:      0,
			Timestamp:  time.Now().Unix(),
			Rpm:        0,
		},
		{
			ResourceId: "clay",
			Value:      0,
			Timestamp:  time.Now().Unix(),
			Rpm:        0,
		},
		{
			ResourceId: "oil",
			Value:      0,
			Timestamp:  time.Now().Unix(),
			Rpm:        0,
		},
	}

	return nil
}

func (rs *ResourceService) DisposePlayer(player string) error {
	return nil
}

func (rs *ResourceService) ListResources(playerID string) []*v1.Resource {
	return rs.data[playerID]
}