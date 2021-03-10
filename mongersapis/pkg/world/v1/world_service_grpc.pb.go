// Code generated by protoc-gen-go-grpc. DO NOT EDIT.

package v1

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
	emptypb "google.golang.org/protobuf/types/known/emptypb"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion7

// WorldServiceClient is the client API for WorldService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type WorldServiceClient interface {
	WorldInfo(ctx context.Context, in *emptypb.Empty, opts ...grpc.CallOption) (*World, error)
	// Connect validates the connecting player and registers their UUID internally
	// if the server has enough capacity. Players will otherwise be disconnected via
	// errors to other RPC calls.
	Connect(ctx context.Context, in *ConnectRequest, opts ...grpc.CallOption) (*ConnectResponse, error)
	ListResourcesState(ctx context.Context, in *ListResourcesStateRequest, opts ...grpc.CallOption) (*ListResourcesStateResponse, error)
	StartExpedition(ctx context.Context, in *StartExpeditionRequest, opts ...grpc.CallOption) (*StartExpeditionResponse, error)
	CollectExpedition(ctx context.Context, in *CollectExpeditionRequest, opts ...grpc.CallOption) (*CollectExpeditionResponse, error)
	// ListExpeditions returns all expeditions based on the filter: all, player_owned, available
	// where:
	// - all are player_owned and available (default option when not set)
	// - player_owned are only expeditions that the player is currently on
	// - available are only expeditions currently available
	ListExpeditions(ctx context.Context, in *ListExpeditionsRequest, opts ...grpc.CallOption) (*ListExpeditionsResponse, error)
	// Play encapsulates streaming messages for all actions that would otherwise
	// be unary, as well as provides ad-hoc messages of in-game updates
	Play(ctx context.Context, opts ...grpc.CallOption) (WorldService_PlayClient, error)
	// Watch only streams gameplay broadcasts and is suitable for observing clients.
	// This method makes best effort to catch up connecting clients with the game objects,
	// however, clients are responsible for syncing objects via unary RPC in case of secondary
	// world objects such as leaderboard
	Watch(ctx context.Context, in *emptypb.Empty, opts ...grpc.CallOption) (WorldService_WatchClient, error)
}

type worldServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewWorldServiceClient(cc grpc.ClientConnInterface) WorldServiceClient {
	return &worldServiceClient{cc}
}

