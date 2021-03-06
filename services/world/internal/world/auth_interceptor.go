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
	if authorization == "heslo" {
		return nil
	} else if authorization == "" {
		return status.Error(codes.Unauthenticated, "no authorization token provided")
	} else {
		return status.Error(codes.Unauthenticated, "authorization token is invalid")
	}
}
