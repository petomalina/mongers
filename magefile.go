// +build mage

package main

import (
	// mage:import apis
	apis "github.com/petomalina/mongers/apis"
)

func init() {
	apis.Includes = []string{
		"-I./apis/3rdparty/api-common-protos",
		"-I./apis/3rdparty/protobuf/src",
	}
	apis.Plugins = []apis.ProtocPlugin{
		apis.ProtocPluginGo{
			Out: "mongersapis/pkg",
			Targets: []string{
				"apis/world/v1/world_service.proto",
			},
		},
		apis.ProtocPluginGoGRPC{
			Out: "mongersapis/pkg",
			Targets: []string{
				"apis/world/v1/world_service.proto",
			},
		},
		apis.ProtocPluginDart{
			Out:  "app/lib",
			Opts: "grpc",
			Targets: []string{
				"apis/world/v1/world_service.proto",
				"apis/3rdparty/protobuf/src/google/protobuf/empty.proto",
			},
		},
	}
}