func (c *worldServiceClient) WorldInfo(ctx context.Context, in *emptypb.Empty, opts ...grpc.CallOption) (*World, error) {
	out := new(World)
	err := c.cc.Invoke(ctx, "/v1.WorldService/WorldInfo", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *worldServiceClient) Connect(ctx context.Context, in *ConnectRequest, opts ...grpc.CallOption) (*ConnectResponse, error) {
	out := new(ConnectResponse)
	err := c.cc.Invoke(ctx, "/v1.WorldService/Connect", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *worldServiceClient) ListResourcesState(ctx context.Context, in *ListResourcesStateRequest, opts ...grpc.CallOption) (*ListResourcesStateResponse, error) {
	out := new(ListResourcesStateResponse)
	err := c.cc.Invoke(ctx, "/v1.WorldService/ListResourcesState", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *worldServiceClient) StartExpedition(ctx context.Context, in *StartExpeditionRequest, opts ...grpc.CallOption) (*StartExpeditionResponse, error) {
	out := new(StartExpeditionResponse)
	err := c.cc.Invoke(ctx, "/v1.WorldService/StartExpedition", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *worldServiceClient) CollectExpedition(ctx context.Context, in *CollectExpeditionRequest, opts ...grpc.CallOption) (*CollectExpeditionResponse, error) {
	out := new(CollectExpeditionResponse)
	err := c.cc.Invoke(ctx, "/v1.WorldService/CollectExpedition", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *worldServiceClient) ListExpeditions(ctx context.Context, in *ListExpeditionsRequest, opts ...grpc.CallOption) (*ListExpeditionsResponse, error) {
	out := new(ListExpeditionsResponse)
	err := c.cc.Invoke(ctx, "/v1.WorldService/ListExpeditions", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *worldServiceClient) Play(ctx context.Context, opts ...grpc.CallOption) (WorldService_PlayClient, error) {
	stream, err := c.cc.NewStream(ctx, &_WorldService_serviceDesc.Streams[0], "/v1.WorldService/Play", opts...)
	if err != nil {
		return nil, err
	}
	x := &worldServicePlayClient{stream}
	return x, nil
}

type WorldService_PlayClient interface {
	Send(*ClientPlayMessage) error
	Recv() (*ServerPlayMessage, error)
	grpc.ClientStream
}

type worldServicePlayClient struct {
	grpc.ClientStream
}

func (x *worldServicePlayClient) Send(m *ClientPlayMessage) error {
	return x.ClientStream.SendMsg(m)
}

func (x *worldServicePlayClient) Recv() (*ServerPlayMessage, error) {
	m := new(ServerPlayMessage)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *worldServiceClient) Watch(ctx context.Context, in *emptypb.Empty, opts ...grpc.CallOption) (WorldService_WatchClient, error) {
	stream, err := c.cc.NewStream(ctx, &_WorldService_serviceDesc.Streams[1], "/v1.WorldService/Watch", opts...)
	if err != nil {
		return nil, err
	}
	x := &worldServiceWatchClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type WorldService_WatchClient interface {
	Recv() (*ServerPlayMessage, error)
	grpc.ClientStream
}

type worldServiceWatchClient struct {
	grpc.ClientStream
}

func (x *worldServiceWatchClient) Recv() (*ServerPlayMessage, error) {
	m := new(ServerPlayMessage)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

// WorldServiceServer is the server API for WorldService service.
// All implementations must embed UnimplementedWorldServiceServer
// for forward compatibility
type WorldServiceServer interface {
	WorldInfo(context.Context, *emptypb.Empty) (*World, error)
	// Connect validates the connecting player and registers their UUID internally
	// if the server has enough capacity. Players will otherwise be disconnected via
	// errors to other RPC calls.
	Connect(context.Context, *ConnectRequest) (*ConnectResponse, error)
	ListResourcesState(context.Context, *ListResourcesStateRequest) (*ListResourcesStateResponse, error)
	StartExpedition(context.Context, *StartExpeditionRequest) (*StartExpeditionResponse, error)
	CollectExpedition(context.Context, *CollectExpeditionRequest) (*CollectExpeditionResponse, error)
	// ListExpeditions returns all expeditions based on the filter: all, player_owned, available
	// where:
	// - all are player_owned and available (default option when not set)
	// - player_owned are only expeditions that the player is currently on
	// - available are only expeditions currently available
	ListExpeditions(context.Context, *ListExpeditionsRequest) (*ListExpeditionsResponse, error)
	// Play encapsulates streaming messages for all actions that would otherwise
	// be unary, as well as provides ad-hoc messages of in-game updates
	Play(WorldService_PlayServer) error
	// Watch only streams gameplay broadcasts and is suitable for observing clients.
	// This method makes best effort to catch up connecting clients with the game objects,
	// however, clients are responsible for syncing objects via unary RPC in case of secondary
	// world objects such as leaderboard
	Watch(*emptypb.Empty, WorldService_WatchServer) error
	mustEmbedUnimplementedWorldServiceServer()
}

// UnimplementedWorldServiceServer must be embedded to have forward compatible implementations.
type UnimplementedWorldServiceServer struct {
}

func (UnimplementedWorldServiceServer) WorldInfo(context.Context, *emptypb.Empty) (*World, error) {
	return nil, status.Errorf(codes.Unimplemented, "method WorldInfo not implemented")
}
func (UnimplementedWorldServiceServer) Connect(context.Context, *ConnectRequest) (*ConnectResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Connect not implemented")
}
func (UnimplementedWorldServiceServer) ListResourcesState(context.Context, *ListResourcesStateRequest) (*ListResourcesStateResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method ListResourcesState not implemented")
}
func (UnimplementedWorldServiceServer) StartExpedition(context.Context, *StartExpeditionRequest) (*StartExpeditionResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method StartExpedition not implemented")
}
func (UnimplementedWorldServiceServer) CollectExpedition(context.Context, *CollectExpeditionRequest) (*CollectExpeditionResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CollectExpedition not implemented")
}
func (UnimplementedWorldServiceServer) ListExpeditions(context.Context, *ListExpeditionsRequest) (*ListExpeditionsResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method ListExpeditions not implemented")
}
func (UnimplementedWorldServiceServer) Play(WorldService_PlayServer) error {
	return status.Errorf(codes.Unimplemented, "method Play not implemented")
}
func (UnimplementedWorldServiceServer) Watch(*emptypb.Empty, WorldService_WatchServer) error {
	return status.Errorf(codes.Unimplemented, "method Watch not implemented")
}
func (UnimplementedWorldServiceServer) mustEmbedUnimplementedWorldServiceServer() {}

// UnsafeWorldServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to WorldServiceServer will
// result in compilation errors.
type UnsafeWorldServiceServer interface {
	mustEmbedUnimplementedWorldServiceServer()
}

func RegisterWorldServiceServer(s *grpc.Server, srv WorldServiceServer) {
	s.RegisterService(&_WorldService_serviceDesc, srv)
}

func _WorldService_WorldInfo_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(emptypb.Empty)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(WorldServiceServer).WorldInfo(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/v1.WorldService/WorldInfo",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(WorldServiceServer).WorldInfo(ctx, req.(*emptypb.Empty))
	}
	return interceptor(ctx, in, info, handler)
}

func _WorldService_Connect_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(ConnectRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(WorldServiceServer).Connect(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/v1.WorldService/Connect",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(WorldServiceServer).Connect(ctx, req.(*ConnectRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _WorldService_ListResourcesState_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(ListResourcesStateRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(WorldServiceServer).ListResourcesState(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/v1.WorldService/ListResourcesState",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(WorldServiceServer).ListResourcesState(ctx, req.(*ListResourcesStateRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _WorldService_StartExpedition_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(StartExpeditionRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(WorldServiceServer).StartExpedition(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/v1.WorldService/StartExpedition",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(WorldServiceServer).StartExpedition(ctx, req.(*StartExpeditionRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _WorldService_CollectExpedition_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CollectExpeditionRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(WorldServiceServer).CollectExpedition(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/v1.WorldService/CollectExpedition",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(WorldServiceServer).CollectExpedition(ctx, req.(*CollectExpeditionRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _WorldService_ListExpeditions_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(ListExpeditionsRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(WorldServiceServer).ListExpeditions(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/v1.WorldService/ListExpeditions",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(WorldServiceServer).ListExpeditions(ctx, req.(*ListExpeditionsRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _WorldService_Play_Handler(srv interface{}, stream grpc.ServerStream) error {
	return srv.(WorldServiceServer).Play(&worldServicePlayServer{stream})
}

type WorldService_PlayServer interface {
	Send(*ServerPlayMessage) error
	Recv() (*ClientPlayMessage, error)
	grpc.ServerStream
}

type worldServicePlayServer struct {
	grpc.ServerStream
}

func (x *worldServicePlayServer) Send(m *ServerPlayMessage) error {
	return x.ServerStream.SendMsg(m)
}

func (x *worldServicePlayServer) Recv() (*ClientPlayMessage, error) {
	m := new(ClientPlayMessage)
	if err := x.ServerStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func _WorldService_Watch_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(emptypb.Empty)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(WorldServiceServer).Watch(m, &worldServiceWatchServer{stream})
}

type WorldService_WatchServer interface {
	Send(*ServerPlayMessage) error
	grpc.ServerStream
}

type worldServiceWatchServer struct {
	grpc.ServerStream
}

func (x *worldServiceWatchServer) Send(m *ServerPlayMessage) error {
	return x.ServerStream.SendMsg(m)
}

var _WorldService_serviceDesc = grpc.ServiceDesc{
	ServiceName: "v1.WorldService",
	HandlerType: (*WorldServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "WorldInfo",
			Handler:    _WorldService_WorldInfo_Handler,
		},
		{
			MethodName: "Connect",
			Handler:    _WorldService_Connect_Handler,
		},
		{
			MethodName: "ListResourcesState",
			Handler:    _WorldService_ListResourcesState_Handler,
		},
		{
			MethodName: "StartExpedition",
			Handler:    _WorldService_StartExpedition_Handler,
		},
		{
			MethodName: "CollectExpedition",
			Handler:    _WorldService_CollectExpedition_Handler,
		},
		{
			MethodName: "ListExpeditions",
			Handler:    _WorldService_ListExpeditions_Handler,
		},
	},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "Play",
			Handler:       _WorldService_Play_Handler,
			ServerStreams: true,
			ClientStreams: true,
		},
		{
			StreamName:    "Watch",
			Handler:       _WorldService_Watch_Handler,
			ServerStreams: true,
		},
	},
	Metadata: "apis/world/v1/world_service.proto",
}
