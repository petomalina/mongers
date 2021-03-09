///
//  Generated code. Do not modify.
//  source: apis/world/v1/world_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'world_service.pb.dart' as $0;
export 'world_service.pb.dart';

class WorldServiceClient extends $grpc.Client {
  static final _$worldInfo = $grpc.ClientMethod<$0.Empty, $0.World>(
      '/v1.WorldService/WorldInfo',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.World.fromBuffer(value));
  static final _$connect =
      $grpc.ClientMethod<$0.ConnectRequest, $0.ConnectResponse>(
          '/v1.WorldService/Connect',
          ($0.ConnectRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ConnectResponse.fromBuffer(value));
  static final _$getResources =
      $grpc.ClientMethod<$0.ResourcesRequest, $0.ResourcesResponse>(
          '/v1.WorldService/GetResources',
          ($0.ResourcesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ResourcesResponse.fromBuffer(value));
  static final _$play =
      $grpc.ClientMethod<$0.ClientPlayMessage, $0.ServerPlayMessage>(
          '/v1.WorldService/Play',
          ($0.ClientPlayMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ServerPlayMessage.fromBuffer(value));
  static final _$watch = $grpc.ClientMethod<$0.Empty, $0.ServerPlayMessage>(
      '/v1.WorldService/Watch',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ServerPlayMessage.fromBuffer(value));

  WorldServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.World> worldInfo($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$worldInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.ConnectResponse> connect($0.ConnectRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$connect, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResourcesResponse> getResources(
      $0.ResourcesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getResources, request, options: options);
  }

  $grpc.ResponseStream<$0.ServerPlayMessage> play(
      $async.Stream<$0.ClientPlayMessage> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$play, request, options: options);
  }

  $grpc.ResponseStream<$0.ServerPlayMessage> watch($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$watch, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class WorldServiceBase extends $grpc.Service {
  $core.String get $name => 'v1.WorldService';

  WorldServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.World>(
        'WorldInfo',
        worldInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.World value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ConnectRequest, $0.ConnectResponse>(
        'Connect',
        connect_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ConnectRequest.fromBuffer(value),
        ($0.ConnectResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ResourcesRequest, $0.ResourcesResponse>(
        'GetResources',
        getResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ResourcesRequest.fromBuffer(value),
        ($0.ResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ClientPlayMessage, $0.ServerPlayMessage>(
        'Play',
        play,
        true,
        true,
        ($core.List<$core.int> value) => $0.ClientPlayMessage.fromBuffer(value),
        ($0.ServerPlayMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.ServerPlayMessage>(
        'Watch',
        watch_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.ServerPlayMessage value) => value.writeToBuffer()));
  }

  $async.Future<$0.World> worldInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return worldInfo(call, await request);
  }

  $async.Future<$0.ConnectResponse> connect_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ConnectRequest> request) async {
    return connect(call, await request);
  }

  $async.Future<$0.ResourcesResponse> getResources_Pre($grpc.ServiceCall call,
      $async.Future<$0.ResourcesRequest> request) async {
    return getResources(call, await request);
  }

  $async.Stream<$0.ServerPlayMessage> watch_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* watch(call, await request);
  }

  $async.Future<$0.World> worldInfo($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.ConnectResponse> connect(
      $grpc.ServiceCall call, $0.ConnectRequest request);
  $async.Future<$0.ResourcesResponse> getResources(
      $grpc.ServiceCall call, $0.ResourcesRequest request);
  $async.Stream<$0.ServerPlayMessage> play(
      $grpc.ServiceCall call, $async.Stream<$0.ClientPlayMessage> request);
  $async.Stream<$0.ServerPlayMessage> watch(
      $grpc.ServiceCall call, $0.Empty request);
}
