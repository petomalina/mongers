// +build mage

package main

import (
	// mage:import apis
	apis "github.com/petomalina/mongers/apis"
)

func init() {
	apis.Targets = []string{
		"world/v1/world_service.proto",
	}
	apis.Plugins = []apis.ProtocPlugin{
		apis.ProtocPluginGo{
			Out: "mongersapis/pkg",
		},
		apis.ProtocPluginGoGRPC{
			Out: "mongersapis/pkg",
		},
		apis.ProtocPluginDart{
			Out:  "app/lib",
			Opts: "grpc",
		},
	}
}
