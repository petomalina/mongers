import 'dart:io';

import 'package:app/components/resources/bloc/resources_bloc.dart';
import 'package:app/components/resources/bloc/resources_repository.dart';
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

void main() {
  Bloc.observer = SimpleBlocObserver();

  // final channel =
  //     grpcweb.GrpcWebClientChannel.xhr(Uri.parse('http://localhost:8080'));

  final channel = grpc.ClientChannel(
    InternetAddress('92.236.122.65',
        type: InternetAddressType.IPv4),
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
  
  runApp(MyApp(ResourcesBloc(repository: worldServerClient)));
}

class MyApp extends StatelessWidget {
  final ResourcesBloc resourcesBloc;

  MyApp(this.resourcesBloc);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return BlocProvider.value(
      value: resourcesBloc,
      child: MaterialApp(
        title: 'Mongers',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: GameView(),
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
