package world

import v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"

type ExpeditionService struct {
	// data is a map of [player_id][]Expedition
	data map[string][]*v1.Expedition
	// powers is a map of [player_id]PlayerPower
	powers map[string]*v1.PlayerPower

	// availableExpeditions is the list of currently available
	// expeditions to all players in the world
	availableExpeditions []*v1.Expedition
}

func NewExpeditionService() *ExpeditionService {
	return &ExpeditionService{
		data:                 map[string][]*v1.Expedition{},
		powers:               map[string]*v1.PlayerPower{},
		availableExpeditions: []*v1.Expedition{},
	}
}
