import 'package:equatable/equatable.dart';
import 'package:habit_app/core/shared/enums/weekday.dart';
import 'package:habit_app/features/catalog/domain/entities/tip_entity.dart';

class HabitEntity extends Equatable {
  final int id;
  final String title;
  final String description;
  final String? why;
  final List<TipEntity>? tips;
  final List<Weekday> days;
  final int takesTime;

  const HabitEntity(
      {required this.id,
      required this.takesTime,
      required this.title,
      required this.description,
      required this.why,
      required this.tips,
      required this.days});

  @override
  List<Object?> get props => [id];

  bool isInThisWeekday(DateTime date) {
    final weekday = Weekday.fromDate(date);
    return days.contains(weekday);
  }

  factory HabitEntity.sample() {
    return HabitEntity(
      id: 1,
      title: 'Drink Water',
      description: 'Drink at least 8 glasses of water daily.',
      why: 'Staying hydrated is essential for good health.',
      tips: [
        TipEntity(
          id: 1,
          title: 'Carry a water bottle with you.',
          content:
              'Having a water bottle nearby makes it easier to remember to drink water throughout the day.',
        ),
        TipEntity(
          id: 2,
          title: 'Set reminders to drink water.',
          content:
              'Use your phone or a watch to set hourly reminders to help you remember to drink water regularly.',
        ),
      ],
      days: [
        Weekday.monday,
        Weekday.tuesday,
        Weekday.wednesday,
        Weekday.thursday,
        Weekday.friday
      ],
      takesTime: 5,
    );
  }
}
