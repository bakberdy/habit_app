import 'package:flutter/material.dart';
import 'package:habit_app/generated/l10n.dart';

enum Weekday {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday;

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
}

extension WeekdayLocalization on Weekday {
  String label(BuildContext context) {
    final loc = S.of(context);
    switch (this) {
      case Weekday.monday:
        return loc.monday;
      case Weekday.tuesday:
        return loc.tuesday;
      case Weekday.wednesday:
        return loc.wednesday;
      case Weekday.thursday:
        return loc.thursday;
      case Weekday.friday:
        return loc.friday;
      case Weekday.saturday:
        return loc.saturday;
      case Weekday.sunday:
        return loc.sunday;
    }
  }
}
