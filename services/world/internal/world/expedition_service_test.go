package world

import (
	"github.com/stretchr/testify/suite"
	"testing"
)

type ExpeditionServiceSuite struct {
	suite.Suite
}

func TestExpeditionServiceSuite(t *testing.T) {
	suite.Run(t, &ExpeditionServiceSuite{})
}
