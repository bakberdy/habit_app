import 'package:dartz/dartz.dart';
import 'package:habit_app/core/utils/typedef.dart';
import 'package:habit_app/features/my_plan/data/datasource/local_data_source.dart';
import 'package:habit_app/features/my_plan/domain/entities/habit_completion.dart';
import 'package:habit_app/features/my_plan/domain/entities/habit_info.dart';
import 'package:habit_app/features/my_plan/domain/entities/habit_subscription.dart';
import 'package:habit_app/features/my_plan/domain/repository/my_plan_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MyPlanRepo)
class MyPlanRepoImpl implements MyPlanRepo {
  final LocalDataSource _localDataSource;

  MyPlanRepoImpl(this._localDataSource);
  @override
  ResultFuture<List<HabitInfo>> getHabitSubscriptionsOfDay(
      DateTime date) async {
    final subscriptions =
        await _localDataSource.getHabitSubscriptionsOfDay(date);
    final completions = await _localDataSource.getHabitCompletions(date);
    final List<HabitInfo> habitInfos = [];
    for (int i = 0; i < subscriptions.length; i++) {
      habitInfos.add(HabitInfo(
          habit: subscriptions[i].habit,
          isDone: isDoneHabit(subscriptions[i].habit.id, completions)));
    }
    return Right(habitInfos);
  }

  static bool isDoneHabit(int habitId, List<HabitCompletion> completions) {
    for (var completion in completions) {
      return (completion.habitId == habitId) && completion.isDone;
    }
    return false;
  }

  @override
  ResultFuture<void> toggleHabitStatus(
      {required bool isDone,
      required int habitId,
      required DateTime date}) async {
    await _localDataSource.toggleHabitStatus(
        habitId: habitId, isDone: isDone, date: date);

    return Right(null);
  }
}
