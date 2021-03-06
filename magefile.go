// +build mage

package main

import (
	// mage:import apis
	apis "github.com/petomalina/mongers/apis"
)

func init() {
	apis.OutputDir = "mongersapis/pkg"
	apis.Targets = []string{
		"world/v1/world_service.proto",
	}
}
