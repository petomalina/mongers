package world

import (
	"errors"
	"fmt"
	v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"
	"google.golang.org/protobuf/types/known/durationpb"
	"sync"
	"time"
)

var (
	ErrExpeditionNotFound = errors.New("expedition not found")
)

type ExpeditionService struct {
	// data is a map of [player_id][expedition_id]Expedition
	data map[string]map[string]*v1.ExpeditionState

	dataMutex sync.RWMutex

	timeSource TimeSource

	// availableExpeditions is the list of currently available
	// expeditions to all players in the world
	availableExpeditions map[string]*v1.Expedition
}

func NewExpeditionService() *ExpeditionService {
	return &ExpeditionService{
		data:       map[string]map[string]*v1.ExpeditionState{},
		timeSource: DefaultTimeSource{},
		availableExpeditions: map[string]*v1.Expedition{
			"12345": {
				ExpeditionId:   "12345",
				Category:       v1.ExpeditionCategory_EXPEDITION_CATEGORY_QUICK_SEARCH,
				ResourceTarget: v1.ResourceCategory_RESOURCE_CATEGORY_IRON,
				Name:           "I saw something!",
				BaseDuration:   durationpb.New(time.Second * 30),
				Cost: []*v1.Resource{
					{
						Value:      1000,
						ResourceId: GetResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_POWER),
					},
				},
				Rewards: []*v1.Resource{
					{
						Value:      100 * ResourceMagnifierInt,
						ResourceId: GetResourceExperienceID(v1.ResourceCategory_RESOURCE_CATEGORY_EXPERIENCE),
					},
					{
						Value:      50 * ResourceMagnifierInt,
						ResourceId: GetResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_IRON),
					},
				},
			},
			"12346": {
				ExpeditionId:   "12346",
				Category:       v1.ExpeditionCategory_EXPEDITION_CATEGORY_NEARBY_EXPLORATION,
				ResourceTarget: v1.ResourceCategory_RESOURCE_CATEGORY_CLAY,
				Name:           "Is it a mine?",
				BaseDuration:   durationpb.New(time.Minute * 6),
				Cost: []*v1.Resource{
					{
						Value:      6000,
						ResourceId: GetResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_POWER),
					},
				},
				Rewards: []*v1.Resource{
					{
						Value:      600 * 1000,
						ResourceId: GetResourceExperienceID(v1.ResourceCategory_RESOURCE_CATEGORY_EXPERIENCE),
					},
				},
			},
			"12347": {
				ExpeditionId:   "12347",
				Category:       v1.ExpeditionCategory_EXPEDITION_CATEGORY_NEW_HORIZONS,
				ResourceTarget: v1.ResourceCategory_RESOURCE_CATEGORY_OIL,
				Name:           "Look! An island!",
				BaseDuration:   durationpb.New(time.Minute * 60),
				Cost: []*v1.Resource{
					{
						Value:      60000,
						ResourceId: GetResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_POWER),
					},
				},
				Rewards: []*v1.Resource{
					{
						Value:      6000 * 1000,
						ResourceId: GetResourceExperienceID(v1.ResourceCategory_RESOURCE_CATEGORY_EXPERIENCE),
					},
				},
			},
		},
	}
}

func (es *ExpeditionService) RegisterPlayer(player string) error {
	// TODO: the players should be in a storage and we should look there first

	// register a new player to the game
	es.data[player] = map[string]*v1.ExpeditionState{}

	return nil
}

func (es *ExpeditionService) DisposePlayer(player string) error {
	delete(es.data, player)
	return nil
}

// ListExpeditions returns available expeditions as well as reconciled expeditions that
// are in progress or ready to collect (done).
func (es *ExpeditionService) ListExpeditions(playerID string, filter v1.ListExpeditionFilter) (map[string]*v1.Expedition, map[string]*v1.ExpeditionState, error) {
	es.dataMutex.Lock()
	defer es.dataMutex.Unlock()

	var expeditions map[string]*v1.Expedition
	var expeditionStates map[string]*v1.ExpeditionState

	if filter == v1.ListExpeditionFilter_LIST_EXPEDITION_FILTER_ALL ||
		filter == v1.ListExpeditionFilter_LIST_EXPEDITION_FILTER_PLAYER_ONLY {

		expeditionStates = es.data[playerID]
	}

	if filter == v1.ListExpeditionFilter_LIST_EXPEDITION_FILTER_ALL ||
		filter == v1.ListExpeditionFilter_LIST_EXPEDITION_FILTER_AVAILABLE_ONLY {
		expeditions = es.availableExpeditions
	}

	return expeditions, expeditionStates, nil
}

// SelectAvailableExpedition returns either a specific expedition if available,
// or nil if unavailable.
func (es *ExpeditionService) SelectAvailableExpedition(expeditionID string) *v1.Expedition {
	es.dataMutex.RLock()
	defer es.dataMutex.RUnlock()

	return es.availableExpeditions[expeditionID]
}

// StartExpedition starts the given expedition for the player. The expedition does not need to be
// in the availableExpeditions for this method to work. This is in case an expedition expired
// while the request was fulfilling. It also enables custom expeditions to be registered for a player.
func (es *ExpeditionService) StartExpedition(playerID string, expedition *v1.ExpeditionState) (*v1.ExpeditionState, error) {
	es.dataMutex.Lock()
	defer es.dataMutex.Unlock()

	es.data[playerID][expedition.Expedition.ExpeditionId] = expedition

	return expedition, nil
}

func (es *ExpeditionService) CollectExpedition(playerID string, state *v1.ExpeditionState) error {
	es.dataMutex.Lock()
	defer es.dataMutex.Unlock()

	if _, ok := es.data[playerID][state.Expedition.ExpeditionId]; !ok {
		return ErrExpeditionNotFound
	}

	delete(es.data[playerID], state.Expedition.ExpeditionId)
	return nil
}

func generateExpedition() *v1.Expedition {
	return nil
}

// reconcileExpedition updates the state of the expedition to the current time
func reconcileExpedition(state *v1.ExpeditionState, tsource ...TimeSource) *v1.ExpeditionState {
	if TimeNow(tsource...).Sub(state.StartedAt.AsTime()) >= state.Duration.AsDuration() {
		state.Status = v1.ExpeditionStatus_EXPEDITION_STATUS_DONE
	}

	return state
}

// GetResourceExperienceID returns an ID that is used to store experience that the player
// has gained during expeditions for a certain resource
func GetResourceExperienceID(cat v1.ResourceCategory) string {
	return fmt.Sprintf("exp_%d", cat)
}
