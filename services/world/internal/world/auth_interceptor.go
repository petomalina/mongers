package world

import (
	"context"
	"github.com/grpc-ecosystem/go-grpc-middleware/util/metautils"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type AuthInterceptor struct {
	playerManager *PlayerManager
}

func NewAuthInterceptor(pm *PlayerManager) *AuthInterceptor {
	return &AuthInterceptor{
		playerManager: pm,
	}
}

func (ai *AuthInterceptor) Unary() grpc.UnaryServerInterceptor {
	return func(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, handler grpc.UnaryHandler) (resp interface{}, err error) {
		if err := ai.authorizeContext(ctx); err != nil {
			return nil, status.Error(codes.Unauthenticated, err.Error())
		}

		return handler(ctx, req)
	}
}

func (ai *AuthInterceptor) Stream() grpc.StreamServerInterceptor {
	return func(srv interface{}, ss grpc.ServerStream, info *grpc.StreamServerInfo, handler grpc.StreamHandler) error {
		if err := ai.authorizeContext(ss.Context()); err != nil {
			return status.Error(codes.Unauthenticated, err.Error())
		}

		return handler(srv, ss)
	}
}

func (ai *AuthInterceptor) authorizeContext(ctx context.Context) error {
	md := metautils.ExtractIncoming(ctx)

	authorization := md.Get("authorization")
	if authorization == "" {
		return status.Error(codes.Unauthenticated, "no authorization token provided")
	} else if authorization != "heslo" {
		return status.Error(codes.Unauthenticated, "authorization token is invalid")
	}

	method, ok := grpc.Method(ctx)
	if !ok {
		return status.Error(codes.NotFound, "could not find the method on the server")
	}

	// this whitelists the connect function, as it provides the permissions for other calls
	if method != "/v1.WorldService/Connect" {
		id := md.Get("user_id")
		if id == "" {
			return status.Error(codes.Unauthenticated, "no user_id provided within token")
		} else if !ai.playerManager.IsAllowed(id) {
			return status.Error(codes.Unauthenticated, "please Connect() first before you try to reach other endpoints")
		}
	}

	return nil
}
