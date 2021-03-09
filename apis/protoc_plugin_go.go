package apis

import "path/filepath"

type ProtocPluginGo struct {
	Out     string
	Opts    string
	Targets []string
}

func (p ProtocPluginGo) MakeArgs() []string {
	args := []string{"--go_out=" + filepath.Join(p.Out, filepath.Dir(p.Targets[0]))}

	if p.Opts != "" {
		args = append(args, "--go_opt="+p.Opts)
	}

	return append(args, p.Targets...)
}

func (p ProtocPluginGo) OutDir() string {
	return filepath.Join(p.Out, p.Targets[0])
}

type ProtocPluginGoGRPC struct {
	Out     string
	Opts    string
	Targets []string
}

func (p ProtocPluginGoGRPC) MakeArgs() []string {
	args := []string{"--go-grpc_out=" + p.OutDir()}

	if p.Opts != "" {
		args = append(args, "--go-grpc_opt="+p.Opts)
	}

	return append(args, p.Targets...)
}

func (p ProtocPluginGoGRPC) OutDir() string {
	return filepath.Join(p.Out, p.Targets[0])
}
