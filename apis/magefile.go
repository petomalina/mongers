package apis

import (
	"fmt"
	"github.com/magefile/mage/sh"
	"os"
	"path/filepath"
	"strings"
)

var (
	DefinitionDir = "apis"
	Targets       []string
	Plugins       []ProtocPlugin
)

type ProtocPlugin interface {
	MakeArgs(target string) []string
	OutDir(target string) string
}

// getAllServices returns the list of all available services
func getAllServices() string {
	return strings.Join(Targets, ",")
}

func Build() {
	svcs := os.Getenv("SVCS")
	if svcs == "" {
		svcs = getAllServices()
	}

	for _, target := range strings.Split(svcs, ",") {
		// includes all in the current folder
		args := []string{"-I."}

		for _, plug := range Plugins {
			_ = os.MkdirAll(plug.OutDir(target), os.ModePerm)

			args = append(args, plug.MakeArgs(target)...)
		}

		// append the target file as the last argument
		args = append(args, filepath.Join(DefinitionDir, target))

		fmt.Println(args)

		sh.RunV("protoc", args...)
	}
}

func Lint() {
	svcs := os.Getenv("SVCS")
	if svcs == "" {
		svcs = getAllServices()
	}
}
