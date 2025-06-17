import 'package:habit_app/core/utils/typedef.dart';
import 'package:habit_app/features/my_plan/domain/entities/habit_info.dart';

abstract interface class MyPlanRepo {
  ResultFuture<List<HabitInfo>> getHabitSubscriptionsOfDay(DateTime date);

  ResultFuture<void> toggleHabitStatus(
      {required bool isDone, required int habitId, required DateTime date});
}
