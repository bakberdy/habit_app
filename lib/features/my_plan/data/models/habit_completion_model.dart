import 'package:habit_app/features/my_plan/domain/entities/habit_completion.dart';

class HabitCompletionModel extends HabitCompletion {
  HabitCompletionModel(
      {required super.habitId, required super.isDone, required super.date});
  factory HabitCompletionModel.fromJson(Map<String, dynamic> json) {
    return HabitCompletionModel(
      habitId: json['habitId'] as int,
      isDone: json['isDone'] as bool,
      date: DateTime.parse(json['date'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'habitId': habitId,
      'isDone': isDone,
      'date': date.toIso8601String(),
    };
  }
}
