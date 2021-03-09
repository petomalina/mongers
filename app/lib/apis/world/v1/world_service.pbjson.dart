///
//  Generated code. Do not modify.
//  source: apis/world/v1/world_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use expeditionCategoryDescriptor instead')
const ExpeditionCategory$json = const {
  '1': 'ExpeditionCategory',
  '2': const [
    const {'1': 'EXPEDITION_CATEGORY_UNSPECIFIED', '2': 0},
    const {'1': 'EXPEDITION_CATEGORY_QUICK_SEARCH', '2': 1},
    const {'1': 'EXPEDITION_CATEGORY_NEARBY_EXPLORATION', '2': 2},
    const {'1': 'EXPEDITION_CATEGORY_NEW_HORIZONS', '2': 3},
  ],
};

/// Descriptor for `ExpeditionCategory`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List expeditionCategoryDescriptor = $convert.base64Decode('ChJFeHBlZGl0aW9uQ2F0ZWdvcnkSIwofRVhQRURJVElPTl9DQVRFR09SWV9VTlNQRUNJRklFRBAAEiQKIEVYUEVESVRJT05fQ0FURUdPUllfUVVJQ0tfU0VBUkNIEAESKgomRVhQRURJVElPTl9DQVRFR09SWV9ORUFSQllfRVhQTE9SQVRJT04QAhIkCiBFWFBFRElUSU9OX0NBVEVHT1JZX05FV19IT1JJWk9OUxAD');
@$core.Deprecated('Use expeditionStatusDescriptor instead')
const ExpeditionStatus$json = const {
  '1': 'ExpeditionStatus',
  '2': const [
    const {'1': 'EXPEDITION_STATUS_UNSPECIFIED', '2': 0},
    const {'1': 'EXPEDITION_STATUS_AVAILABLE', '2': 1},
    const {'1': 'EXPEDITION_STATUS_IN_PROGRESS', '2': 2},
    const {'1': 'EXPEDITION_STATUS_DONE', '2': 3},
    const {'1': 'EXPEDITION_STATUS_FAILED', '2': 100},
  ],
};

/// Descriptor for `ExpeditionStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List expeditionStatusDescriptor = $convert.base64Decode('ChBFeHBlZGl0aW9uU3RhdHVzEiEKHUVYUEVESVRJT05fU1RBVFVTX1VOU1BFQ0lGSUVEEAASHwobRVhQRURJVElPTl9TVEFUVVNfQVZBSUxBQkxFEAESIQodRVhQRURJVElPTl9TVEFUVVNfSU5fUFJPR1JFU1MQAhIaChZFWFBFRElUSU9OX1NUQVRVU19ET05FEAMSHAoYRVhQRURJVElPTl9TVEFUVVNfRkFJTEVEEGQ=');
@$core.Deprecated('Use listExpeditionFilterDescriptor instead')
const ListExpeditionFilter$json = const {
  '1': 'ListExpeditionFilter',
  '2': const [
    const {'1': 'LIST_EXPEDITION_FILTER_ALL', '2': 0},
    const {'1': 'LIST_EXPEDITION_FILTER_PLAYER_ONLY', '2': 1},
    const {'1': 'LIST_EXPEDITION_FILTER_AVAILABLE_ONLY', '2': 2},
  ],
};

/// Descriptor for `ListExpeditionFilter`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List listExpeditionFilterDescriptor = $convert.base64Decode('ChRMaXN0RXhwZWRpdGlvbkZpbHRlchIeChpMSVNUX0VYUEVESVRJT05fRklMVEVSX0FMTBAAEiYKIkxJU1RfRVhQRURJVElPTl9GSUxURVJfUExBWUVSX09OTFkQARIpCiVMSVNUX0VYUEVESVRJT05fRklMVEVSX0FWQUlMQUJMRV9PTkxZEAI=');
@$core.Deprecated('Use connectRequestDescriptor instead')
const ConnectRequest$json = const {
  '1': 'ConnectRequest',
  '2': const [
    const {'1': 'connect_type', '3': 1, '4': 1, '5': 9, '10': 'connectType'},
  ],
};

