///
//  Generated code. Do not modify.
//  source: apis/world/v1/world_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../../google/protobuf/empty.pb.dart' as $0;
import 'world_service.pb.dart' as $1;
export 'world_service.pb.dart';

class WorldServiceClient extends $grpc.Client {
  static final _$worldInfo = $grpc.ClientMethod<$0.Empty, $1.World>(
      '/v1.WorldService/WorldInfo',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.World.fromBuffer(value));
  static final _$connect =
      $grpc.ClientMethod<$1.ConnectRequest, $1.ConnectResponse>(
          '/v1.WorldService/Connect',
          ($1.ConnectRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ConnectResponse.fromBuffer(value));
  static final _$listResourcesState = $grpc.ClientMethod<
          $1.ListResourcesStateRequest, $1.ListResourcesStateResponse>(
      '/v1.WorldService/ListResourcesState',
      ($1.ListResourcesStateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.ListResourcesStateResponse.fromBuffer(value));
  static final _$startExpedition =
      $grpc.ClientMethod<$1.StartExpeditionRequest, $1.StartExpeditionResponse>(
          '/v1.WorldService/StartExpedition',
          ($1.StartExpeditionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.StartExpeditionResponse.fromBuffer(value));
  static final _$collectExpedition = $grpc.ClientMethod<
          $1.CollectExpeditionRequest, $1.CollectExpeditionResponse>(
      '/v1.WorldService/CollectExpedition',
      ($1.CollectExpeditionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.CollectExpeditionResponse.fromBuffer(value));
  static final _$listExpeditions =
      $grpc.ClientMethod<$1.ListExpeditionsRequest, $1.ListExpeditionsResponse>(
          '/v1.WorldService/ListExpeditions',
          ($1.ListExpeditionsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListExpeditionsResponse.fromBuffer(value));
  static final _$play =
      $grpc.ClientMethod<$1.ClientPlayMessage, $1.ServerPlayMessage>(
          '/v1.WorldService/Play',
          ($1.ClientPlayMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ServerPlayMessage.fromBuffer(value));
  static final _$watch = $grpc.ClientMethod<$0.Empty, $1.ServerPlayMessage>(
      '/v1.WorldService/Watch',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ServerPlayMessage.fromBuffer(value));

  WorldServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.World> worldInfo($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$worldInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.ConnectResponse> connect($1.ConnectRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$connect, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListResourcesStateResponse> listResourcesState(
      $1.ListResourcesStateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listResourcesState, request, options: options);
  }

  $grpc.ResponseFuture<$1.StartExpeditionResponse> startExpedition(
      $1.StartExpeditionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$startExpedition, request, options: options);
  }

  $grpc.ResponseFuture<$1.CollectExpeditionResponse> collectExpedition(
      $1.CollectExpeditionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$collectExpedition, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListExpeditionsResponse> listExpeditions(
      $1.ListExpeditionsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listExpeditions, request, options: options);
  }

  $grpc.ResponseStream<$1.ServerPlayMessage> play(
      $async.Stream<$1.ClientPlayMessage> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$play, request, options: options);
  }

  $grpc.ResponseStream<$1.ServerPlayMessage> watch($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$watch, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class WorldServiceBase extends $grpc.Service {
  $core.String get $name => 'v1.WorldService';

  WorldServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.World>(
        'WorldInfo',
        worldInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.World value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ConnectRequest, $1.ConnectResponse>(
        'Connect',
        connect_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ConnectRequest.fromBuffer(value),
        ($1.ConnectResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListResourcesStateRequest,
            $1.ListResourcesStateResponse>(
        'ListResourcesState',
        listResourcesState_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ListResourcesStateRequest.fromBuffer(value),
        ($1.ListResourcesStateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.StartExpeditionRequest,
            $1.StartExpeditionResponse>(
        'StartExpedition',
        startExpedition_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.StartExpeditionRequest.fromBuffer(value),
        ($1.StartExpeditionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CollectExpeditionRequest,
            $1.CollectExpeditionResponse>(
        'CollectExpedition',
        collectExpedition_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.CollectExpeditionRequest.fromBuffer(value),
        ($1.CollectExpeditionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListExpeditionsRequest,
            $1.ListExpeditionsResponse>(
        'ListExpeditions',
        listExpeditions_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ListExpeditionsRequest.fromBuffer(value),
        ($1.ListExpeditionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ClientPlayMessage, $1.ServerPlayMessage>(
        'Play',
        play,
        true,
        true,
        ($core.List<$core.int> value) => $1.ClientPlayMessage.fromBuffer(value),
        ($1.ServerPlayMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.ServerPlayMessage>(
        'Watch',
        watch_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.ServerPlayMessage value) => value.writeToBuffer()));
  }

  $async.Future<$1.World> worldInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return worldInfo(call, await request);
  }

  $async.Future<$1.ConnectResponse> connect_Pre(
      $grpc.ServiceCall call, $async.Future<$1.ConnectRequest> request) async {
    return connect(call, await request);
  }

  $async.Future<$1.ListResourcesStateResponse> listResourcesState_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ListResourcesStateRequest> request) async {
    return listResourcesState(call, await request);
  }

  $async.Future<$1.StartExpeditionResponse> startExpedition_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.StartExpeditionRequest> request) async {
    return startExpedition(call, await request);
  }

  $async.Future<$1.CollectExpeditionResponse> collectExpedition_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.CollectExpeditionRequest> request) async {
    return collectExpedition(call, await request);
  }

  $async.Future<$1.ListExpeditionsResponse> listExpeditions_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ListExpeditionsRequest> request) async {
    return listExpeditions(call, await request);
  }

  $async.Stream<$1.ServerPlayMessage> watch_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* watch(call, await request);
  }

  $async.Future<$1.World> worldInfo($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.ConnectResponse> connect(
      $grpc.ServiceCall call, $1.ConnectRequest request);
  $async.Future<$1.ListResourcesStateResponse> listResourcesState(
      $grpc.ServiceCall call, $1.ListResourcesStateRequest request);
  $async.Future<$1.StartExpeditionResponse> startExpedition(
      $grpc.ServiceCall call, $1.StartExpeditionRequest request);
  $async.Future<$1.CollectExpeditionResponse> collectExpedition(
      $grpc.ServiceCall call, $1.CollectExpeditionRequest request);
  $async.Future<$1.ListExpeditionsResponse> listExpeditions(
      $grpc.ServiceCall call, $1.ListExpeditionsRequest request);
  $async.Stream<$1.ServerPlayMessage> play(
      $grpc.ServiceCall call, $async.Stream<$1.ClientPlayMessage> request);
  $async.Stream<$1.ServerPlayMessage> watch(
      $grpc.ServiceCall call, $0.Empty request);
}
