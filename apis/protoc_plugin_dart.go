package apis

type ProtocPluginDart struct {
	Out  string
	Opts string
}

func (p ProtocPluginDart) MakeArgs(target string) []string {
	args := []string{"--dart_out=" + p.Opts + ":" + p.OutDir(target)}

	return args
}

func (p ProtocPluginDart) OutDir(target string) string {
	return p.Out
}