/// Descriptor for `ConnectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectRequestDescriptor = $convert.base64Decode('Cg5Db25uZWN0UmVxdWVzdBIhCgxjb25uZWN0X3R5cGUYASABKAlSC2Nvbm5lY3RUeXBl');
@$core.Deprecated('Use connectResponseDescriptor instead')
const ConnectResponse$json = const {
  '1': 'ConnectResponse',
  '2': const [
    const {'1': 'approved', '3': 1, '4': 1, '5': 8, '10': 'approved'},
  ],
};

/// Descriptor for `ConnectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectResponseDescriptor = $convert.base64Decode('Cg9Db25uZWN0UmVzcG9uc2USGgoIYXBwcm92ZWQYASABKAhSCGFwcHJvdmVk');
@$core.Deprecated('Use clientPlayMessageDescriptor instead')
const ClientPlayMessage$json = const {
  '1': 'ClientPlayMessage',
  '2': const [
    const {'1': 'list_resources', '3': 1, '4': 1, '5': 11, '6': '.v1.ListResourcesRequest', '9': 0, '10': 'listResources'},
    const {'1': 'list_expeditions', '3': 2, '4': 1, '5': 11, '6': '.v1.ListExpeditionsRequest', '9': 0, '10': 'listExpeditions'},
    const {'1': 'start_expedition', '3': 3, '4': 1, '5': 11, '6': '.v1.StartExpeditionRequest', '9': 0, '10': 'startExpedition'},
    const {'1': 'collect_expedition', '3': 4, '4': 1, '5': 11, '6': '.v1.CollectExpeditionRequest', '9': 0, '10': 'collectExpedition'},
  ],
  '8': const [
    const {'1': 'req'},
  ],
};

/// Descriptor for `ClientPlayMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientPlayMessageDescriptor = $convert.base64Decode('ChFDbGllbnRQbGF5TWVzc2FnZRJBCg5saXN0X3Jlc291cmNlcxgBIAEoCzIYLnYxLkxpc3RSZXNvdXJjZXNSZXF1ZXN0SABSDWxpc3RSZXNvdXJjZXMSRwoQbGlzdF9leHBlZGl0aW9ucxgCIAEoCzIaLnYxLkxpc3RFeHBlZGl0aW9uc1JlcXVlc3RIAFIPbGlzdEV4cGVkaXRpb25zEkcKEHN0YXJ0X2V4cGVkaXRpb24YAyABKAsyGi52MS5TdGFydEV4cGVkaXRpb25SZXF1ZXN0SABSD3N0YXJ0RXhwZWRpdGlvbhJNChJjb2xsZWN0X2V4cGVkaXRpb24YBCABKAsyHC52MS5Db2xsZWN0RXhwZWRpdGlvblJlcXVlc3RIAFIRY29sbGVjdEV4cGVkaXRpb25CBQoDcmVx');
@$core.Deprecated('Use serverPlayMessageDescriptor instead')
const ServerPlayMessage$json = const {
  '1': 'ServerPlayMessage',
  '2': const [
    const {'1': 'list_resources', '3': 1, '4': 1, '5': 11, '6': '.v1.ListResourcesResponse', '9': 0, '10': 'listResources'},
    const {'1': 'list_expeditions', '3': 2, '4': 1, '5': 11, '6': '.v1.ListExpeditionsResponse', '9': 0, '10': 'listExpeditions'},
    const {'1': 'start_expedition', '3': 3, '4': 1, '5': 11, '6': '.v1.StartExpeditionResponse', '9': 0, '10': 'startExpedition'},
    const {'1': 'collect_expedition', '3': 4, '4': 1, '5': 11, '6': '.v1.CollectExpeditionResponse', '9': 0, '10': 'collectExpedition'},
  ],
  '8': const [
    const {'1': 'res'},
  ],
};

