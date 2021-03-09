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
			StripPath: "apis",
		},
		apis.ProtocPluginGoGRPC{
			Out: "mongersapis/pkg",
			Targets: []string{
				"apis/world/v1/world_service.proto",
			},
			StripPath: "apis",
		},
		apis.ProtocPluginDart{
			Out:  "app/lib",
			Opts: "grpc",
			Targets: []string{
				"apis/world/v1/world_service.proto",
				"google/protobuf/empty.proto",
				"google/protobuf/duration.proto",
				"google/protobuf/timestamp.proto",
			},
		},
	}
}
