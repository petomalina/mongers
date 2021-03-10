package main

import (
	"context"
	"fmt"
	"github.com/grpc-ecosystem/go-grpc-middleware/util/metautils"
	v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"
	"google.golang.org/grpc"
	"google.golang.org/protobuf/types/known/emptypb"
)

func main() {
	conn, err := grpc.Dial(
		"92.236.122.65:8080",
		grpc.WithInsecure(),
		grpc.WithUnaryInterceptor(func(ctx context.Context, method string, req, reply interface{}, cc *grpc.ClientConn, invoker grpc.UnaryInvoker, opts ...grpc.CallOption) error {
			meta := metautils.NiceMD{}
			meta.Set("authorization", "heslo")

			return invoker(meta.ToOutgoing(ctx), method, req, reply, cc, opts...)
		}))
	if err != nil {
		panic(err)
	}

	world := v1.NewWorldServiceClient(conn)

	w, err := world.WorldInfo(context.Background(), &emptypb.Empty{})
	fmt.Println(w, err)
}