/// Descriptor for `ServerPlayMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverPlayMessageDescriptor = $convert.base64Decode('ChFTZXJ2ZXJQbGF5TWVzc2FnZRJCCg5saXN0X3Jlc291cmNlcxgBIAEoCzIZLnYxLkxpc3RSZXNvdXJjZXNSZXNwb25zZUgAUg1saXN0UmVzb3VyY2VzEkgKEGxpc3RfZXhwZWRpdGlvbnMYAiABKAsyGy52MS5MaXN0RXhwZWRpdGlvbnNSZXNwb25zZUgAUg9saXN0RXhwZWRpdGlvbnMSSAoQc3RhcnRfZXhwZWRpdGlvbhgDIAEoCzIbLnYxLlN0YXJ0RXhwZWRpdGlvblJlc3BvbnNlSABSD3N0YXJ0RXhwZWRpdGlvbhJOChJjb2xsZWN0X2V4cGVkaXRpb24YBCABKAsyHS52MS5Db2xsZWN0RXhwZWRpdGlvblJlc3BvbnNlSABSEWNvbGxlY3RFeHBlZGl0aW9uQgUKA3Jlcw==');
@$core.Deprecated('Use worldDescriptor instead')
const World$json = const {
  '1': 'World',
  '2': const [
    const {'1': 'world_id', '3': 1, '4': 1, '5': 9, '10': 'worldId'},
    const {'1': 'world_name', '3': 2, '4': 1, '5': 9, '10': 'worldName'},
    const {'1': 'player_count', '3': 10, '4': 1, '5': 5, '10': 'playerCount'},
  ],
};

/// Descriptor for `World`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List worldDescriptor = $convert.base64Decode('CgVXb3JsZBIZCgh3b3JsZF9pZBgBIAEoCVIHd29ybGRJZBIdCgp3b3JsZF9uYW1lGAIgASgJUgl3b3JsZE5hbWUSIQoMcGxheWVyX2NvdW50GAogASgFUgtwbGF5ZXJDb3VudA==');
@$core.Deprecated('Use playerDescriptor instead')
const Player$json = const {
  '1': 'Player',
  '2': const [
    const {'1': 'player_id', '3': 1, '4': 1, '5': 9, '10': 'playerId'},
    const {'1': 'player_name', '3': 2, '4': 1, '5': 9, '10': 'playerName'},
  ],
};

