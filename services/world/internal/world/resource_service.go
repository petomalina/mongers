package world

import v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"

type ResourceService struct {
	// data is a map of [player_id][]Resource
	data map[string][]*v1.Resource
}

func NewResourceService() *ResourceService {
	return &ResourceService{
		data: map[string][]*v1.Resource{},
	}
}
