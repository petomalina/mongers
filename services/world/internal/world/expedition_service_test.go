package world

import (
	v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"
	"github.com/stretchr/testify/suite"
	"testing"
)

type ExpeditionServiceSuite struct {
	suite.Suite
}

type TestRemoveExpeditionCandidate struct {
	expeditions []*v1.ExpeditionState
	rm          *v1.ExpeditionState
	length      int
	err         error
}

func (s *ExpeditionServiceSuite) TestRemoveExpedition() {
	candidates := []TestRemoveExpeditionCandidate{
		{
			expeditions: []*v1.ExpeditionState{
				{
					Expedition: &v1.Expedition{
						ExpeditionId: "1",
					},
				},
				{
					Expedition: &v1.Expedition{
						ExpeditionId: "2",
					},
				},
				{
					Expedition: &v1.Expedition{
						ExpeditionId: "3",
					},
				},
			},
			rm: &v1.ExpeditionState{
				Expedition: &v1.Expedition{
					ExpeditionId: "1",
				},
			},
			length: 2,
			err:    nil,
		},
		{
			expeditions: []*v1.ExpeditionState{
				{
					Expedition: &v1.Expedition{
						ExpeditionId: "1",
					},
				},
				{
					Expedition: &v1.Expedition{
						ExpeditionId: "2",
					},
				},
				{
					Expedition: &v1.Expedition{
						ExpeditionId: "3",
					},
				},
			},
			rm: &v1.ExpeditionState{
				Expedition: &v1.Expedition{
					ExpeditionId: "2",
				},
			},
			length: 2,
			err:    nil,
		},
		{
			expeditions: []*v1.ExpeditionState{
				{
					Expedition: &v1.Expedition{
						ExpeditionId: "1",
					},
				},
				{
					Expedition: &v1.Expedition{
						ExpeditionId: "2",
					},
				},
				{
					Expedition: &v1.Expedition{
						ExpeditionId: "3",
					},
				},
			},
			rm: &v1.ExpeditionState{
				Expedition: &v1.Expedition{
					ExpeditionId: "3",
				},
			},
			length: 2,
			err:    nil,
		},
		{
			expeditions: []*v1.ExpeditionState{
				{
					Expedition: &v1.Expedition{
						ExpeditionId: "1",
					},
				},
				{
					Expedition: &v1.Expedition{
						ExpeditionId: "2",
					},
				},
				{
					Expedition: &v1.Expedition{
						ExpeditionId: "3",
					},
				},
			},
			rm: &v1.ExpeditionState{
				Expedition: &v1.Expedition{
					ExpeditionId: "4",
				},
			},
			length: 3,
			err:    ErrExpeditionNotFound,
		},
	}

	for _, c := range candidates {
		s.Run(
			"", func() {
				res, err := removeExpedition(c.expeditions, c.rm)
				s.Equal(c.err, err)
				s.Equal(c.length, len(res))
			},
		)
	}
}

func TestExpeditionServiceSuite(t *testing.T) {
	suite.Run(t, &ExpeditionServiceSuite{})
}
