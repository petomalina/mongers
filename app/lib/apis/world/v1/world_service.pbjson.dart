///
//  Generated code. Do not modify.
//  source: apis/world/v1/world_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
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
    const {'1': 'resources', '3': 1, '4': 1, '5': 11, '6': '.v1.ResourcesRequest', '9': 0, '10': 'resources'},
  ],
  '8': const [
    const {'1': 'req'},
  ],
};

/// Descriptor for `ClientPlayMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientPlayMessageDescriptor = $convert.base64Decode('ChFDbGllbnRQbGF5TWVzc2FnZRI0CglyZXNvdXJjZXMYASABKAsyFC52MS5SZXNvdXJjZXNSZXF1ZXN0SABSCXJlc291cmNlc0IFCgNyZXE=');
@$core.Deprecated('Use serverPlayMessageDescriptor instead')
const ServerPlayMessage$json = const {
  '1': 'ServerPlayMessage',
  '2': const [
    const {'1': 'resources', '3': 2, '4': 1, '5': 11, '6': '.v1.ResourcesResponse', '9': 0, '10': 'resources'},
  ],
  '8': const [
    const {'1': 'res'},
  ],
};

/// Descriptor for `ServerPlayMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverPlayMessageDescriptor = $convert.base64Decode('ChFTZXJ2ZXJQbGF5TWVzc2FnZRI1CglyZXNvdXJjZXMYAiABKAsyFS52MS5SZXNvdXJjZXNSZXNwb25zZUgAUglyZXNvdXJjZXNCBQoDcmVz');
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
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
    const {'1': 'timestamp', '3': 3, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'rpm', '3': 4, '4': 1, '5': 3, '10': 'rpm'},
  ],
};

/// Descriptor for `Resource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceDescriptor = $convert.base64Decode('CghSZXNvdXJjZRIOCgJpZBgBIAEoCVICaWQSFAoFdmFsdWUYAiABKANSBXZhbHVlEhwKCXRpbWVzdGFtcBgDIAEoA1IJdGltZXN0YW1wEhAKA3JwbRgEIAEoA1IDcnBt');
@$core.Deprecated('Use resourcesRequestDescriptor instead')
const ResourcesRequest$json = const {
  '1': 'ResourcesRequest',
  '2': const [
    const {'1': 'player_id', '3': 1, '4': 1, '5': 9, '10': 'playerId'},
    const {'1': 'ids', '3': 2, '4': 3, '5': 9, '10': 'ids'},
  ],
};

/// Descriptor for `ResourcesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourcesRequestDescriptor = $convert.base64Decode('ChBSZXNvdXJjZXNSZXF1ZXN0EhsKCXBsYXllcl9pZBgBIAEoCVIIcGxheWVySWQSEAoDaWRzGAIgAygJUgNpZHM=');
@$core.Deprecated('Use resourcesResponseDescriptor instead')
const ResourcesResponse$json = const {
  '1': 'ResourcesResponse',
  '2': const [
    const {'1': 'resources', '3': 1, '4': 3, '5': 11, '6': '.v1.Resource', '10': 'resources'},
  ],
};

/// Descriptor for `ResourcesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourcesResponseDescriptor = $convert.base64Decode('ChFSZXNvdXJjZXNSZXNwb25zZRIqCglyZXNvdXJjZXMYASADKAsyDC52MS5SZXNvdXJjZVIJcmVzb3VyY2Vz');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
