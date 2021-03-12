package world

import (
	v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"
	"google.golang.org/protobuf/types/known/durationpb"
	"sync"
	"time"
)

type ExpeditionService struct {
	// data is a map of [player_id][]Expedition
	data map[string][]*v1.ExpeditionState

	dataMutex sync.RWMutex

	timeSource TimeSource

	// availableExpeditions is the list of currently available
	// expeditions to all players in the world
	availableExpeditions []*v1.Expedition
}

func NewExpeditionService() *ExpeditionService {
	return &ExpeditionService{
		data:       map[string][]*v1.ExpeditionState{},
		timeSource: DefaultTimeSource{},
		availableExpeditions: []*v1.Expedition{
			{
				ExpeditionId: "12345",
				Category:     v1.ExpeditionCategory_EXPEDITION_CATEGORY_QUICK_SEARCH,
				Name:         "I saw something!",
				BaseDuration: durationpb.New(time.Second * 30),
				Cost: []*v1.Resource{
					{
						Value:    1000,
						Category: v1.ResourceCategory_RESOURCE_CATEGORY_POWER,
					},
				},
			},
			{
				ExpeditionId: "12346",
				Category:     v1.ExpeditionCategory_EXPEDITION_CATEGORY_NEARBY_EXPLORATION,
				Name:         "Is it a mine?",
				BaseDuration: durationpb.New(time.Minute * 6),
				Cost: []*v1.Resource{
					{
						Value:    6000,
						Category: v1.ResourceCategory_RESOURCE_CATEGORY_POWER,
					},
				},
			},
			{
				ExpeditionId: "12347",
				Category:     v1.ExpeditionCategory_EXPEDITION_CATEGORY_NEW_HORIZONS,
				Name:         "Look! An island!",
				BaseDuration: durationpb.New(time.Minute * 60),
				Cost: []*v1.Resource{
					{
						Value:    60000,
						Category: v1.ResourceCategory_RESOURCE_CATEGORY_POWER,
					},
				},
			},
		},
	}
}

func (es *ExpeditionService) RegisterPlayer(player string) error {
	// TODO: the players should be in a storage and we should look there first

	// register a new player to the game
	es.data[player] = []*v1.ExpeditionState{}

	return nil
}

func (es *ExpeditionService) DisposePlayer(player string) error {
	return nil
}

func (es *ExpeditionService) ListExpeditions(playerID string, filter v1.ListExpeditionFilter) ([]*v1.Expedition, []*v1.ExpeditionState, error) {
	es.dataMutex.RLock()
	defer func() {
		es.dataMutex.RUnlock()
	}()

	var expeditions []*v1.Expedition
	var expeditionStates []*v1.ExpeditionState

	if filter == v1.ListExpeditionFilter_LIST_EXPEDITION_FILTER_ALL ||
		filter == v1.ListExpeditionFilter_LIST_EXPEDITION_FILTER_PLAYER_ONLY {
		// reconcile all states before they are sent
		for i := 0; i < len(es.data[playerID]); i++ {
			es.data[playerID][i] = reconcileExpedition(es.data[playerID][i], es.timeSource)
		}

		expeditionStates = append(expeditionStates, es.data[playerID]...)
	}

	if filter == v1.ListExpeditionFilter_LIST_EXPEDITION_FILTER_ALL ||
		filter == v1.ListExpeditionFilter_LIST_EXPEDITION_FILTER_AVAILABLE_ONLY {
		expeditions = append(expeditions, es.availableExpeditions...)
	}

	return expeditions, expeditionStates, nil
}

// SelectAvailableExpedition returns either a specific expedition if available,
// or nil if unavailable.
func (es *ExpeditionService) SelectAvailableExpedition(expeditionID string) *v1.Expedition {
	es.dataMutex.RLock()
	defer func() {
		es.dataMutex.RUnlock()
	}()

	for _, ex := range es.availableExpeditions {
		if ex.ExpeditionId == expeditionID {
			return ex
		}
	}

	return nil
}

// StartExpedition starts the given expedition for the player. The expedition does not need to be
// in the availableExpeditions for this method to work. This is in case an expedition expired
// while the request was fulfilling. It also enables custom expeditions to be registered for a player.
func (es *ExpeditionService) StartExpedition(playerID string, expedition *v1.ExpeditionState) *v1.ExpeditionState {
	es.dataMutex.Lock()
	defer func() {
		es.dataMutex.Unlock()
	}()

	es.data[playerID] = append(es.data[playerID], expedition)

	return expedition
}

// reconcileExpedition updates the state of the expedition to the current time
func reconcileExpedition(state *v1.ExpeditionState, tsource ...TimeSource) *v1.ExpeditionState {
	if TimeNow(tsource...).Sub(state.StartedAt.AsTime()) >= state.Duration.AsDuration() {
		state.Status = v1.ExpeditionStatus_EXPEDITION_STATUS_DONE
	}

	return state
}
