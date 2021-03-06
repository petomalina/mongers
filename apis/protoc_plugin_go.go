package apis

import "path/filepath"

type ProtocPluginGo struct {
	Out  string
	Opts string
}

func (p ProtocPluginGo) MakeArgs(target string) []string {
	args := []string{"--go_out=" + filepath.Join(p.Out, filepath.Dir(target))}

	if p.Opts != "" {
		args = append(args, "--go_opt="+p.Opts)
	}

	return args
}

func (p ProtocPluginGo) OutDir(target string) string {
	return filepath.Join(p.Out, filepath.Dir(target))
}

type ProtocPluginGoGRPC struct {
	Out  string
	Opts string
}

func (p ProtocPluginGoGRPC) MakeArgs(target string) []string {
	args := []string{"--go-grpc_out=" + p.OutDir(target)}

	if p.Opts != "" {
		args = append(args, "--go-grpc_opt="+p.Opts)
	}

	return args
}

func (p ProtocPluginGoGRPC) OutDir(target string) string {
	return filepath.Join(p.Out, filepath.Dir(target))
}
