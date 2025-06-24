enum Weekday {
  monday('Monday'),
  tuesday('Tuesday'),
  wednesday('Wednesday'),
  thursday('Thursday'),
  friday('Friday'),
  saturday('Saturday'),
  sunday('Sunday');

  final String value;
  const Weekday(this.value);
  factory Weekday.fromDate(DateTime date) {
    switch (date.weekday) {
      case DateTime.monday:
        return Weekday.monday;
      case DateTime.tuesday:
        return Weekday.tuesday;
      case DateTime.wednesday:
        return Weekday.wednesday;
      case DateTime.thursday:
        return Weekday.thursday;
      case DateTime.friday:
        return Weekday.friday;
      case DateTime.saturday:
        return Weekday.saturday;
      case DateTime.sunday:
        return Weekday.sunday;
      default:
        throw ArgumentError('Invalid weekday');
    }
  }
  factory Weekday.fromInt(int weekday) {
    switch (weekday) {
      case DateTime.monday:
        return Weekday.monday;
      case DateTime.tuesday:
        return Weekday.tuesday;
      case DateTime.wednesday:
        return Weekday.wednesday;
      case DateTime.thursday:
        return Weekday.thursday;
      case DateTime.friday:
        return Weekday.friday;
      case DateTime.saturday:
        return Weekday.saturday;
      case DateTime.sunday:
        return Weekday.sunday;
      default:
        throw ArgumentError('Invalid weekday int: $weekday');
    }
  }
  factory Weekday.fromJson(String json) {
    return Weekday.values.firstWhere(
      (e) => e.value.toLowerCase() == json.toLowerCase(),
      orElse: () => throw ArgumentError('Invalid weekday json: $json'),
    );
  }
}
