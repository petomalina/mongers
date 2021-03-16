package world

import (
	"fmt"
	v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"
	"github.com/stretchr/testify/suite"
	"google.golang.org/protobuf/types/known/timestamppb"
	"testing"
	"time"
)

type ResourceServiceSuite struct {
	suite.Suite
}

func (s *ResourceServiceSuite) TestCalculateCurrentResource() {
	candidates := map[*v1.ResourceState]int64{
		{
			Resource:  &v1.Resource{},
			Timestamp: timestamppb.Now(),
			Rpm:       0,
		}: 0,
		{
			Resource: &v1.Resource{
				Value: 1000,
			},
			Timestamp: timestamppb.Now(),
			Rpm:       0,
		}: 1000,
		{
			Resource: &v1.Resource{
				Value: 0,
			},
			Timestamp: timestamppb.New(time.Now().Add(-time.Minute * 20)),
			Rpm:       1,
		}: 20,
		{
			Resource: &v1.Resource{
				Value: 0,
			},
			Timestamp: timestamppb.New(time.Now().Add(-time.Hour * 2)),
			Rpm:       1300,
		}: 1300 * 120,
	}

	for candidate, result := range candidates {
		s.Run("", func() {
			s.Equal(result, calculateCurrentResource(candidate))
		})
	}
}

type TestAddResourceCandidate struct {
	state *v1.ResourceState
	value int64
}

func (s *ResourceServiceSuite) TestAddResource() {
	testTime := StaticTimeSource{
		T: time.Now(),
	}

	candidates := map[TestAddResourceCandidate]*v1.ResourceState{
		TestAddResourceCandidate{
			state: &v1.ResourceState{
				Resource: &v1.Resource{
					Value: 0,
				},
				Timestamp: timestamppb.New(testTime.Now()),
				Rpm:       0,
			},
			value: 0,
		}: {
			Resource: &v1.Resource{
				Value: 0,
			},
			Timestamp: timestamppb.New(testTime.Now()),
			Rpm:       0,
		},
		TestAddResourceCandidate{
			state: &v1.ResourceState{
				Resource: &v1.Resource{
					Value: 20000,
				},
				Timestamp: timestamppb.New(testTime.Now()),
				Rpm:       0,
			},
			value: 20000,
		}: {
			Resource: &v1.Resource{
				Value: 40000,
			},
			Timestamp: timestamppb.New(testTime.Now()),
			Rpm:       0,
		},
		TestAddResourceCandidate{
			state: &v1.ResourceState{
				Resource: &v1.Resource{
					Value: 20000,
				},
				Timestamp: timestamppb.New(testTime.Now().Add(-time.Minute * 30)),
				Rpm:       1000,
			},
			value: 20000,
		}: {
			Resource: &v1.Resource{
				Value: 40000 + 30*1000,
			},
			Timestamp: timestamppb.New(testTime.Now()),
			Rpm:       1000,
		},
		TestAddResourceCandidate{
			state: &v1.ResourceState{
				Resource: &v1.Resource{
					Value: 20000,
				},
				Timestamp: timestamppb.New(testTime.Now().Add(-time.Second * 30)),
				Rpm:       1000,
			},
			value: -20000,
		}: {
			Resource: &v1.Resource{
				Value: 500,
			},
			Timestamp: timestamppb.New(testTime.Now()),
			Rpm:       1000,
		},
	}

	for candidate, result := range candidates {
		s.Run(fmt.Sprintf(""), func() {
			addToResource(candidate.state, candidate.value, testTime)

			s.Equal(result.Rpm, candidate.state.Rpm)
			s.Equal(result.Timestamp.AsTime().Unix(), candidate.state.Timestamp.AsTime().Unix())
			s.Equal(result.Resource.Value, candidate.state.Resource.Value)
		})
	}
}

type TestUpdateResourceRPMCandidate struct {
	state *v1.ResourceState
	rpm   int64

	expectedState *v1.ResourceState
}

