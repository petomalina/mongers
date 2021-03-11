import 'package:app/apis/world/v1/world_service.pb.dart';

int calculateCurrentResourceValue(ResourceState state) {
  final diff = DateTime.now().difference(DateTime.fromMillisecondsSinceEpoch(state.timestamp.seconds.toInt() * 1000));

  // this creates an rpm diff in seconds and then makes minutes again, so we don't
  // need to wait a full minute for the RPM to pass. It also normalizes the number
  // so the player won't see thousands (every 1 resource has 1000 units).
  return ((state.resource.value.toInt() + (diff.inSeconds * state.rpm.toInt()) / 60) / 1000).round();
}

String getResourceCategory(ResourceCategory cat) {
  const categories = const {
    ResourceCategory.RESOURCE_CATEGORY_POWER: "Pwr",
    ResourceCategory.RESOURCE_CATEGORY_MONEY: "\$",
    ResourceCategory.RESOURCE_CATEGORY_IRON: "Iron",
    ResourceCategory.RESOURCE_CATEGORY_CLAY: "Clay",
    ResourceCategory.RESOURCE_CATEGORY_OIL: "Oil",
  };

  return categories[cat];
}