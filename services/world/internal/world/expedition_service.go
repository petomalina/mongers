package world

import (
	v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"
	"google.golang.org/protobuf/types/known/durationpb"
	"time"
)

type ExpeditionService struct {
	// data is a map of [player_id][]Expedition
	data map[string][]*v1.Expedition

	// availableExpeditions is the list of currently available
	// expeditions to all players in the world
	availableExpeditions []*v1.Expedition
}

func NewExpeditionService() *ExpeditionService {
	return &ExpeditionService{
		data: map[string][]*v1.Expedition{},
		availableExpeditions: []*v1.Expedition{
			{
				ExpeditionId: "12345",
				Category:     v1.ExpeditionCategory_EXPEDITION_CATEGORY_QUICK_SEARCH,
				Status:       v1.ExpeditionStatus_EXPEDITION_STATUS_AVAILABLE,
				Name:         "I saw something!",
				StartedAt:    nil,
				Duration:     durationpb.New(time.Second * 30),
				PowerCost:    1,
			},
			{
				ExpeditionId: "12346",
				Category:     v1.ExpeditionCategory_EXPEDITION_CATEGORY_NEARBY_EXPLORATION,
				Status:       v1.ExpeditionStatus_EXPEDITION_STATUS_AVAILABLE,
				Name:         "Is it a mine?",
				StartedAt:    nil,
				Duration:     durationpb.New(time.Minute * 6),
				PowerCost:    6,
			},
			{
				ExpeditionId: "12347",
				Category:     v1.ExpeditionCategory_EXPEDITION_CATEGORY_NEW_HORIZONS,
				Status:       v1.ExpeditionStatus_EXPEDITION_STATUS_AVAILABLE,
				Name:         "Look! An island!",
				StartedAt:    nil,
				Duration:     durationpb.New(time.Minute * 60),
				PowerCost:    60,
			},
		},
	}
}

func (es *ExpeditionService) RegisterPlayer(player string) error {
	// TODO: the players should be in a storage and we should look there first

	// register a new player to the game
	es.data[player] = []*v1.Expedition{}

	return nil
}

func (es *ExpeditionService) DisposePlayer(player string) error {
	return nil
}

func (es *ExpeditionService) ListExpeditions(playerID string, filter v1.ListExpeditionFilter) ([]*v1.Expedition, error) {
	var expeditions []*v1.Expedition

	expeditions = append(expeditions, es.data[playerID]...)
	expeditions = append(expeditions, es.availableExpeditions...)

	return expeditions, nil
}
