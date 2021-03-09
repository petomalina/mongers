///
//  Generated code. Do not modify.
//  source: apis/world/v1/world_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $2;
import '../../../google/protobuf/duration.pb.dart' as $3;

import 'world_service.pbenum.dart';

export 'world_service.pbenum.dart';

class ConnectRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectType')
    ..hasRequiredFields = false
  ;

  ConnectRequest._() : super();
  factory ConnectRequest({
    $core.String? connectType,
  }) {
    final _result = create();
    if (connectType != null) {
      _result.connectType = connectType;
    }
    return _result;
  }
  factory ConnectRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectRequest clone() => ConnectRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectRequest copyWith(void Function(ConnectRequest) updates) => super.copyWith((message) => updates(message as ConnectRequest)) as ConnectRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectRequest create() => ConnectRequest._();
  ConnectRequest createEmptyInstance() => create();
  static $pb.PbList<ConnectRequest> createRepeated() => $pb.PbList<ConnectRequest>();
  @$core.pragma('dart2js:noInline')
  static ConnectRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectRequest>(create);
  static ConnectRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get connectType => $_getSZ(0);
  @$pb.TagNumber(1)
  set connectType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnectType() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectType() => clearField(1);
}

class ConnectResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'approved')
    ..hasRequiredFields = false
  ;

  ConnectResponse._() : super();
  factory ConnectResponse({
    $core.bool? approved,
  }) {
    final _result = create();
    if (approved != null) {
      _result.approved = approved;
    }
    return _result;
  }
  factory ConnectResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectResponse clone() => ConnectResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectResponse copyWith(void Function(ConnectResponse) updates) => super.copyWith((message) => updates(message as ConnectResponse)) as ConnectResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectResponse create() => ConnectResponse._();
  ConnectResponse createEmptyInstance() => create();
  static $pb.PbList<ConnectResponse> createRepeated() => $pb.PbList<ConnectResponse>();
  @$core.pragma('dart2js:noInline')
  static ConnectResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectResponse>(create);
  static ConnectResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get approved => $_getBF(0);
  @$pb.TagNumber(1)
  set approved($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApproved() => $_has(0);
  @$pb.TagNumber(1)
  void clearApproved() => clearField(1);
}

enum ClientPlayMessage_Req {
  listResources, 
  listExpeditions, 
  startExpedition, 
  collectExpedition, 
  notSet
}

class ClientPlayMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ClientPlayMessage_Req> _ClientPlayMessage_ReqByTag = {
    1 : ClientPlayMessage_Req.listResources,
    2 : ClientPlayMessage_Req.listExpeditions,
    3 : ClientPlayMessage_Req.startExpedition,
    4 : ClientPlayMessage_Req.collectExpedition,
    0 : ClientPlayMessage_Req.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientPlayMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<ListResourcesRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'listResources', subBuilder: ListResourcesRequest.create)
    ..aOM<ListExpeditionsRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'listExpeditions', subBuilder: ListExpeditionsRequest.create)
    ..aOM<StartExpeditionRequest>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startExpedition', subBuilder: StartExpeditionRequest.create)
    ..aOM<CollectExpeditionRequest>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'collectExpedition', subBuilder: CollectExpeditionRequest.create)
    ..hasRequiredFields = false
  ;

  ClientPlayMessage._() : super();
  factory ClientPlayMessage({
    ListResourcesRequest? listResources,
    ListExpeditionsRequest? listExpeditions,
    StartExpeditionRequest? startExpedition,
    CollectExpeditionRequest? collectExpedition,
  }) {
    final _result = create();
    if (listResources != null) {
      _result.listResources = listResources;
    }
    if (listExpeditions != null) {
      _result.listExpeditions = listExpeditions;
    }
    if (startExpedition != null) {
      _result.startExpedition = startExpedition;
    }
    if (collectExpedition != null) {
      _result.collectExpedition = collectExpedition;
    }
    return _result;
  }
  factory ClientPlayMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientPlayMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientPlayMessage clone() => ClientPlayMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientPlayMessage copyWith(void Function(ClientPlayMessage) updates) => super.copyWith((message) => updates(message as ClientPlayMessage)) as ClientPlayMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientPlayMessage create() => ClientPlayMessage._();
  ClientPlayMessage createEmptyInstance() => create();
  static $pb.PbList<ClientPlayMessage> createRepeated() => $pb.PbList<ClientPlayMessage>();
  @$core.pragma('dart2js:noInline')
  static ClientPlayMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientPlayMessage>(create);
  static ClientPlayMessage? _defaultInstance;

  ClientPlayMessage_Req whichReq() => _ClientPlayMessage_ReqByTag[$_whichOneof(0)]!;
  void clearReq() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ListResourcesRequest get listResources => $_getN(0);
  @$pb.TagNumber(1)
  set listResources(ListResourcesRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasListResources() => $_has(0);
  @$pb.TagNumber(1)
  void clearListResources() => clearField(1);
  @$pb.TagNumber(1)
  ListResourcesRequest ensureListResources() => $_ensure(0);

  @$pb.TagNumber(2)
  ListExpeditionsRequest get listExpeditions => $_getN(1);
  @$pb.TagNumber(2)
  set listExpeditions(ListExpeditionsRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasListExpeditions() => $_has(1);
  @$pb.TagNumber(2)
  void clearListExpeditions() => clearField(2);
  @$pb.TagNumber(2)
  ListExpeditionsRequest ensureListExpeditions() => $_ensure(1);

  @$pb.TagNumber(3)
  StartExpeditionRequest get startExpedition => $_getN(2);
  @$pb.TagNumber(3)
  set startExpedition(StartExpeditionRequest v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartExpedition() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartExpedition() => clearField(3);
  @$pb.TagNumber(3)
  StartExpeditionRequest ensureStartExpedition() => $_ensure(2);

  @$pb.TagNumber(4)
  CollectExpeditionRequest get collectExpedition => $_getN(3);
  @$pb.TagNumber(4)
  set collectExpedition(CollectExpeditionRequest v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCollectExpedition() => $_has(3);
  @$pb.TagNumber(4)
  void clearCollectExpedition() => clearField(4);
  @$pb.TagNumber(4)
  CollectExpeditionRequest ensureCollectExpedition() => $_ensure(3);
}

enum ServerPlayMessage_Res {
  listResources, 
  listExpeditions, 
  startExpedition, 
  collectExpedition, 
  notSet
}

class ServerPlayMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ServerPlayMessage_Res> _ServerPlayMessage_ResByTag = {
    1 : ServerPlayMessage_Res.listResources,
    2 : ServerPlayMessage_Res.listExpeditions,
    3 : ServerPlayMessage_Res.startExpedition,
    4 : ServerPlayMessage_Res.collectExpedition,
    0 : ServerPlayMessage_Res.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServerPlayMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<ListResourcesResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'listResources', subBuilder: ListResourcesResponse.create)
    ..aOM<ListExpeditionsResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'listExpeditions', subBuilder: ListExpeditionsResponse.create)
    ..aOM<StartExpeditionResponse>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startExpedition', subBuilder: StartExpeditionResponse.create)
    ..aOM<CollectExpeditionResponse>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'collectExpedition', subBuilder: CollectExpeditionResponse.create)
    ..hasRequiredFields = false
  ;

  ServerPlayMessage._() : super();
  factory ServerPlayMessage({
    ListResourcesResponse? listResources,
    ListExpeditionsResponse? listExpeditions,
    StartExpeditionResponse? startExpedition,
    CollectExpeditionResponse? collectExpedition,
  }) {
    final _result = create();
    if (listResources != null) {
      _result.listResources = listResources;
    }
    if (listExpeditions != null) {
      _result.listExpeditions = listExpeditions;
    }
    if (startExpedition != null) {
      _result.startExpedition = startExpedition;
    }
    if (collectExpedition != null) {
      _result.collectExpedition = collectExpedition;
    }
    return _result;
  }
  factory ServerPlayMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerPlayMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerPlayMessage clone() => ServerPlayMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerPlayMessage copyWith(void Function(ServerPlayMessage) updates) => super.copyWith((message) => updates(message as ServerPlayMessage)) as ServerPlayMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerPlayMessage create() => ServerPlayMessage._();
  ServerPlayMessage createEmptyInstance() => create();
  static $pb.PbList<ServerPlayMessage> createRepeated() => $pb.PbList<ServerPlayMessage>();
  @$core.pragma('dart2js:noInline')
  static ServerPlayMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerPlayMessage>(create);
  static ServerPlayMessage? _defaultInstance;

  ServerPlayMessage_Res whichRes() => _ServerPlayMessage_ResByTag[$_whichOneof(0)]!;
  void clearRes() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ListResourcesResponse get listResources => $_getN(0);
  @$pb.TagNumber(1)
  set listResources(ListResourcesResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasListResources() => $_has(0);
  @$pb.TagNumber(1)
  void clearListResources() => clearField(1);
  @$pb.TagNumber(1)
  ListResourcesResponse ensureListResources() => $_ensure(0);

  @$pb.TagNumber(2)
  ListExpeditionsResponse get listExpeditions => $_getN(1);
  @$pb.TagNumber(2)
  set listExpeditions(ListExpeditionsResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasListExpeditions() => $_has(1);
  @$pb.TagNumber(2)
  void clearListExpeditions() => clearField(2);
  @$pb.TagNumber(2)
  ListExpeditionsResponse ensureListExpeditions() => $_ensure(1);

  @$pb.TagNumber(3)
  StartExpeditionResponse get startExpedition => $_getN(2);
  @$pb.TagNumber(3)
  set startExpedition(StartExpeditionResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartExpedition() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartExpedition() => clearField(3);
  @$pb.TagNumber(3)
  StartExpeditionResponse ensureStartExpedition() => $_ensure(2);

  @$pb.TagNumber(4)
  CollectExpeditionResponse get collectExpedition => $_getN(3);
  @$pb.TagNumber(4)
  set collectExpedition(CollectExpeditionResponse v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCollectExpedition() => $_has(3);
  @$pb.TagNumber(4)
  void clearCollectExpedition() => clearField(4);
  @$pb.TagNumber(4)
  CollectExpeditionResponse ensureCollectExpedition() => $_ensure(3);
}

class World extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'World', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'worldId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'worldName')
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  World._() : super();
  factory World({
    $core.String? worldId,
    $core.String? worldName,
    $core.int? playerCount,
  }) {
    final _result = create();
    if (worldId != null) {
      _result.worldId = worldId;
    }
    if (worldName != null) {
      _result.worldName = worldName;
    }
    if (playerCount != null) {
      _result.playerCount = playerCount;
    }
    return _result;
  }
  factory World.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory World.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  World clone() => World()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  World copyWith(void Function(World) updates) => super.copyWith((message) => updates(message as World)) as World; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static World create() => World._();
  World createEmptyInstance() => create();
  static $pb.PbList<World> createRepeated() => $pb.PbList<World>();
  @$core.pragma('dart2js:noInline')
  static World getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<World>(create);
  static World? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get worldId => $_getSZ(0);
  @$pb.TagNumber(1)
  set worldId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWorldId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorldId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get worldName => $_getSZ(1);
  @$pb.TagNumber(2)
  set worldName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWorldName() => $_has(1);
  @$pb.TagNumber(2)
  void clearWorldName() => clearField(2);

  @$pb.TagNumber(10)
  $core.int get playerCount => $_getIZ(2);
  @$pb.TagNumber(10)
  set playerCount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(10)
  $core.bool hasPlayerCount() => $_has(2);
  @$pb.TagNumber(10)
  void clearPlayerCount() => clearField(10);
}

class Player extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Player', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerName')
    ..hasRequiredFields = false
  ;

  Player._() : super();
  factory Player({
    $core.String? playerId,
    $core.String? playerName,
  }) {
    final _result = create();
    if (playerId != null) {
      _result.playerId = playerId;
    }
    if (playerName != null) {
      _result.playerName = playerName;
    }
    return _result;
  }
  factory Player.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Player.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Player clone() => Player()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Player copyWith(void Function(Player) updates) => super.copyWith((message) => updates(message as Player)) as Player; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Player create() => Player._();
  Player createEmptyInstance() => create();
  static $pb.PbList<Player> createRepeated() => $pb.PbList<Player>();
  @$core.pragma('dart2js:noInline')
  static Player getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Player>(create);
  static Player? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get playerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set playerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlayerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayerId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get playerName => $_getSZ(1);
  @$pb.TagNumber(2)
  set playerName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPlayerName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlayerName() => clearField(2);
}

class Resource extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Resource', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resourceId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rpm')
    ..hasRequiredFields = false
  ;

  Resource._() : super();
  factory Resource({
    $core.String? resourceId,
    $fixnum.Int64? value,
    $fixnum.Int64? timestamp,
    $fixnum.Int64? rpm,
  }) {
    final _result = create();
    if (resourceId != null) {
      _result.resourceId = resourceId;
    }
    if (value != null) {
      _result.value = value;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (rpm != null) {
      _result.rpm = rpm;
    }
    return _result;
  }
  factory Resource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Resource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Resource clone() => Resource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Resource copyWith(void Function(Resource) updates) => super.copyWith((message) => updates(message as Resource)) as Resource; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Resource create() => Resource._();
  Resource createEmptyInstance() => create();
  static $pb.PbList<Resource> createRepeated() => $pb.PbList<Resource>();
  @$core.pragma('dart2js:noInline')
  static Resource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Resource>(create);
  static Resource? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resourceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set resourceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResourceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResourceId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get value => $_getI64(1);
  @$pb.TagNumber(2)
  set value($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get timestamp => $_getI64(2);
  @$pb.TagNumber(3)
  set timestamp($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get rpm => $_getI64(3);
  @$pb.TagNumber(4)
  set rpm($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRpm() => $_has(3);
  @$pb.TagNumber(4)
  void clearRpm() => clearField(4);
}

class ListResourcesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListResourcesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerId')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ids')
    ..hasRequiredFields = false
  ;

  ListResourcesRequest._() : super();
  factory ListResourcesRequest({
    $core.String? playerId,
    $core.Iterable<$core.String>? ids,
  }) {
    final _result = create();
    if (playerId != null) {
      _result.playerId = playerId;
    }
    if (ids != null) {
      _result.ids.addAll(ids);
    }
    return _result;
  }
  factory ListResourcesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListResourcesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListResourcesRequest clone() => ListResourcesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListResourcesRequest copyWith(void Function(ListResourcesRequest) updates) => super.copyWith((message) => updates(message as ListResourcesRequest)) as ListResourcesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListResourcesRequest create() => ListResourcesRequest._();
  ListResourcesRequest createEmptyInstance() => create();
  static $pb.PbList<ListResourcesRequest> createRepeated() => $pb.PbList<ListResourcesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListResourcesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListResourcesRequest>(create);
  static ListResourcesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get playerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set playerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlayerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayerId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get ids => $_getList(1);
}

class ListResourcesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListResourcesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..pc<Resource>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resources', $pb.PbFieldType.PM, subBuilder: Resource.create)
    ..hasRequiredFields = false
  ;

  ListResourcesResponse._() : super();
  factory ListResourcesResponse({
    $core.Iterable<Resource>? resources,
  }) {
    final _result = create();
    if (resources != null) {
      _result.resources.addAll(resources);
    }
    return _result;
  }
  factory ListResourcesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListResourcesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListResourcesResponse clone() => ListResourcesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListResourcesResponse copyWith(void Function(ListResourcesResponse) updates) => super.copyWith((message) => updates(message as ListResourcesResponse)) as ListResourcesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListResourcesResponse create() => ListResourcesResponse._();
  ListResourcesResponse createEmptyInstance() => create();
  static $pb.PbList<ListResourcesResponse> createRepeated() => $pb.PbList<ListResourcesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListResourcesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListResourcesResponse>(create);
  static ListResourcesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Resource> get resources => $_getList(0);
}

