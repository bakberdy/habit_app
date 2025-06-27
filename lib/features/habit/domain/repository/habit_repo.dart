import 'package:habit_app/core/shared/enums/weekday.dart';
import 'package:habit_app/core/utils/typedef.dart';
import 'package:habit_app/features/habit/domain/entities/category_entity.dart';
import 'package:habit_app/features/habit/domain/entities/category_info_entity.dart';
import 'package:habit_app/features/habit/domain/entities/habit_entity.dart';
import 'package:habit_app/features/habit/domain/entities/habit_subscription.dart';
import 'package:habit_app/features/habit/domain/entities/tip_entity.dart';
import 'package:habit_app/features/habit/domain/entities/habit_info.dart';

abstract interface class HabitRepo {
  ResultFuture<Map<DateTime, double>> getHabitsDonePercentage();
  ResultFuture<List<HabitInfo>> getHabitSubscriptionsOfDay(DateTime date);
  ResultFuture<CategoryInfoEntity> getCategory(int categoryId);
  ResultFuture<HabitSubscriptionEntity?> getHabitSubscription(
      {required int habitId, required DateTime date});
  ResultFuture<List<HabitEntity>> searchHabit(
      {required String query, int? categoryId});
  ResultVoid addNewHabitFromDb(int habitId);
  ResultVoid addNewHabit(
      {required String title,
      required String description,
      required int takeMinutes,
      required List<Weekday> days,
      String? why,
      List<TipEntity>? tips});
  ResultFuture<List<CategoryEntity>> getCategories();
  ResultFuture<HabitEntity> getHabitById(int habitId);
  ResultFuture<void> setHabitCompletionStatus(
      {required bool isDone, required int habitId, required DateTime date});
}