/// Descriptor for `Player`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playerDescriptor = $convert.base64Decode('CgZQbGF5ZXISGwoJcGxheWVyX2lkGAEgASgJUghwbGF5ZXJJZBIfCgtwbGF5ZXJfbmFtZRgCIAEoCVIKcGxheWVyTmFtZQ==');
@$core.Deprecated('Use resourceDescriptor instead')
const Resource$json = const {
  '1': 'Resource',
  '2': const [
    const {'1': 'resource_id', '3': 1, '4': 1, '5': 9, '10': 'resourceId'},
    const {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
    const {'1': 'timestamp', '3': 3, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'rpm', '3': 4, '4': 1, '5': 3, '10': 'rpm'},
  ],
};

/// Descriptor for `Resource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceDescriptor = $convert.base64Decode('CghSZXNvdXJjZRIfCgtyZXNvdXJjZV9pZBgBIAEoCVIKcmVzb3VyY2VJZBIUCgV2YWx1ZRgCIAEoA1IFdmFsdWUSHAoJdGltZXN0YW1wGAMgASgDUgl0aW1lc3RhbXASEAoDcnBtGAQgASgDUgNycG0=');
@$core.Deprecated('Use listResourcesRequestDescriptor instead')
const ListResourcesRequest$json = const {
  '1': 'ListResourcesRequest',
  '2': const [
    const {'1': 'player_id', '3': 1, '4': 1, '5': 9, '10': 'playerId'},
    const {'1': 'ids', '3': 2, '4': 3, '5': 9, '10': 'ids'},
  ],
};

/// Descriptor for `ListResourcesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listResourcesRequestDescriptor = $convert.base64Decode('ChRMaXN0UmVzb3VyY2VzUmVxdWVzdBIbCglwbGF5ZXJfaWQYASABKAlSCHBsYXllcklkEhAKA2lkcxgCIAMoCVIDaWRz');
@$core.Deprecated('Use listResourcesResponseDescriptor instead')
const ListResourcesResponse$json = const {
  '1': 'ListResourcesResponse',
  '2': const [
    const {'1': 'resources', '3': 1, '4': 3, '5': 11, '6': '.v1.Resource', '10': 'resources'},
  ],
};

/// Descriptor for `ListResourcesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listResourcesResponseDescriptor = $convert.base64Decode('ChVMaXN0UmVzb3VyY2VzUmVzcG9uc2USKgoJcmVzb3VyY2VzGAEgAygLMgwudjEuUmVzb3VyY2VSCXJlc291cmNlcw==');
@$core.Deprecated('Use expeditionDescriptor instead')
const Expedition$json = const {
  '1': 'Expedition',
  '2': const [
    const {'1': 'expedition_id', '3': 1, '4': 1, '5': 9, '10': 'expeditionId'},
    const {'1': 'category', '3': 2, '4': 1, '5': 14, '6': '.v1.ExpeditionCategory', '10': 'category'},
    const {'1': 'status', '3': 3, '4': 1, '5': 14, '6': '.v1.ExpeditionStatus', '10': 'status'},
    const {'1': 'started_at', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startedAt'},
    const {'1': 'duration', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'duration'},
    const {'1': 'power_cost', '3': 12, '4': 1, '5': 3, '10': 'powerCost'},
  ],
};

/// Descriptor for `Expedition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List expeditionDescriptor = $convert.base64Decode('CgpFeHBlZGl0aW9uEiMKDWV4cGVkaXRpb25faWQYASABKAlSDGV4cGVkaXRpb25JZBIyCghjYXRlZ29yeRgCIAEoDjIWLnYxLkV4cGVkaXRpb25DYXRlZ29yeVIIY2F0ZWdvcnkSLAoGc3RhdHVzGAMgASgOMhQudjEuRXhwZWRpdGlvblN0YXR1c1IGc3RhdHVzEjkKCnN0YXJ0ZWRfYXQYCiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUglzdGFydGVkQXQSNQoIZHVyYXRpb24YCyABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SCGR1cmF0aW9uEh0KCnBvd2VyX2Nvc3QYDCABKANSCXBvd2VyQ29zdA==');
@$core.Deprecated('Use listExpeditionsRequestDescriptor instead')
const ListExpeditionsRequest$json = const {
  '1': 'ListExpeditionsRequest',
  '2': const [
    const {'1': 'player_id', '3': 1, '4': 1, '5': 9, '10': 'playerId'},
    const {'1': 'expedition_filter', '3': 2, '4': 1, '5': 14, '6': '.v1.ListExpeditionFilter', '10': 'expeditionFilter'},
    const {'1': 'expedition_ids', '3': 3, '4': 3, '5': 9, '10': 'expeditionIds'},
  ],
};

/// Descriptor for `ListExpeditionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listExpeditionsRequestDescriptor = $convert.base64Decode('ChZMaXN0RXhwZWRpdGlvbnNSZXF1ZXN0EhsKCXBsYXllcl9pZBgBIAEoCVIIcGxheWVySWQSRQoRZXhwZWRpdGlvbl9maWx0ZXIYAiABKA4yGC52MS5MaXN0RXhwZWRpdGlvbkZpbHRlclIQZXhwZWRpdGlvbkZpbHRlchIlCg5leHBlZGl0aW9uX2lkcxgDIAMoCVINZXhwZWRpdGlvbklkcw==');
@$core.Deprecated('Use listExpeditionsResponseDescriptor instead')
const ListExpeditionsResponse$json = const {
  '1': 'ListExpeditionsResponse',
  '2': const [
    const {'1': 'expeditions', '3': 1, '4': 3, '5': 11, '6': '.v1.Expedition', '10': 'expeditions'},
    const {'1': 'power', '3': 2, '4': 1, '5': 11, '6': '.v1.PlayerPower', '10': 'power'},
  ],
};

/// Descriptor for `ListExpeditionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listExpeditionsResponseDescriptor = $convert.base64Decode('ChdMaXN0RXhwZWRpdGlvbnNSZXNwb25zZRIwCgtleHBlZGl0aW9ucxgBIAMoCzIOLnYxLkV4cGVkaXRpb25SC2V4cGVkaXRpb25zEiUKBXBvd2VyGAIgASgLMg8udjEuUGxheWVyUG93ZXJSBXBvd2Vy');
@$core.Deprecated('Use playerPowerDescriptor instead')
const PlayerPower$json = const {
  '1': 'PlayerPower',
  '2': const [
    const {'1': 'current', '3': 1, '4': 1, '5': 5, '10': 'current'},
    const {'1': 'last_change', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastChange'},
    const {'1': 'refill', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'refill'},
  ],
};

/// Descriptor for `PlayerPower`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playerPowerDescriptor = $convert.base64Decode('CgtQbGF5ZXJQb3dlchIYCgdjdXJyZW50GAEgASgFUgdjdXJyZW50EjsKC2xhc3RfY2hhbmdlGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKbGFzdENoYW5nZRIxCgZyZWZpbGwYAyABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SBnJlZmlsbA==');
@$core.Deprecated('Use startExpeditionRequestDescriptor instead')
const StartExpeditionRequest$json = const {
  '1': 'StartExpeditionRequest',
  '2': const [
    const {'1': 'player_id', '3': 1, '4': 1, '5': 9, '10': 'playerId'},
    const {'1': 'expedition_id', '3': 2, '4': 1, '5': 9, '10': 'expeditionId'},
  ],
};

/// Descriptor for `StartExpeditionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startExpeditionRequestDescriptor = $convert.base64Decode('ChZTdGFydEV4cGVkaXRpb25SZXF1ZXN0EhsKCXBsYXllcl9pZBgBIAEoCVIIcGxheWVySWQSIwoNZXhwZWRpdGlvbl9pZBgCIAEoCVIMZXhwZWRpdGlvbklk');
@$core.Deprecated('Use startExpeditionResponseDescriptor instead')
const StartExpeditionResponse$json = const {
  '1': 'StartExpeditionResponse',
};

/// Descriptor for `StartExpeditionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startExpeditionResponseDescriptor = $convert.base64Decode('ChdTdGFydEV4cGVkaXRpb25SZXNwb25zZQ==');
@$core.Deprecated('Use collectExpeditionRequestDescriptor instead')
const CollectExpeditionRequest$json = const {
  '1': 'CollectExpeditionRequest',
  '2': const [
    const {'1': 'player_id', '3': 1, '4': 1, '5': 9, '10': 'playerId'},
    const {'1': 'expedition_id', '3': 3, '4': 1, '5': 9, '10': 'expeditionId'},
  ],
};

/// Descriptor for `CollectExpeditionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectExpeditionRequestDescriptor = $convert.base64Decode('ChhDb2xsZWN0RXhwZWRpdGlvblJlcXVlc3QSGwoJcGxheWVyX2lkGAEgASgJUghwbGF5ZXJJZBIjCg1leHBlZGl0aW9uX2lkGAMgASgJUgxleHBlZGl0aW9uSWQ=');
@$core.Deprecated('Use collectExpeditionResponseDescriptor instead')
const CollectExpeditionResponse$json = const {
  '1': 'CollectExpeditionResponse',
};

/// Descriptor for `CollectExpeditionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectExpeditionResponseDescriptor = $convert.base64Decode('ChlDb2xsZWN0RXhwZWRpdGlvblJlc3BvbnNl');
