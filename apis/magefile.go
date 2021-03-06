package apis

import (
	"github.com/magefile/mage/sh"
	"os"
	"path/filepath"
	"strings"
)

var (
	DefinitionDir = "apis"
	OutputDir     = "genapis"
	Targets       []string
)

// getAllServices returns the list of all available services
func getAllServices() string {
	return strings.Join(Targets, ",")
}

func Build() {
	svcs := os.Getenv("SVCS")
	if svcs == "" {
		svcs = getAllServices()
	}

	for _, svc := range strings.Split(svcs, ",") {
		// includes all in the current folder
		args := []string{"-I."}

		flags := map[string]string{
			"--go_out":      "",
			"--go-grpc_out": "",
		}

		for flag, arg := range flags {
			outDir := filepath.Join(OutputDir, filepath.Dir(svc))
			os.MkdirAll(outDir, os.ModePerm)

			// add the relative path to the argument for protoc. The output path
			// for protoc is generated after the `:` character
			args = append(args, flag+"="+arg+":"+outDir)
		}

		// append the target file as the last argument
		args = append(args, filepath.Join(DefinitionDir, svc))

		sh.RunV("protoc", args...)
	}
}

func Lint() {
	svcs := os.Getenv("SVCS")
	if svcs == "" {
		svcs = getAllServices()
	}
}
