package world

import (
	"errors"
	"fmt"
	v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"
	"google.golang.org/protobuf/types/known/timestamppb"
	"math"
	"sync"
	"time"
)

var (
	ErrNotEnoughResources = errors.New("not enough resources to spend")
)

const (
	ResourceMagnifier    float64 = 1000
	ResourceMagnifierInt int64   = 1000
)

type ResourceService struct {
	// data is a map of [player_id][]Resource
	data map[string]map[string]*v1.ResourceState

	dataMutex sync.RWMutex
}

func NewResourceService() *ResourceService {
	return &ResourceService{
		data: map[string]map[string]*v1.ResourceState{},
	}
}

func (rs *ResourceService) RegisterPlayer(playerID string) error {
	rs.dataMutex.Lock()
	defer rs.dataMutex.Unlock()

	powerID := getResourceID(
		v1.ResourceCategory_RESOURCE_CATEGORY_POWER,
	)

	rs.data[playerID] = map[string]*v1.ResourceState{
		powerID: {
			Resource: &v1.Resource{
				ResourceId: powerID,
				Value:      75000,
			},
			Timestamp: timestamppb.Now(),
			Rpm:       int64(0.142 * ResourceMagnifier),
		},
	}

	return nil
}

func (rs *ResourceService) DisposePlayer(player string) error {
	return nil
}

// ListResources returns all registered resources for a given player
func (rs *ResourceService) ListResources(playerID string) map[string]*v1.ResourceState {
	rs.dataMutex.RLock()
	defer func() {
		rs.dataMutex.RUnlock()
	}()

	return rs.data[playerID]
}

// ListResource returns the selected resource or nil if the resource does not exist (thus 0)
func (rs *ResourceService) ListResource(playerID string, cat v1.ResourceCategory) *v1.ResourceState {
	rs.dataMutex.RLock()
	defer func() {
		rs.dataMutex.RUnlock()
	}()

	return rs.data[playerID][getResourceID(cat)]
}

// SpendResources validates that the player has enough resources and if so, spends them.
func (rs *ResourceService) SpendResources(playerID string, spenders []*v1.Resource) error {
	rs.dataMutex.Lock()
	defer func() {
		rs.dataMutex.Unlock()
	}()

	playerResources := rs.data[playerID]

	return spendResources(playerResources, spenders)
}

// AddResources does not validate any resources and simply add them. In case the resource
// would be above its cap, it caps the resource.
func (rs *ResourceService) AddResources(playerID string, adders []*v1.Resource) error {
	rs.dataMutex.Lock()
	defer func() {
		rs.dataMutex.Unlock()
	}()

	rs.data[playerID] = addResources(rs.data[playerID], adders)
	return nil
}

// UpdateResourceRPM updates the RPM of a given category of a resource for the given player.
// In case the category does not exist, this function creates it first.
func (rs *ResourceService) UpdateResourceRPM(playerID string, cat v1.ResourceCategory, rpm int64) {
	rs.dataMutex.Lock()
	defer func() {
		rs.dataMutex.Unlock()
	}()

	resourceID := getResourceID(cat)

	// select and create the resource if it does not exist
	res := rs.data[playerID][resourceID]
	if res == nil {
		res = &v1.ResourceState{
			Resource: &v1.Resource{
				ResourceId: resourceID,
			},
		}

		// add the newly created resource to the registered resources
		rs.data[playerID][resourceID] = res
	}

	updateResourceRPM(res, rpm)
}

// SpendResources tries to spend resources from a given resource pool. It can result in the following errors:
// - ErrNotEnoughResources - given resource pool does not have enough resources in it
func spendResources(pool map[string]*v1.ResourceState, spenders []*v1.Resource) error {
	var cats []string
	for _, spender := range spenders {
		cats = append(cats, spender.ResourceId)
	}

	// validate that the player has enough resources to spend
	for _, spender := range spenders {
		if spender.Value > calculateCurrentResource(pool[spender.ResourceId]) {
			return ErrNotEnoughResources
		}
	}

	// spend the resource
	for _, spender := range spenders {
		addToResource(pool[spender.ResourceId], -spender.Value)
	}

	return nil
}

// addResources adds resources to the given pool, returning an updated pool of resources.
// If the resource does not exist but the adder has it, the resource will be registered
// with 0 RPM and current timestamp.
func addResources(pool map[string]*v1.ResourceState, adders []*v1.Resource) map[string]*v1.ResourceState {
	for _, adder := range adders {
		// find the resource and add resources
		_, ok := pool[adder.ResourceId]
		if !ok {
			pool[adder.ResourceId] = &v1.ResourceState{
				Resource: &v1.Resource{
					ResourceId: adder.ResourceId,
				},
				Timestamp: timestamppb.Now(),
			}
		}
		addToResource(pool[adder.ResourceId], adder.Value)
	}

	return pool
}

// calculateCurrentResource returns a value of a resource in time, adding together the current
// value with the value calculated from the last change (based on the RPM)
func calculateCurrentResource(state *v1.ResourceState) int64 {
	// this is to avoid crashing in case we're given a nil resource (e.g. during validation)
	if state == nil {
		return 0
	}

	// we'll calculate the diff for RPS (resources per second) and then divide by 60 to make
	// an RPM. This makes the calculation not loose precision
	resourceDiff := time.Now().Sub(state.Timestamp.AsTime()).Seconds() * float64(state.Rpm) / 60

	return state.Resource.Value + int64(math.Floor(resourceDiff))
}

// addToResource add a certain amount of the resource. Call calculateCurrentResource
// to make sure the resource is not depleted. This function will otherwise put the resource
// into a dept.
// Returns the same mutated object
func addToResource(state *v1.ResourceState, value int64, tsource ...TimeSource) *v1.ResourceState {
	reconcileResource(state, tsource...)
	state.Resource.Value += value

	return state
}

// updateResourceRPM sets a new RPM for the resource, while also recalculating its current state
func updateResourceRPM(state *v1.ResourceState, rpm int64, tsource ...TimeSource) *v1.ResourceState {
	reconcileResource(state, tsource...)
	state.Rpm = rpm

	return state
}

// reconcileResource updates the resource value and timestamp to the current time
func reconcileResource(state *v1.ResourceState, tsource ...TimeSource) *v1.ResourceState {
	current := calculateCurrentResource(state)

	state.Resource.Value = current
	state.Timestamp = timestamppb.New(TimeNow(tsource...))

	return state
}

// getResourceID returns a string ID of the given category resource
func getResourceID(category v1.ResourceCategory) string {
	return fmt.Sprintf("%d", category)
}
