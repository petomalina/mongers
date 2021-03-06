///
//  Generated code. Do not modify.
//  source: apis/world/v1/world_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use resourceCategoryDescriptor instead')
const ResourceCategory$json = const {
  '1': 'ResourceCategory',
  '2': const [
    const {'1': 'RESOURCE_CATEGORY_UNSPECIFIED', '2': 0},
    const {'1': 'RESOURCE_CATEGORY_POWER', '2': 1},
    const {'1': 'RESOURCE_CATEGORY_MONEY', '2': 2},
    const {'1': 'RESOURCE_CATEGORY_IRON', '2': 3},
    const {'1': 'RESOURCE_CATEGORY_CLAY', '2': 4},
    const {'1': 'RESOURCE_CATEGORY_OIL', '2': 5},
    const {'1': 'RESOURCE_CATEGORY_EXPERIENCE', '2': 100},
  ],
};

/// Descriptor for `ResourceCategory`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List resourceCategoryDescriptor = $convert.base64Decode('ChBSZXNvdXJjZUNhdGVnb3J5EiEKHVJFU09VUkNFX0NBVEVHT1JZX1VOU1BFQ0lGSUVEEAASGwoXUkVTT1VSQ0VfQ0FURUdPUllfUE9XRVIQARIbChdSRVNPVVJDRV9DQVRFR09SWV9NT05FWRACEhoKFlJFU09VUkNFX0NBVEVHT1JZX0lST04QAxIaChZSRVNPVVJDRV9DQVRFR09SWV9DTEFZEAQSGQoVUkVTT1VSQ0VfQ0FURUdPUllfT0lMEAUSIAocUkVTT1VSQ0VfQ0FURUdPUllfRVhQRVJJRU5DRRBk');
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
    const {'1': 'player_id', '3': 1, '4': 1, '5': 9, '10': 'playerId'},
    const {'1': 'connect_type', '3': 2, '4': 1, '5': 9, '10': 'connectType'},
  ],
};

/// Descriptor for `ConnectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectRequestDescriptor = $convert.base64Decode('Cg5Db25uZWN0UmVxdWVzdBIbCglwbGF5ZXJfaWQYASABKAlSCHBsYXllcklkEiEKDGNvbm5lY3RfdHlwZRgCIAEoCVILY29ubmVjdFR5cGU=');
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
    const {'1': 'list_resources', '3': 1, '4': 1, '5': 11, '6': '.v1.ListResourcesStateRequest', '9': 0, '10': 'listResources'},
    const {'1': 'list_expeditions', '3': 2, '4': 1, '5': 11, '6': '.v1.ListExpeditionsRequest', '9': 0, '10': 'listExpeditions'},
    const {'1': 'start_expedition', '3': 3, '4': 1, '5': 11, '6': '.v1.StartExpeditionRequest', '9': 0, '10': 'startExpedition'},
    const {'1': 'collect_expedition', '3': 4, '4': 1, '5': 11, '6': '.v1.CollectExpeditionRequest', '9': 0, '10': 'collectExpedition'},
  ],
  '8': const [
    const {'1': 'req'},
  ],
};

/// Descriptor for `ClientPlayMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientPlayMessageDescriptor = $convert.base64Decode('ChFDbGllbnRQbGF5TWVzc2FnZRJGCg5saXN0X3Jlc291cmNlcxgBIAEoCzIdLnYxLkxpc3RSZXNvdXJjZXNTdGF0ZVJlcXVlc3RIAFINbGlzdFJlc291cmNlcxJHChBsaXN0X2V4cGVkaXRpb25zGAIgASgLMhoudjEuTGlzdEV4cGVkaXRpb25zUmVxdWVzdEgAUg9saXN0RXhwZWRpdGlvbnMSRwoQc3RhcnRfZXhwZWRpdGlvbhgDIAEoCzIaLnYxLlN0YXJ0RXhwZWRpdGlvblJlcXVlc3RIAFIPc3RhcnRFeHBlZGl0aW9uEk0KEmNvbGxlY3RfZXhwZWRpdGlvbhgEIAEoCzIcLnYxLkNvbGxlY3RFeHBlZGl0aW9uUmVxdWVzdEgAUhFjb2xsZWN0RXhwZWRpdGlvbkIFCgNyZXE=');
@$core.Deprecated('Use serverPlayMessageDescriptor instead')
const ServerPlayMessage$json = const {
  '1': 'ServerPlayMessage',
  '2': const [
    const {'1': 'list_resources', '3': 1, '4': 1, '5': 11, '6': '.v1.ListResourcesStateResponse', '9': 0, '10': 'listResources'},
    const {'1': 'list_expeditions', '3': 2, '4': 1, '5': 11, '6': '.v1.ListExpeditionsResponse', '9': 0, '10': 'listExpeditions'},
    const {'1': 'start_expedition', '3': 3, '4': 1, '5': 11, '6': '.v1.StartExpeditionResponse', '9': 0, '10': 'startExpedition'},
    const {'1': 'collect_expedition', '3': 4, '4': 1, '5': 11, '6': '.v1.CollectExpeditionResponse', '9': 0, '10': 'collectExpedition'},
  ],
  '8': const [
    const {'1': 'res'},
  ],
};

