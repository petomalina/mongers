import 'package:app/apis/world/v1/world_service.pb.dart' as $pb;

import '../../google/protobuf/duration.pb.dart' as $pbduration;

export 'package:app/apis/world/v1/world_service.pb.dart';

extension ProtoDurationExtension on $pbduration.Duration {
  // toDuration converts the google.protobuf.Duration into the dart:core Duration
  Duration toDuration() {
    return Duration(seconds: seconds.toInt());
  }
}

extension DurationExtension on Duration {
  String get niceTime {
    String textTime = '';
    if (inHours != 0) {
      textTime += '${inHours}h ';
    }
    if (inHours == 0 && inMinutes != 0) {
      textTime += '${inMinutes.remainder(Duration.minutesPerHour)}m ';
    }
    if (inHours == 0 && inMinutes == 0) {
      textTime += '${inSeconds.remainder(Duration.secondsPerMinute)}s';
    }

    return textTime;
  }
}

extension ResourceCategoryExtension on $pb.ResourceCategory {
  // toID returns the value of the category as a String
  String toID() {
    return value.toString();
  }
}

extension ResourceExtension on $pb.Resource {
  String get niceCategory {
    const categories = const {
      $pb.ResourceCategory.RESOURCE_CATEGORY_POWER: "Pwr",
      $pb.ResourceCategory.RESOURCE_CATEGORY_MONEY: "\$",
      $pb.ResourceCategory.RESOURCE_CATEGORY_IRON: "Iron",
      $pb.ResourceCategory.RESOURCE_CATEGORY_CLAY: "Clay",
      $pb.ResourceCategory.RESOURCE_CATEGORY_OIL: "Oil",

      $pb.ResourceCategory.RESOURCE_CATEGORY_EXPERIENCE: "XP",
    };

    return categories[$pb.ResourceCategory.valueOf(int.parse(resourceId))];
  }

  int currentValue() {
    return (value.toInt() / 1000).round();
  }
}

extension ResourceStateExtension on $pb.ResourceState {
  int currentValue() {
    final diff = DateTime.now().difference(DateTime.fromMillisecondsSinceEpoch(timestamp.seconds.toInt() * 1000));

    // this creates an rpm diff in seconds and then makes minutes again, so we don't
    // need to wait a full minute for the RPM to pass. It also normalizes the number
    // so the player won't see thousands (every 1 resource has 1000 units).
    return ((resource.value.toInt() + (diff.inSeconds * rpm.toInt()) / 60) / 1000).round();
  }
}

extension ExpeditionExtension on $pb.Expedition {
  String get niceName {
    switch (category) {
      case $pb.ExpeditionCategory.EXPEDITION_CATEGORY_QUICK_SEARCH:
        return 'Quick Search';
      case $pb.ExpeditionCategory.EXPEDITION_CATEGORY_NEARBY_EXPLORATION:
        return 'Nearby Exploration';
      case $pb.ExpeditionCategory.EXPEDITION_CATEGORY_NEW_HORIZONS:
        return 'New Horizons';
    }
  }
}

extension ExpeditionStateExtension on $pb.ExpeditionState {
  Duration currentDuration() {
    final seconds = duration.seconds.toInt() -
        DateTime.now().difference(startedAt.toDateTime()).inSeconds;
    return Duration(seconds: seconds);
  }
}

