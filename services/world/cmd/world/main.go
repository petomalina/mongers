package main

import (
	"github.com/blendle/zapdriver"
	v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"
	"github.com/petomalina/mongers/services/world/internal/world"
	"github.com/petomalina/xrpc/pkg/multiplexer"
	"go.uber.org/zap"
	"go.uber.org/zap/zapcore"
	"google.golang.org/grpc"
	"net/http"
	"os"
	"os/signal"
)

func main() {
	// create the zap logger for future use
	config := zapdriver.NewProductionConfig()
	config.Level = zap.NewAtomicLevelAt(zapcore.InfoLevel)
	logger, err := config.Build(zapdriver.WrapCore(
		zapdriver.ReportAllErrors(true),
		zapdriver.ServiceName("Mongers World"),
	))
	if err != nil {
		panic(err)
	}

	authInterceptor := world.NewAuthInterceptor()

	grpcServer := grpc.NewServer(
		grpc.ChainUnaryInterceptor(
			authInterceptor.Unary(),
		),
		grpc.ChainStreamInterceptor(
			authInterceptor.Stream(),
		),
	)
	worldService := world.NewService(logger)
	v1.RegisterWorldServiceServer(grpcServer, worldService)

	srv := http.Server{
		Addr: ":" + os.Getenv("PORT"),
		Handler: multiplexer.Make(nil,
			multiplexer.GRPCHandler(grpcServer),
		),
	}

	c := make(chan os.Signal, 1)
	signal.Notify(c, os.Interrupt)
	go func() {
		<-c
		logger.Info("interrupt received, shutting down the server")
		grpcServer.GracefulStop()
		err := srv.Close()
		if err != nil {
			logger.Warn("can't close the server properly when shutting down", zap.Error(err))
		}

		worldService.Dispose()
	}()

	logger.Info("starting Mongers World Server", zap.String("addr", srv.Addr))
	if err = srv.ListenAndServe(); err != nil {
		logger.Info("shutting down Mongers World Server", zap.Error(err))
	}
}
