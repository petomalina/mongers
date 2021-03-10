package world

import (
	"errors"
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
	ResourceMagnifier float64 = 1000
)

type ResourceService struct {
	// data is a map of [player_id][]Resource
	data map[string][]*v1.ResourceState

	dataMutex sync.RWMutex
}

func NewResourceService() *ResourceService {
	return &ResourceService{
		data: map[string][]*v1.ResourceState{},
	}
}

func (rs *ResourceService) RegisterPlayer(playerID string) error {
	rs.dataMutex.Lock()

	// create the basic resources for the playerID, so the expeditions
	// can work with them
	rs.data[playerID] = []*v1.ResourceState{
		{
			Resource: &v1.Resource{
				Category: v1.ResourceCategory_RESOURCE_CATEGORY_POWER,
				Value:    75,
			},
			Timestamp: timestamppb.Now(),
			Rpm:       int64(0.142 * ResourceMagnifier),
		},
		{
			Resource: &v1.Resource{
				Category: v1.ResourceCategory_RESOURCE_CATEGORY_MONEY,
				Value:    0,
			},
			Timestamp: timestamppb.Now(),
			Rpm:       0,
		},
		{
			Resource: &v1.Resource{
				Category: v1.ResourceCategory_RESOURCE_CATEGORY_IRON,
				Value:    0,
			},
			Timestamp: timestamppb.Now(),
			Rpm:       0,
		},
		{
			Resource: &v1.Resource{
				Category: v1.ResourceCategory_RESOURCE_CATEGORY_CLAY,
				Value:    0,
			},
			Timestamp: timestamppb.Now(),
			Rpm:       0,
		},
		{
			Resource: &v1.Resource{
				Category: v1.ResourceCategory_RESOURCE_CATEGORY_OIL,
				Value:    0,
			},
			Timestamp: timestamppb.Now(),
			Rpm:       0,
		},
	}

	rs.dataMutex.Unlock()
	return nil
}

func (rs *ResourceService) DisposePlayer(player string) error {
	return nil
}

func (rs *ResourceService) ListResources(playerID string) []*v1.ResourceState {
	rs.dataMutex.RLock()
	defer func() {
		rs.dataMutex.RUnlock()
	}()

	return rs.data[playerID]
}

func (rs *ResourceService) SpendResources(playerID string, spenders []*v1.Resource) error {
	rs.dataMutex.Lock()
	defer func() {
		rs.dataMutex.Unlock()
	}()

	playerResources := rs.data[playerID]

	return spendResources(playerResources, spenders)
}

// SpendResources tries to spend resources from a given resource pool. It can result in the following errors:
// - ErrNotEnoughResources - given resource pool does not have enough resources in it
func spendResources(pool []*v1.ResourceState, spenders []*v1.Resource) error {
	var cats []v1.ResourceCategory
	for _, spender := range spenders {
		cats = append(cats, spender.Category)
	}

	actualResources := selectResources(pool, cats)
	// remap resources into a map so we can lookup resources without double-looping
	resourcesMap := map[v1.ResourceCategory]*v1.ResourceState{}
	for _, r := range actualResources {
		resourcesMap[r.Resource.Category] = r
	}

	// validate that the player has enough resources to spend
	for _, spender := range spenders {
		if spender.Value > calculateCurrentResource(resourcesMap[spender.Category]) {
			return ErrNotEnoughResources
		}
	}

	// spend the resource
	for _, spender := range spenders {
		addResource(resourcesMap[spender.Category], -spender.Value)
	}

	return nil
}

// selectResources returns only selection of resources from all resources that the player has
func selectResources(rr []*v1.ResourceState, cats []v1.ResourceCategory) []*v1.ResourceState {
	var resources []*v1.ResourceState

	for _, cat := range cats {
		found := false

		for _, r := range rr {
			if r.Resource.Category == cat {
				found = true
				resources = append(resources, r)
			}
		}

		// skip adding the default value if we've found the state
		if found {
			break
		}

		resources = append(resources, &v1.ResourceState{
			Resource: &v1.Resource{
				Category: cat,
				Value:    0,
			},
			Timestamp: timestamppb.Now(),
			Rpm:       0,
		})
	}

	return resources
}

// selectResource expects that selectResources always returns the element, even if not registered.
// The selectResources function fills the unregistered resource with a zero-value resource
func selectResource(rr []*v1.ResourceState, cat v1.ResourceCategory) *v1.ResourceState {
	return selectResources(rr, []v1.ResourceCategory{cat})[0]
}

func calculateCurrentResource(state *v1.ResourceState) int64 {
	// we'll calculate the diff for RPS (resources per second) and then divide by 60 to make
	// an RPM. This makes the calculation not loose precision
	resourceDiff := time.Now().Sub(state.Timestamp.AsTime()).Seconds() * float64(state.Rpm) / 60

	return state.Resource.Value + int64(math.Floor(resourceDiff))
}

// addResource add a certain amount of the resource. Call calculateCurrentResource
// to make sure the resource is not depleted. This function will otherwise put the resource
// into a dept.
// Returns the same mutated object
func addResource(state *v1.ResourceState, value int64) *v1.ResourceState {
	current := calculateCurrentResource(state)

	state.Resource.Value = current + value
	state.Timestamp = timestamppb.Now()

	return state
}
