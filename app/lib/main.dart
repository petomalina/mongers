import 'dart:io';

import 'package:app/state/expeditions/expeditions_bloc.dart';
import 'package:app/state/resources/resources_bloc.dart';
import 'package:app/views/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:grpc/grpc.dart' as grpc;

// import 'package:grpc/grpc_web.dart' as grpcweb;
import 'package:app/apis/world/v1/world_service.pbgrpc.dart' as world;
import 'package:app/apis/world/v1/world_service.pb.dart' as worldpb;

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    print('[${bloc.runtimeType}/event] $event');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(
        '[${bloc.runtimeType}/transition] ${transition.currentState.status} -|${transition.event}|-> ${transition.nextState.status}');
    super.onTransition(bloc, transition);
  }
}

void main() async {
  Bloc.observer = SimpleBlocObserver();

  // final channel =
  //     grpcweb.GrpcWebClientChannel.xhr(Uri.parse('http://localhost:8080'));

  final channel = grpc.ClientChannel(
    InternetAddress('92.236.122.65', type: InternetAddressType.IPv4),
    port: 8080,
    options: const grpc.ChannelOptions(
      credentials: grpc.ChannelCredentials.insecure(),
    ),
  );

  final worldServerClient = world.WorldServiceClient(
    channel,
    interceptors: [
      AuthInterceptor(),
    ],
  );

  final connectResult = await worldServerClient.connect(worldpb.ConnectRequest(
    playerId: 'peto',
    connectType: 'play',
  ));

  runApp(MyApp(
    worldServerClient,
    null, null,
  ));
}

class MyApp extends StatelessWidget {
  final world.WorldServiceClient client;
  final ResourcesBloc resourcesBloc;
  final ExpeditionsBloc expeditionsBloc;

  MyApp(this.client, this.resourcesBloc, this.expeditionsBloc);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return BlocProvider(
      create: (_) => ResourcesBloc(repository: client),
      // the builder needs to be here to create a new internal
      // context for the ResourceBloc, otherwise the ResourceBloc
      // is being read from the outer context, which does not contain it
      child: Builder(
        builder: (context) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => ExpeditionsBloc(
                  repository: client,
                  resourcesBloc: context.read<ResourcesBloc>(),
                ),
              ),
            ],
            child: MaterialApp(
              title: 'Mongers',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: GameView(),
            ),
          );
        }
      ),
    );
  }
}

class AuthInterceptor extends grpc.ClientInterceptor {
  @override
  grpc.ResponseFuture<R> interceptUnary<Q, R>(
      grpc.ClientMethod<Q, R> method,
      Q request,
      grpc.CallOptions options,
      grpc.ClientUnaryInvoker<Q, R> invoker) {
    return invoker(
      method,
      request,
      grpc.CallOptions(
        metadata: {
          'authorization': 'heslo',
          'user_id': 'peto',
          ...options.metadata,
        },
      ).mergedWith(options),
    );
  }

  @override
  grpc.ResponseStream<R> interceptStreaming<Q, R>(
      grpc.ClientMethod<Q, R> method,
      Stream<Q> requests,
      grpc.CallOptions options,
      grpc.ClientStreamingInvoker<Q, R> invoker) {
    return invoker(method, requests, options);
  }
}
