String timeUntilDoneToText(Duration duration) {
  String textTime = '';
  if (duration.inHours != 0) {
    textTime += '${duration.inHours}h ';
  }
  if (duration.inHours == 0 && duration.inMinutes != 0) {
    textTime += '${duration.inMinutes.remainder(Duration.minutesPerHour)}m ';
  }
  if (duration.inHours == 0 && duration.inMinutes == 0) {
    textTime += '${duration.inSeconds.remainder(Duration.secondsPerMinute)}s';
  }

  return textTime;
}