func (s *ResourceServiceSuite) TestUpdateResourceRPM() {
	testTime := StaticTimeSource{
		T: time.Now(),
	}

	candidates := []*TestUpdateResourceRPMCandidate{
		{
			state: &v1.ResourceState{
				Resource:  &v1.Resource{},
				Timestamp: timestamppb.New(testTime.Now()),
				Rpm:       0,
			},
			rpm: 10,
			expectedState: &v1.ResourceState{
				Resource:  &v1.Resource{},
				Timestamp: timestamppb.New(testTime.Now()),
				Rpm:       10,
			},
		},
		{
			state: &v1.ResourceState{
				Resource: &v1.Resource{
					Value: 1000,
				},
				Timestamp: timestamppb.New(testTime.Now().Add(-time.Second * 40)),
				Rpm:       60,
			},
			rpm: 100,
			expectedState: &v1.ResourceState{
				Resource: &v1.Resource{
					Value: 1040,
				},
				Timestamp: timestamppb.New(testTime.Now()),
				Rpm:       100,
			},
		},
		{
			state: &v1.ResourceState{
				Resource: &v1.Resource{
					Value: 1000,
				},
				Timestamp: timestamppb.New(testTime.Now().Add(-time.Minute)),
				Rpm:       120,
			},
			rpm: 10,
			expectedState: &v1.ResourceState{
				Resource: &v1.Resource{
					Value: 1120,
				},
				Timestamp: timestamppb.New(testTime.Now()),
				Rpm:       10,
			},
		},
	}

	for _, c := range candidates {
		s.Run(fmt.Sprintf(""), func() {
			updateResourceRPM(c.state, c.rpm, testTime)

			s.Equal(c.expectedState.Rpm, c.state.Rpm)
			s.Equal(c.expectedState.Timestamp.AsTime().Unix(), c.state.Timestamp.AsTime().Unix())
			s.Equal(c.expectedState.Resource.Value, c.state.Resource.Value)
		})
	}
}

type TestSpendResourcesCandidate struct {
	pool     map[string]*v1.ResourceState
	spenders []*v1.Resource

	resultPool map[string]*v1.ResourceState
	exectedErr error
}

