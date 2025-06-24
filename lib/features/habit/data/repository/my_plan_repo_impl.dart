import 'package:dartz/dartz.dart';
import 'package:habit_app/core/shared/enums/weekday.dart';
import 'package:habit_app/core/utils/typedef.dart';
import 'package:habit_app/features/habit/domain/entities/tip_entity.dart';
import 'package:habit_app/features/habit/data/datasource/my_plan_local_data_source.dart';
import 'package:habit_app/features/habit/domain/entities/habit_info.dart';
import 'package:habit_app/features/habit/domain/repository/habit_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HabitRepo)
class MyPlanRepoImpl implements HabitRepo {
  final MyPlanLocalDataSource _localDataSource;

  MyPlanRepoImpl(this._localDataSource);

  @override
  ResultFuture<List<HabitInfo>> getHabitSubscriptionsOfDay(
      DateTime date) async {
    final subscriptions =
        await _localDataSource.getHabitSubscriptionsOfDay(date);
    final completions = await _localDataSource.getHabitCompletions(date);

    final List<HabitInfo> habitInfos = subscriptions.map((sub) {
      final isDone =
          completions.any((c) => c.habitId == sub.habit.id && c.isDone);
      return HabitInfo(habit: sub.habit, isDone: isDone);
    }).toList();

    return Right(habitInfos);
  }

  @override
  ResultFuture<void> setHabitCompletionStatus(
      {required bool isDone,
      required int habitId,
      required DateTime date}) async {
    await _localDataSource.setHabitCompletionStatus(
        habitId: habitId, isDone: isDone, date: date);

    return Right(null);
  }

  @override
  ResultVoid addNewHabit(
      {required String title,
      required String description,
      required int takeMinutes,
      required List<Weekday> days,
      String? why,
      List<TipEntity>? tips}) async {
    await _localDataSource.addNewHabit(
        title: title,
        description: description,
        takeMinutes: takeMinutes,
        days: days);
    return Right(null);
  }
}