/// Descriptor for `ServerPlayMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverPlayMessageDescriptor = $convert.base64Decode('ChFTZXJ2ZXJQbGF5TWVzc2FnZRJHCg5saXN0X3Jlc291cmNlcxgBIAEoCzIeLnYxLkxpc3RSZXNvdXJjZXNTdGF0ZVJlc3BvbnNlSABSDWxpc3RSZXNvdXJjZXMSSAoQbGlzdF9leHBlZGl0aW9ucxgCIAEoCzIbLnYxLkxpc3RFeHBlZGl0aW9uc1Jlc3BvbnNlSABSD2xpc3RFeHBlZGl0aW9ucxJIChBzdGFydF9leHBlZGl0aW9uGAMgASgLMhsudjEuU3RhcnRFeHBlZGl0aW9uUmVzcG9uc2VIAFIPc3RhcnRFeHBlZGl0aW9uEk4KEmNvbGxlY3RfZXhwZWRpdGlvbhgEIAEoCzIdLnYxLkNvbGxlY3RFeHBlZGl0aW9uUmVzcG9uc2VIAFIRY29sbGVjdEV4cGVkaXRpb25CBQoDcmVz');
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
  ],
};

/// Descriptor for `Resource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceDescriptor = $convert.base64Decode('CghSZXNvdXJjZRIfCgtyZXNvdXJjZV9pZBgBIAEoCVIKcmVzb3VyY2VJZBIUCgV2YWx1ZRgCIAEoA1IFdmFsdWU=');
@$core.Deprecated('Use resourceStateDescriptor instead')
const ResourceState$json = const {
  '1': 'ResourceState',
  '2': const [
    const {'1': 'resource', '3': 1, '4': 1, '5': 11, '6': '.v1.Resource', '10': 'resource'},
    const {'1': 'timestamp', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
    const {'1': 'rpm', '3': 4, '4': 1, '5': 3, '10': 'rpm'},
  ],
};

/// Descriptor for `ResourceState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceStateDescriptor = $convert.base64Decode('Cg1SZXNvdXJjZVN0YXRlEigKCHJlc291cmNlGAEgASgLMgwudjEuUmVzb3VyY2VSCHJlc291cmNlEjgKCXRpbWVzdGFtcBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXRpbWVzdGFtcBIQCgNycG0YBCABKANSA3JwbQ==');
@$core.Deprecated('Use listResourcesStateRequestDescriptor instead')
const ListResourcesStateRequest$json = const {
  '1': 'ListResourcesStateRequest',
  '2': const [
    const {'1': 'player_id', '3': 1, '4': 1, '5': 9, '10': 'playerId'},
    const {'1': 'ids', '3': 2, '4': 3, '5': 9, '10': 'ids'},
  ],
};

/// Descriptor for `ListResourcesStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listResourcesStateRequestDescriptor = $convert.base64Decode('ChlMaXN0UmVzb3VyY2VzU3RhdGVSZXF1ZXN0EhsKCXBsYXllcl9pZBgBIAEoCVIIcGxheWVySWQSEAoDaWRzGAIgAygJUgNpZHM=');
@$core.Deprecated('Use listResourcesStateResponseDescriptor instead')
const ListResourcesStateResponse$json = const {
  '1': 'ListResourcesStateResponse',
  '2': const [
    const {'1': 'resources', '3': 1, '4': 3, '5': 11, '6': '.v1.ListResourcesStateResponse.ResourcesEntry', '10': 'resources'},
  ],
  '3': const [ListResourcesStateResponse_ResourcesEntry$json],
};

@$core.Deprecated('Use listResourcesStateResponseDescriptor instead')
const ListResourcesStateResponse_ResourcesEntry$json = const {
  '1': 'ResourcesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.v1.ResourceState', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ListResourcesStateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listResourcesStateResponseDescriptor = $convert.base64Decode('ChpMaXN0UmVzb3VyY2VzU3RhdGVSZXNwb25zZRJLCglyZXNvdXJjZXMYASADKAsyLS52MS5MaXN0UmVzb3VyY2VzU3RhdGVSZXNwb25zZS5SZXNvdXJjZXNFbnRyeVIJcmVzb3VyY2VzGk8KDlJlc291cmNlc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EicKBXZhbHVlGAIgASgLMhEudjEuUmVzb3VyY2VTdGF0ZVIFdmFsdWU6AjgB');
@$core.Deprecated('Use expeditionDescriptor instead')
const Expedition$json = const {
  '1': 'Expedition',
  '2': const [
    const {'1': 'expedition_id', '3': 1, '4': 1, '5': 9, '10': 'expeditionId'},
    const {'1': 'category', '3': 2, '4': 1, '5': 14, '6': '.v1.ExpeditionCategory', '10': 'category'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'base_duration', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'baseDuration'},
    const {'1': 'cost', '3': 5, '4': 3, '5': 11, '6': '.v1.Resource', '10': 'cost'},
    const {'1': 'rewards', '3': 6, '4': 3, '5': 11, '6': '.v1.Resource', '10': 'rewards'},
    const {'1': 'resource_target', '3': 7, '4': 1, '5': 14, '6': '.v1.ResourceCategory', '10': 'resourceTarget'},
    const {'1': 'expires_at', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'expiresAt'},
  ],
};

/// Descriptor for `Expedition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List expeditionDescriptor = $convert.base64Decode('CgpFeHBlZGl0aW9uEiMKDWV4cGVkaXRpb25faWQYASABKAlSDGV4cGVkaXRpb25JZBIyCghjYXRlZ29yeRgCIAEoDjIWLnYxLkV4cGVkaXRpb25DYXRlZ29yeVIIY2F0ZWdvcnkSEgoEbmFtZRgDIAEoCVIEbmFtZRI+Cg1iYXNlX2R1cmF0aW9uGAQgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uUgxiYXNlRHVyYXRpb24SIAoEY29zdBgFIAMoCzIMLnYxLlJlc291cmNlUgRjb3N0EiYKB3Jld2FyZHMYBiADKAsyDC52MS5SZXNvdXJjZVIHcmV3YXJkcxI9Cg9yZXNvdXJjZV90YXJnZXQYByABKA4yFC52MS5SZXNvdXJjZUNhdGVnb3J5Ug5yZXNvdXJjZVRhcmdldBI5CgpleHBpcmVzX2F0GAogASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJZXhwaXJlc0F0');
@$core.Deprecated('Use expeditionStateDescriptor instead')
const ExpeditionState$json = const {
  '1': 'ExpeditionState',
  '2': const [
    const {'1': 'expedition', '3': 1, '4': 1, '5': 11, '6': '.v1.Expedition', '10': 'expedition'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.v1.ExpeditionStatus', '10': 'status'},
    const {'1': 'started_at', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startedAt'},
    const {'1': 'duration', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'duration'},
  ],
};

/// Descriptor for `ExpeditionState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List expeditionStateDescriptor = $convert.base64Decode('Cg9FeHBlZGl0aW9uU3RhdGUSLgoKZXhwZWRpdGlvbhgBIAEoCzIOLnYxLkV4cGVkaXRpb25SCmV4cGVkaXRpb24SLAoGc3RhdHVzGAIgASgOMhQudjEuRXhwZWRpdGlvblN0YXR1c1IGc3RhdHVzEjkKCnN0YXJ0ZWRfYXQYCiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUglzdGFydGVkQXQSNQoIZHVyYXRpb24YCyABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SCGR1cmF0aW9u');
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
    const {'1': 'available_expeditions', '3': 1, '4': 3, '5': 11, '6': '.v1.ListExpeditionsResponse.AvailableExpeditionsEntry', '10': 'availableExpeditions'},
    const {'1': 'expedition_states', '3': 2, '4': 3, '5': 11, '6': '.v1.ListExpeditionsResponse.ExpeditionStatesEntry', '10': 'expeditionStates'},
  ],
  '3': const [ListExpeditionsResponse_AvailableExpeditionsEntry$json, ListExpeditionsResponse_ExpeditionStatesEntry$json],
};

@$core.Deprecated('Use listExpeditionsResponseDescriptor instead')
const ListExpeditionsResponse_AvailableExpeditionsEntry$json = const {
  '1': 'AvailableExpeditionsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.v1.Expedition', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use listExpeditionsResponseDescriptor instead')
const ListExpeditionsResponse_ExpeditionStatesEntry$json = const {
  '1': 'ExpeditionStatesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.v1.ExpeditionState', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ListExpeditionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listExpeditionsResponseDescriptor = $convert.base64Decode('ChdMaXN0RXhwZWRpdGlvbnNSZXNwb25zZRJqChVhdmFpbGFibGVfZXhwZWRpdGlvbnMYASADKAsyNS52MS5MaXN0RXhwZWRpdGlvbnNSZXNwb25zZS5BdmFpbGFibGVFeHBlZGl0aW9uc0VudHJ5UhRhdmFpbGFibGVFeHBlZGl0aW9ucxJeChFleHBlZGl0aW9uX3N0YXRlcxgCIAMoCzIxLnYxLkxpc3RFeHBlZGl0aW9uc1Jlc3BvbnNlLkV4cGVkaXRpb25TdGF0ZXNFbnRyeVIQZXhwZWRpdGlvblN0YXRlcxpXChlBdmFpbGFibGVFeHBlZGl0aW9uc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EiQKBXZhbHVlGAIgASgLMg4udjEuRXhwZWRpdGlvblIFdmFsdWU6AjgBGlgKFUV4cGVkaXRpb25TdGF0ZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIpCgV2YWx1ZRgCIAEoCzITLnYxLkV4cGVkaXRpb25TdGF0ZVIFdmFsdWU6AjgB');
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