func (s *ResourceServiceSuite) TestSpendResources() {
	candidates := []TestSpendResourcesCandidate{
		// #00 basic spend use-case
		{
			pool: map[string]*v1.ResourceState{
				getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL): {
					Resource: &v1.Resource{
						ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL),
						Value:      1000,
					},
					Timestamp: timestamppb.Now(),
					Rpm:       0,
				},
			},
			spenders: []*v1.Resource{
				{
					ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL),
					Value:      500,
				},
			},
			resultPool: map[string]*v1.ResourceState{
				getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL): {
					Resource: &v1.Resource{
						ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL),
						Value:      500,
					},
					Timestamp: timestamppb.Now(),
					Rpm:       0,
				},
			},
			exectedErr: nil,
		},
		// #01 returning an error when there are not enough resources
		{
			pool: map[string]*v1.ResourceState{
				getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL): {
					Resource: &v1.Resource{
						ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL),
						Value:      1000,
					},
					Timestamp: timestamppb.Now(),
					Rpm:       0,
				},
			},
			spenders: []*v1.Resource{
				{
					ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL),
					Value:      1500,
				},
			},
			resultPool: map[string]*v1.ResourceState{
				getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL): {
					Resource: &v1.Resource{
						ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL),
						Value:      1000,
					},
					Timestamp: timestamppb.Now(),
					Rpm:       0,
				},
			},
			exectedErr: ErrNotEnoughResources,
		},
		// #02 spending only one of multiple available resources should not affect other resources
		{
			pool: map[string]*v1.ResourceState{
				getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL): {
					Resource: &v1.Resource{
						ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL),
						Value:      1000,
					},
					Timestamp: timestamppb.Now(),
					Rpm:       0,
				},
				getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_MONEY): {
					Resource: &v1.Resource{
						ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_MONEY),
						Value:      10000,
					},
					Timestamp: timestamppb.Now(),
					Rpm:       0,
				},
			},
			spenders: []*v1.Resource{
				{
					ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL),
					Value:      500,
				},
			},
			resultPool: map[string]*v1.ResourceState{
				getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL): {
					Resource: &v1.Resource{
						ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL),
						Value:      500,
					},
					Timestamp: timestamppb.Now(),
					Rpm:       0,
				},
				getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_MONEY): {
					Resource: &v1.Resource{
						ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_MONEY),
						Value:      10000,
					},
					Timestamp: timestamppb.Now(),
					Rpm:       0,
				},
			},
			exectedErr: nil,
		},
		// #03 spending should calculate with the current resource value even if updated in the past
		{
			pool: map[string]*v1.ResourceState{
				getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL): {
					Resource: &v1.Resource{
						ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL),
						Value:      1000,
					},
					Timestamp: timestamppb.New(time.Now().Add(-time.Minute * 30)),
					Rpm:       1000,
				},
			},
			spenders: []*v1.Resource{
				{
					ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL),
					Value:      31000,
				},
			},
			resultPool: map[string]*v1.ResourceState{
				getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL): {
					Resource: &v1.Resource{
						ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL),
						Value:      0,
					},
					Timestamp: timestamppb.Now(),
					Rpm:       1000,
				},
			},
			exectedErr: nil,
		},
		// #04 one more resource is needed, so the pool and timestamps should not be updated
		{
			pool: map[string]*v1.ResourceState{
				getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL): {
					Resource: &v1.Resource{
						ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL),
						Value:      1000,
					},
					Timestamp: timestamppb.New(time.Now().Add(-time.Minute * 30)),
					Rpm:       1000,
				},
			},
			spenders: []*v1.Resource{
				{
					ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL),
					Value:      31001,
				},
			},
			resultPool: map[string]*v1.ResourceState{
				getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL): {
					Resource: &v1.Resource{
						ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL),
						Value:      1000,
					},
					Timestamp: timestamppb.New(time.Now().Add(-time.Minute * 30)),
					Rpm:       1000,
				},
			},
			exectedErr: ErrNotEnoughResources,
		},
		// #05 edge case of rounding, where player is missing one resource but also missing one second
		// to get that resource
		{
			pool: map[string]*v1.ResourceState{
				getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL): {
					Resource: &v1.Resource{
						ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL),
						Value:      1000,
					},
					Timestamp: timestamppb.New(time.Now().Add(-time.Second * 59)),
					Rpm:       1,
				},
			},
			spenders: []*v1.Resource{
				{
					ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL),
					Value:      1001,
				},
			},
			resultPool: map[string]*v1.ResourceState{
				getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL): {
					Resource: &v1.Resource{
						ResourceId: getResourceID(v1.ResourceCategory_RESOURCE_CATEGORY_OIL),
						Value:      1000,
					},
					Timestamp: timestamppb.New(time.Now().Add(-time.Second * 59)),
					Rpm:       1,
				},
			},
			exectedErr: ErrNotEnoughResources,
		},
	}

	for _, candidate := range candidates {
		s.Run("", func() {
			err := spendResources(candidate.pool, candidate.spenders)
			s.Equal(candidate.exectedErr, err)

			for _, expectedState := range candidate.resultPool {
				found := false

				for _, resultState := range candidate.pool {
					if expectedState.Resource.ResourceId == resultState.Resource.ResourceId {
						found = true

						s.Equal(expectedState.Resource.Value, resultState.Resource.Value)
						s.Equal(expectedState.Rpm, resultState.Rpm)
						s.Equal(expectedState.Timestamp.AsTime().Unix(), resultState.Timestamp.AsTime().Unix())

						break
					}
				}

				if !found {
					s.Fail(fmt.Sprintf("State for [%s] could not be found in the result pool", expectedState.Resource.ResourceId))
				}
			}
		})
	}
}

func TestResourceServiceSuite(t *testing.T) {
	suite.Run(t, &ResourceServiceSuite{})
}
