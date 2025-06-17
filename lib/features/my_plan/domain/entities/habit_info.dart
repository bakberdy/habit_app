import 'package:habit_app/features/catalog/domain/entities/habit_entity.dart';

class HabitInfo {
  final HabitEntity habit;
  final bool? isDone;

  HabitInfo({required this.habit, required this.isDone});
}
