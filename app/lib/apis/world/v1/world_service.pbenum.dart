///
//  Generated code. Do not modify.
//  source: apis/world/v1/world_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ExpeditionCategory extends $pb.ProtobufEnum {
  static const ExpeditionCategory EXPEDITION_CATEGORY_UNSPECIFIED = ExpeditionCategory._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXPEDITION_CATEGORY_UNSPECIFIED');
  static const ExpeditionCategory EXPEDITION_CATEGORY_QUICK_SEARCH = ExpeditionCategory._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXPEDITION_CATEGORY_QUICK_SEARCH');
  static const ExpeditionCategory EXPEDITION_CATEGORY_NEARBY_EXPLORATION = ExpeditionCategory._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXPEDITION_CATEGORY_NEARBY_EXPLORATION');
  static const ExpeditionCategory EXPEDITION_CATEGORY_NEW_HORIZONS = ExpeditionCategory._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXPEDITION_CATEGORY_NEW_HORIZONS');

  static const $core.List<ExpeditionCategory> values = <ExpeditionCategory> [
    EXPEDITION_CATEGORY_UNSPECIFIED,
    EXPEDITION_CATEGORY_QUICK_SEARCH,
    EXPEDITION_CATEGORY_NEARBY_EXPLORATION,
    EXPEDITION_CATEGORY_NEW_HORIZONS,
  ];

  static final $core.Map<$core.int, ExpeditionCategory> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ExpeditionCategory? valueOf($core.int value) => _byValue[value];

  const ExpeditionCategory._($core.int v, $core.String n) : super(v, n);
}

class ExpeditionStatus extends $pb.ProtobufEnum {
  static const ExpeditionStatus EXPEDITION_STATUS_UNSPECIFIED = ExpeditionStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXPEDITION_STATUS_UNSPECIFIED');
  static const ExpeditionStatus EXPEDITION_STATUS_AVAILABLE = ExpeditionStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXPEDITION_STATUS_AVAILABLE');
  static const ExpeditionStatus EXPEDITION_STATUS_IN_PROGRESS = ExpeditionStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXPEDITION_STATUS_IN_PROGRESS');
  static const ExpeditionStatus EXPEDITION_STATUS_DONE = ExpeditionStatus._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXPEDITION_STATUS_DONE');
  static const ExpeditionStatus EXPEDITION_STATUS_FAILED = ExpeditionStatus._(100, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXPEDITION_STATUS_FAILED');

  static const $core.List<ExpeditionStatus> values = <ExpeditionStatus> [
    EXPEDITION_STATUS_UNSPECIFIED,
    EXPEDITION_STATUS_AVAILABLE,
    EXPEDITION_STATUS_IN_PROGRESS,
    EXPEDITION_STATUS_DONE,
    EXPEDITION_STATUS_FAILED,
  ];

  static final $core.Map<$core.int, ExpeditionStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ExpeditionStatus? valueOf($core.int value) => _byValue[value];

  const ExpeditionStatus._($core.int v, $core.String n) : super(v, n);
}

class ListExpeditionFilter extends $pb.ProtobufEnum {
  static const ListExpeditionFilter LIST_EXPEDITION_FILTER_ALL = ListExpeditionFilter._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LIST_EXPEDITION_FILTER_ALL');
  static const ListExpeditionFilter LIST_EXPEDITION_FILTER_PLAYER_ONLY = ListExpeditionFilter._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LIST_EXPEDITION_FILTER_PLAYER_ONLY');
  static const ListExpeditionFilter LIST_EXPEDITION_FILTER_AVAILABLE_ONLY = ListExpeditionFilter._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LIST_EXPEDITION_FILTER_AVAILABLE_ONLY');

  static const $core.List<ListExpeditionFilter> values = <ListExpeditionFilter> [
    LIST_EXPEDITION_FILTER_ALL,
    LIST_EXPEDITION_FILTER_PLAYER_ONLY,
    LIST_EXPEDITION_FILTER_AVAILABLE_ONLY,
  ];

  static final $core.Map<$core.int, ListExpeditionFilter> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListExpeditionFilter? valueOf($core.int value) => _byValue[value];

  const ListExpeditionFilter._($core.int v, $core.String n) : super(v, n);
}

