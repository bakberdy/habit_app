import 'package:equatable/equatable.dart';
import 'package:habit_app/features/habit/domain/entities/habit_entity.dart';

class HabitSubscription extends Equatable {
  final int id;
  final HabitEntity habit;
  final DateTime subscriptionDate;
  final DateTime? unsubscribeDate;

  const HabitSubscription({
    required this.id,
    required this.habit,
    required this.subscriptionDate,
    this.unsubscribeDate,
  });

  @override
  List<Object?> get props => [id, habit, subscriptionDate, unsubscribeDate];

  bool isActiveOn(DateTime date) {
    final normalizedDate = DateTime(date.year, date.month, date.day);
    return subscriptionDate
            .isBefore(normalizedDate.add(const Duration(days: 1))) &&
        (unsubscribeDate == null || unsubscribeDate!.isAfter(normalizedDate));
  }
}
