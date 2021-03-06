package main

import (
	"cloud.google.com/go/compute/metadata"
	"cloud.google.com/go/profiler"
	"github.com/blendle/zapdriver"
	"github.com/improbable-eng/grpc-web/go/grpcweb"
	v1 "github.com/petomalina/mongers/mongersapis/pkg/world/v1"
	"github.com/petomalina/mongers/services/world/internal/world"
	"github.com/petomalina/xrpc/pkg/multiplexer"
	"github.com/spf13/viper"
	"go.uber.org/zap"
	"go.uber.org/zap/zapcore"
	"google.golang.org/grpc"
	"net/http"
	"os"
	"os/signal"
	"strings"
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

	viper.SetEnvKeyReplacer(strings.NewReplacer(".", "_"))
	viper.AutomaticEnv()

	viper.SetDefault("port", "8080")

	if metadata.OnGCE() {
		cfg := profiler.Config{
			Service:        "mongers-world",
			ServiceVersion: "1.0.0",
		}
		if err := profiler.Start(cfg); err != nil {
			logger.Fatal("The profiler cannot be started")
		}
	}

	// playerManager is an umbrella service that shares player info with interceptors
	playerManager := world.NewPlayerManager(40)

	// interceptor definitions
	authInterceptor := world.NewAuthInterceptor(playerManager)

	grpcServer := grpc.NewServer(
		grpc.ChainUnaryInterceptor(
			authInterceptor.Unary(),
		),
		grpc.ChainStreamInterceptor(
			authInterceptor.Stream(),
		),
	)

	grpcWebServer := grpcweb.WrapServer(grpcServer,
		grpcweb.WithOriginFunc(func(origin string) bool {
			return true
		}),
	)

	worldService := world.NewService(logger, playerManager)
	v1.RegisterWorldServiceServer(grpcServer, worldService)

	srv := http.Server{
		Addr: ":" + os.Getenv("PORT"),
		Handler: multiplexer.Make(nil,
			multiplexer.GRPCHandler(grpcServer),
			multiplexer.GRPCWebTextHandler(grpcWebServer),
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
