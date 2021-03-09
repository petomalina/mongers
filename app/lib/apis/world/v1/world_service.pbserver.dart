///
//  Generated code. Do not modify.
//  source: apis/world/v1/world_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'world_service.pb.dart' as $0;
import 'world_service.pbjson.dart';

export 'world_service.pb.dart';

abstract class WorldServiceBase extends $pb.GeneratedService {
  $async.Future<$0.World> worldInfo($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$0.ConnectResponse> connect($pb.ServerContext ctx, $0.ConnectRequest request);
  $async.Future<$0.ServerPlayMessage> play($pb.ServerContext ctx, $0.ClientPlayMessage request);
  $async.Future<$0.ServerPlayMessage> watch($pb.ServerContext ctx, $0.Empty request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'WorldInfo': return $0.Empty();
      case 'Connect': return $0.ConnectRequest();
      case 'Play': return $0.ClientPlayMessage();
      case 'Watch': return $0.Empty();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'WorldInfo': return this.worldInfo(ctx, request as $0.Empty);
      case 'Connect': return this.connect(ctx, request as $0.ConnectRequest);
      case 'Play': return this.play(ctx, request as $0.ClientPlayMessage);
      case 'Watch': return this.watch(ctx, request as $0.Empty);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => WorldServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => WorldServiceBase$messageJson;
}