class Expedition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Expedition', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expeditionId')
    ..e<ExpeditionCategory>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ExpeditionCategory.EXPEDITION_CATEGORY_UNSPECIFIED, valueOf: ExpeditionCategory.valueOf, enumValues: ExpeditionCategory.values)
    ..e<ExpeditionStatus>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: ExpeditionStatus.EXPEDITION_STATUS_UNSPECIFIED, valueOf: ExpeditionStatus.valueOf, enumValues: ExpeditionStatus.values)
    ..aOM<$2.Timestamp>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startedAt', subBuilder: $2.Timestamp.create)
    ..aOM<$3.Duration>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'duration', subBuilder: $3.Duration.create)
    ..aInt64(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'powerCost')
    ..hasRequiredFields = false
  ;

  Expedition._() : super();
  factory Expedition({
    $core.String? expeditionId,
    ExpeditionCategory? category,
    ExpeditionStatus? status,
    $2.Timestamp? startedAt,
    $3.Duration? duration,
    $fixnum.Int64? powerCost,
  }) {
    final _result = create();
    if (expeditionId != null) {
      _result.expeditionId = expeditionId;
    }
    if (category != null) {
      _result.category = category;
    }
    if (status != null) {
      _result.status = status;
    }
    if (startedAt != null) {
      _result.startedAt = startedAt;
    }
    if (duration != null) {
      _result.duration = duration;
    }
    if (powerCost != null) {
      _result.powerCost = powerCost;
    }
    return _result;
  }
  factory Expedition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Expedition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Expedition clone() => Expedition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Expedition copyWith(void Function(Expedition) updates) => super.copyWith((message) => updates(message as Expedition)) as Expedition; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Expedition create() => Expedition._();
  Expedition createEmptyInstance() => create();
  static $pb.PbList<Expedition> createRepeated() => $pb.PbList<Expedition>();
  @$core.pragma('dart2js:noInline')
  static Expedition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Expedition>(create);
  static Expedition? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get expeditionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set expeditionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasExpeditionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpeditionId() => clearField(1);

  @$pb.TagNumber(2)
  ExpeditionCategory get category => $_getN(1);
  @$pb.TagNumber(2)
  set category(ExpeditionCategory v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => clearField(2);

  @$pb.TagNumber(3)
  ExpeditionStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(ExpeditionStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);

  @$pb.TagNumber(10)
  $2.Timestamp get startedAt => $_getN(3);
  @$pb.TagNumber(10)
  set startedAt($2.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasStartedAt() => $_has(3);
  @$pb.TagNumber(10)
  void clearStartedAt() => clearField(10);
  @$pb.TagNumber(10)
  $2.Timestamp ensureStartedAt() => $_ensure(3);

  @$pb.TagNumber(11)
  $3.Duration get duration => $_getN(4);
  @$pb.TagNumber(11)
  set duration($3.Duration v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasDuration() => $_has(4);
  @$pb.TagNumber(11)
  void clearDuration() => clearField(11);
  @$pb.TagNumber(11)
  $3.Duration ensureDuration() => $_ensure(4);

  @$pb.TagNumber(12)
  $fixnum.Int64 get powerCost => $_getI64(5);
  @$pb.TagNumber(12)
  set powerCost($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(12)
  $core.bool hasPowerCost() => $_has(5);
  @$pb.TagNumber(12)
  void clearPowerCost() => clearField(12);
}

class ListExpeditionsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListExpeditionsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerId')
    ..e<ListExpeditionFilter>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expeditionFilter', $pb.PbFieldType.OE, defaultOrMaker: ListExpeditionFilter.LIST_EXPEDITION_FILTER_ALL, valueOf: ListExpeditionFilter.valueOf, enumValues: ListExpeditionFilter.values)
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expeditionIds')
    ..hasRequiredFields = false
  ;

  ListExpeditionsRequest._() : super();
  factory ListExpeditionsRequest({
    $core.String? playerId,
    ListExpeditionFilter? expeditionFilter,
    $core.Iterable<$core.String>? expeditionIds,
  }) {
    final _result = create();
    if (playerId != null) {
      _result.playerId = playerId;
    }
    if (expeditionFilter != null) {
      _result.expeditionFilter = expeditionFilter;
    }
    if (expeditionIds != null) {
      _result.expeditionIds.addAll(expeditionIds);
    }
    return _result;
  }
  factory ListExpeditionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListExpeditionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListExpeditionsRequest clone() => ListExpeditionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListExpeditionsRequest copyWith(void Function(ListExpeditionsRequest) updates) => super.copyWith((message) => updates(message as ListExpeditionsRequest)) as ListExpeditionsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListExpeditionsRequest create() => ListExpeditionsRequest._();
  ListExpeditionsRequest createEmptyInstance() => create();
  static $pb.PbList<ListExpeditionsRequest> createRepeated() => $pb.PbList<ListExpeditionsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListExpeditionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListExpeditionsRequest>(create);
  static ListExpeditionsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get playerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set playerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlayerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayerId() => clearField(1);

  @$pb.TagNumber(2)
  ListExpeditionFilter get expeditionFilter => $_getN(1);
  @$pb.TagNumber(2)
  set expeditionFilter(ListExpeditionFilter v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasExpeditionFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpeditionFilter() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get expeditionIds => $_getList(2);
}

class ListExpeditionsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListExpeditionsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..pc<Expedition>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expeditions', $pb.PbFieldType.PM, subBuilder: Expedition.create)
    ..aOM<PlayerPower>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'power', subBuilder: PlayerPower.create)
    ..hasRequiredFields = false
  ;

  ListExpeditionsResponse._() : super();
  factory ListExpeditionsResponse({
    $core.Iterable<Expedition>? expeditions,
    PlayerPower? power,
  }) {
    final _result = create();
    if (expeditions != null) {
      _result.expeditions.addAll(expeditions);
    }
    if (power != null) {
      _result.power = power;
    }
    return _result;
  }
  factory ListExpeditionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListExpeditionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListExpeditionsResponse clone() => ListExpeditionsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListExpeditionsResponse copyWith(void Function(ListExpeditionsResponse) updates) => super.copyWith((message) => updates(message as ListExpeditionsResponse)) as ListExpeditionsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListExpeditionsResponse create() => ListExpeditionsResponse._();
  ListExpeditionsResponse createEmptyInstance() => create();
  static $pb.PbList<ListExpeditionsResponse> createRepeated() => $pb.PbList<ListExpeditionsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListExpeditionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListExpeditionsResponse>(create);
  static ListExpeditionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Expedition> get expeditions => $_getList(0);

  @$pb.TagNumber(2)
  PlayerPower get power => $_getN(1);
  @$pb.TagNumber(2)
  set power(PlayerPower v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPower() => $_has(1);
  @$pb.TagNumber(2)
  void clearPower() => clearField(2);
  @$pb.TagNumber(2)
  PlayerPower ensurePower() => $_ensure(1);
}

class PlayerPower extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PlayerPower', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'current', $pb.PbFieldType.O3)
    ..aOM<$2.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastChange', subBuilder: $2.Timestamp.create)
    ..aOM<$3.Duration>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'refill', subBuilder: $3.Duration.create)
    ..hasRequiredFields = false
  ;

  PlayerPower._() : super();
  factory PlayerPower({
    $core.int? current,
    $2.Timestamp? lastChange,
    $3.Duration? refill,
  }) {
    final _result = create();
    if (current != null) {
      _result.current = current;
    }
    if (lastChange != null) {
      _result.lastChange = lastChange;
    }
    if (refill != null) {
      _result.refill = refill;
    }
    return _result;
  }
  factory PlayerPower.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerPower.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerPower clone() => PlayerPower()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerPower copyWith(void Function(PlayerPower) updates) => super.copyWith((message) => updates(message as PlayerPower)) as PlayerPower; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PlayerPower create() => PlayerPower._();
  PlayerPower createEmptyInstance() => create();
  static $pb.PbList<PlayerPower> createRepeated() => $pb.PbList<PlayerPower>();
  @$core.pragma('dart2js:noInline')
  static PlayerPower getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerPower>(create);
  static PlayerPower? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get current => $_getIZ(0);
  @$pb.TagNumber(1)
  set current($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCurrent() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrent() => clearField(1);

  @$pb.TagNumber(2)
  $2.Timestamp get lastChange => $_getN(1);
  @$pb.TagNumber(2)
  set lastChange($2.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastChange() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastChange() => clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureLastChange() => $_ensure(1);

  @$pb.TagNumber(3)
  $3.Duration get refill => $_getN(2);
  @$pb.TagNumber(3)
  set refill($3.Duration v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRefill() => $_has(2);
  @$pb.TagNumber(3)
  void clearRefill() => clearField(3);
  @$pb.TagNumber(3)
  $3.Duration ensureRefill() => $_ensure(2);
}

class StartExpeditionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StartExpeditionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expeditionId')
    ..hasRequiredFields = false
  ;

  StartExpeditionRequest._() : super();
  factory StartExpeditionRequest({
    $core.String? playerId,
    $core.String? expeditionId,
  }) {
    final _result = create();
    if (playerId != null) {
      _result.playerId = playerId;
    }
    if (expeditionId != null) {
      _result.expeditionId = expeditionId;
    }
    return _result;
  }
  factory StartExpeditionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartExpeditionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartExpeditionRequest clone() => StartExpeditionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartExpeditionRequest copyWith(void Function(StartExpeditionRequest) updates) => super.copyWith((message) => updates(message as StartExpeditionRequest)) as StartExpeditionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StartExpeditionRequest create() => StartExpeditionRequest._();
  StartExpeditionRequest createEmptyInstance() => create();
  static $pb.PbList<StartExpeditionRequest> createRepeated() => $pb.PbList<StartExpeditionRequest>();
  @$core.pragma('dart2js:noInline')
  static StartExpeditionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartExpeditionRequest>(create);
  static StartExpeditionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get playerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set playerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlayerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayerId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get expeditionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set expeditionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExpeditionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpeditionId() => clearField(2);
}

class StartExpeditionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StartExpeditionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StartExpeditionResponse._() : super();
  factory StartExpeditionResponse() => create();
  factory StartExpeditionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartExpeditionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartExpeditionResponse clone() => StartExpeditionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartExpeditionResponse copyWith(void Function(StartExpeditionResponse) updates) => super.copyWith((message) => updates(message as StartExpeditionResponse)) as StartExpeditionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StartExpeditionResponse create() => StartExpeditionResponse._();
  StartExpeditionResponse createEmptyInstance() => create();
  static $pb.PbList<StartExpeditionResponse> createRepeated() => $pb.PbList<StartExpeditionResponse>();
  @$core.pragma('dart2js:noInline')
  static StartExpeditionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartExpeditionResponse>(create);
  static StartExpeditionResponse? _defaultInstance;
}

class CollectExpeditionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CollectExpeditionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expeditionId')
    ..hasRequiredFields = false
  ;

  CollectExpeditionRequest._() : super();
  factory CollectExpeditionRequest({
    $core.String? playerId,
    $core.String? expeditionId,
  }) {
    final _result = create();
    if (playerId != null) {
      _result.playerId = playerId;
    }
    if (expeditionId != null) {
      _result.expeditionId = expeditionId;
    }
    return _result;
  }
  factory CollectExpeditionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CollectExpeditionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CollectExpeditionRequest clone() => CollectExpeditionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CollectExpeditionRequest copyWith(void Function(CollectExpeditionRequest) updates) => super.copyWith((message) => updates(message as CollectExpeditionRequest)) as CollectExpeditionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CollectExpeditionRequest create() => CollectExpeditionRequest._();
  CollectExpeditionRequest createEmptyInstance() => create();
  static $pb.PbList<CollectExpeditionRequest> createRepeated() => $pb.PbList<CollectExpeditionRequest>();
  @$core.pragma('dart2js:noInline')
  static CollectExpeditionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CollectExpeditionRequest>(create);
  static CollectExpeditionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get playerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set playerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlayerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayerId() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get expeditionId => $_getSZ(1);
  @$pb.TagNumber(3)
  set expeditionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpeditionId() => $_has(1);
  @$pb.TagNumber(3)
  void clearExpeditionId() => clearField(3);
}

class CollectExpeditionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CollectExpeditionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CollectExpeditionResponse._() : super();
  factory CollectExpeditionResponse() => create();
  factory CollectExpeditionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CollectExpeditionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CollectExpeditionResponse clone() => CollectExpeditionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CollectExpeditionResponse copyWith(void Function(CollectExpeditionResponse) updates) => super.copyWith((message) => updates(message as CollectExpeditionResponse)) as CollectExpeditionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CollectExpeditionResponse create() => CollectExpeditionResponse._();
  CollectExpeditionResponse createEmptyInstance() => create();
  static $pb.PbList<CollectExpeditionResponse> createRepeated() => $pb.PbList<CollectExpeditionResponse>();
  @$core.pragma('dart2js:noInline')
  static CollectExpeditionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CollectExpeditionResponse>(create);
  static CollectExpeditionResponse? _defaultInstance;
}
