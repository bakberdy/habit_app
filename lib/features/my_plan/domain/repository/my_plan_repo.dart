import 'package:habit_app/core/shared/enums/weekday.dart';
import 'package:habit_app/core/utils/typedef.dart';
import 'package:habit_app/features/catalog/domain/entities/tip_entity.dart';
import 'package:habit_app/features/my_plan/domain/entities/habit_info.dart';

abstract interface class MyPlanRepo {
  ResultFuture<List<HabitInfo>> getHabitSubscriptionsOfDay(DateTime date);
  ResultVoid addNewHabit(
      {required String title,
      required String description,
      required int takeMinutes,
      required List<Weekday> days,
      String? why,
      List<TipEntity>? tips});

  ResultFuture<void> toggleHabitStatus(
      {required bool isDone, required int habitId, required DateTime date});
}
