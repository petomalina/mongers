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
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectType')
    ..hasRequiredFields = false
  ;

  ConnectRequest._() : super();
  factory ConnectRequest({
    $core.String? playerId,
    $core.String? connectType,
  }) {
    final _result = create();
    if (playerId != null) {
      _result.playerId = playerId;
    }
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
  $core.String get playerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set playerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlayerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayerId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get connectType => $_getSZ(1);
  @$pb.TagNumber(2)
  set connectType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectType() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectType() => clearField(2);
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
    ..aOM<ListResourcesStateRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'listResources', subBuilder: ListResourcesStateRequest.create)
    ..aOM<ListExpeditionsRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'listExpeditions', subBuilder: ListExpeditionsRequest.create)
    ..aOM<StartExpeditionRequest>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startExpedition', subBuilder: StartExpeditionRequest.create)
    ..aOM<CollectExpeditionRequest>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'collectExpedition', subBuilder: CollectExpeditionRequest.create)
    ..hasRequiredFields = false
  ;

  ClientPlayMessage._() : super();
  factory ClientPlayMessage({
    ListResourcesStateRequest? listResources,
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
  ListResourcesStateRequest get listResources => $_getN(0);
  @$pb.TagNumber(1)
  set listResources(ListResourcesStateRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasListResources() => $_has(0);
  @$pb.TagNumber(1)
  void clearListResources() => clearField(1);
  @$pb.TagNumber(1)
  ListResourcesStateRequest ensureListResources() => $_ensure(0);

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
    ..aOM<ListResourcesStateResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'listResources', subBuilder: ListResourcesStateResponse.create)
    ..aOM<ListExpeditionsResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'listExpeditions', subBuilder: ListExpeditionsResponse.create)
    ..aOM<StartExpeditionResponse>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startExpedition', subBuilder: StartExpeditionResponse.create)
    ..aOM<CollectExpeditionResponse>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'collectExpedition', subBuilder: CollectExpeditionResponse.create)
    ..hasRequiredFields = false
  ;

  ServerPlayMessage._() : super();
  factory ServerPlayMessage({
    ListResourcesStateResponse? listResources,
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
  ListResourcesStateResponse get listResources => $_getN(0);
  @$pb.TagNumber(1)
  set listResources(ListResourcesStateResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasListResources() => $_has(0);
  @$pb.TagNumber(1)
  void clearListResources() => clearField(1);
  @$pb.TagNumber(1)
  ListResourcesStateResponse ensureListResources() => $_ensure(0);

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
    ..e<ResourceCategory>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ResourceCategory.RESOURCE_CATEGORY_UNSPECIFIED, valueOf: ResourceCategory.valueOf, enumValues: ResourceCategory.values)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..hasRequiredFields = false
  ;

  Resource._() : super();
  factory Resource({
    ResourceCategory? category,
    $fixnum.Int64? value,
  }) {
    final _result = create();
    if (category != null) {
      _result.category = category;
    }
    if (value != null) {
      _result.value = value;
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
  ResourceCategory get category => $_getN(0);
  @$pb.TagNumber(1)
  set category(ResourceCategory v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategory() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get value => $_getI64(1);
  @$pb.TagNumber(2)
  set value($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class ResourceState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResourceState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOM<Resource>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resource', subBuilder: Resource.create)
    ..aOM<$2.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', subBuilder: $2.Timestamp.create)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rpm')
    ..hasRequiredFields = false
  ;

  ResourceState._() : super();
  factory ResourceState({
    Resource? resource,
    $2.Timestamp? timestamp,
    $fixnum.Int64? rpm,
  }) {
    final _result = create();
    if (resource != null) {
      _result.resource = resource;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (rpm != null) {
      _result.rpm = rpm;
    }
    return _result;
  }
  factory ResourceState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceState clone() => ResourceState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceState copyWith(void Function(ResourceState) updates) => super.copyWith((message) => updates(message as ResourceState)) as ResourceState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResourceState create() => ResourceState._();
  ResourceState createEmptyInstance() => create();
  static $pb.PbList<ResourceState> createRepeated() => $pb.PbList<ResourceState>();
  @$core.pragma('dart2js:noInline')
  static ResourceState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceState>(create);
  static ResourceState? _defaultInstance;

  @$pb.TagNumber(1)
  Resource get resource => $_getN(0);
  @$pb.TagNumber(1)
  set resource(Resource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResource() => $_has(0);
  @$pb.TagNumber(1)
  void clearResource() => clearField(1);
  @$pb.TagNumber(1)
  Resource ensureResource() => $_ensure(0);

  @$pb.TagNumber(3)
  $2.Timestamp get timestamp => $_getN(1);
  @$pb.TagNumber(3)
  set timestamp($2.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(1);
  @$pb.TagNumber(3)
  void clearTimestamp() => clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureTimestamp() => $_ensure(1);

  @$pb.TagNumber(4)
  $fixnum.Int64 get rpm => $_getI64(2);
  @$pb.TagNumber(4)
  set rpm($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasRpm() => $_has(2);
  @$pb.TagNumber(4)
  void clearRpm() => clearField(4);
}

class ListResourcesStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListResourcesStateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerId')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ids')
    ..hasRequiredFields = false
  ;

  ListResourcesStateRequest._() : super();
  factory ListResourcesStateRequest({
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
  factory ListResourcesStateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListResourcesStateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListResourcesStateRequest clone() => ListResourcesStateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListResourcesStateRequest copyWith(void Function(ListResourcesStateRequest) updates) => super.copyWith((message) => updates(message as ListResourcesStateRequest)) as ListResourcesStateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListResourcesStateRequest create() => ListResourcesStateRequest._();
  ListResourcesStateRequest createEmptyInstance() => create();
  static $pb.PbList<ListResourcesStateRequest> createRepeated() => $pb.PbList<ListResourcesStateRequest>();
  @$core.pragma('dart2js:noInline')
  static ListResourcesStateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListResourcesStateRequest>(create);
  static ListResourcesStateRequest? _defaultInstance;

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

class ListResourcesStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListResourcesStateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..pc<ResourceState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resources', $pb.PbFieldType.PM, subBuilder: ResourceState.create)
    ..hasRequiredFields = false
  ;

  ListResourcesStateResponse._() : super();
  factory ListResourcesStateResponse({
    $core.Iterable<ResourceState>? resources,
  }) {
    final _result = create();
    if (resources != null) {
      _result.resources.addAll(resources);
    }
    return _result;
  }
  factory ListResourcesStateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListResourcesStateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListResourcesStateResponse clone() => ListResourcesStateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListResourcesStateResponse copyWith(void Function(ListResourcesStateResponse) updates) => super.copyWith((message) => updates(message as ListResourcesStateResponse)) as ListResourcesStateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListResourcesStateResponse create() => ListResourcesStateResponse._();
  ListResourcesStateResponse createEmptyInstance() => create();
  static $pb.PbList<ListResourcesStateResponse> createRepeated() => $pb.PbList<ListResourcesStateResponse>();
  @$core.pragma('dart2js:noInline')
  static ListResourcesStateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListResourcesStateResponse>(create);
  static ListResourcesStateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ResourceState> get resources => $_getList(0);
}

class Expedition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Expedition', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expeditionId')
    ..e<ExpeditionCategory>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ExpeditionCategory.EXPEDITION_CATEGORY_UNSPECIFIED, valueOf: ExpeditionCategory.valueOf, enumValues: ExpeditionCategory.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<$3.Duration>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'baseDuration', subBuilder: $3.Duration.create)
    ..pc<Resource>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cost', $pb.PbFieldType.PM, subBuilder: Resource.create)
    ..pc<Resource>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rewards', $pb.PbFieldType.PM, subBuilder: Resource.create)
    ..e<ResourceCategory>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resourceTarget', $pb.PbFieldType.OE, defaultOrMaker: ResourceCategory.RESOURCE_CATEGORY_UNSPECIFIED, valueOf: ResourceCategory.valueOf, enumValues: ResourceCategory.values)
    ..aOM<$2.Timestamp>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiresAt', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Expedition._() : super();
  factory Expedition({
    $core.String? expeditionId,
    ExpeditionCategory? category,
    $core.String? name,
    $3.Duration? baseDuration,
    $core.Iterable<Resource>? cost,
    $core.Iterable<Resource>? rewards,
    ResourceCategory? resourceTarget,
    $2.Timestamp? expiresAt,
  }) {
    final _result = create();
    if (expeditionId != null) {
      _result.expeditionId = expeditionId;
    }
    if (category != null) {
      _result.category = category;
    }
    if (name != null) {
      _result.name = name;
    }
    if (baseDuration != null) {
      _result.baseDuration = baseDuration;
    }
    if (cost != null) {
      _result.cost.addAll(cost);
    }
    if (rewards != null) {
      _result.rewards.addAll(rewards);
    }
    if (resourceTarget != null) {
      _result.resourceTarget = resourceTarget;
    }
    if (expiresAt != null) {
      _result.expiresAt = expiresAt;
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
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $3.Duration get baseDuration => $_getN(3);
  @$pb.TagNumber(4)
  set baseDuration($3.Duration v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasBaseDuration() => $_has(3);
  @$pb.TagNumber(4)
  void clearBaseDuration() => clearField(4);
  @$pb.TagNumber(4)
  $3.Duration ensureBaseDuration() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<Resource> get cost => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<Resource> get rewards => $_getList(5);

  @$pb.TagNumber(7)
  ResourceCategory get resourceTarget => $_getN(6);
  @$pb.TagNumber(7)
  set resourceTarget(ResourceCategory v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasResourceTarget() => $_has(6);
  @$pb.TagNumber(7)
  void clearResourceTarget() => clearField(7);

  @$pb.TagNumber(10)
  $2.Timestamp get expiresAt => $_getN(7);
  @$pb.TagNumber(10)
  set expiresAt($2.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasExpiresAt() => $_has(7);
  @$pb.TagNumber(10)
  void clearExpiresAt() => clearField(10);
  @$pb.TagNumber(10)
  $2.Timestamp ensureExpiresAt() => $_ensure(7);
}

class ExpeditionState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExpeditionState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1'), createEmptyInstance: create)
    ..aOM<Expedition>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expedition', subBuilder: Expedition.create)
    ..e<ExpeditionStatus>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: ExpeditionStatus.EXPEDITION_STATUS_UNSPECIFIED, valueOf: ExpeditionStatus.valueOf, enumValues: ExpeditionStatus.values)
    ..aOM<$2.Timestamp>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startedAt', subBuilder: $2.Timestamp.create)
    ..aOM<$3.Duration>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'duration', subBuilder: $3.Duration.create)
    ..hasRequiredFields = false
  ;

  ExpeditionState._() : super();
  factory ExpeditionState({
    Expedition? expedition,
    ExpeditionStatus? status,
    $2.Timestamp? startedAt,
    $3.Duration? duration,
  }) {
    final _result = create();
    if (expedition != null) {
      _result.expedition = expedition;
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
    return _result;
  }
  factory ExpeditionState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExpeditionState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExpeditionState clone() => ExpeditionState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExpeditionState copyWith(void Function(ExpeditionState) updates) => super.copyWith((message) => updates(message as ExpeditionState)) as ExpeditionState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExpeditionState create() => ExpeditionState._();
  ExpeditionState createEmptyInstance() => create();
  static $pb.PbList<ExpeditionState> createRepeated() => $pb.PbList<ExpeditionState>();
  @$core.pragma('dart2js:noInline')
  static ExpeditionState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExpeditionState>(create);
  static ExpeditionState? _defaultInstance;

  @$pb.TagNumber(1)
  Expedition get expedition => $_getN(0);
  @$pb.TagNumber(1)
  set expedition(Expedition v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasExpedition() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpedition() => clearField(1);
  @$pb.TagNumber(1)
  Expedition ensureExpedition() => $_ensure(0);

  @$pb.TagNumber(2)
  ExpeditionStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(ExpeditionStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(10)
  $2.Timestamp get startedAt => $_getN(2);
  @$pb.TagNumber(10)
  set startedAt($2.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasStartedAt() => $_has(2);
  @$pb.TagNumber(10)
  void clearStartedAt() => clearField(10);
  @$pb.TagNumber(10)
  $2.Timestamp ensureStartedAt() => $_ensure(2);

  @$pb.TagNumber(11)
  $3.Duration get duration => $_getN(3);
  @$pb.TagNumber(11)
  set duration($3.Duration v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasDuration() => $_has(3);
  @$pb.TagNumber(11)
  void clearDuration() => clearField(11);
  @$pb.TagNumber(11)
  $3.Duration ensureDuration() => $_ensure(3);
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
    ..pc<Expedition>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'availableExpeditions', $pb.PbFieldType.PM, subBuilder: Expedition.create)
    ..pc<ExpeditionState>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expeditionStates', $pb.PbFieldType.PM, subBuilder: ExpeditionState.create)
    ..hasRequiredFields = false
  ;

  ListExpeditionsResponse._() : super();
  factory ListExpeditionsResponse({
    $core.Iterable<Expedition>? availableExpeditions,
    $core.Iterable<ExpeditionState>? expeditionStates,
  }) {
    final _result = create();
    if (availableExpeditions != null) {
      _result.availableExpeditions.addAll(availableExpeditions);
    }
    if (expeditionStates != null) {
      _result.expeditionStates.addAll(expeditionStates);
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
  $core.List<Expedition> get availableExpeditions => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<ExpeditionState> get expeditionStates => $_getList(1);
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

