import 'package:dartz/dartz.dart';
import 'package:habit_app/core/error/error.dart';
import 'package:habit_app/core/shared/enums/weekday.dart';
import 'package:habit_app/core/utils/typedef.dart';
import 'package:habit_app/features/habit/domain/entities/category_entity.dart';
import 'package:habit_app/features/habit/domain/entities/category_info_entity.dart';
import 'package:habit_app/features/habit/domain/entities/habit_entity.dart';
import 'package:habit_app/features/habit/domain/entities/tip_entity.dart';
import 'package:habit_app/features/habit/data/datasource/habit_local_data_source.dart';
import 'package:habit_app/features/habit/domain/entities/habit_info.dart';
import 'package:habit_app/features/habit/domain/repository/habit_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HabitRepo)
class HabitRepoImpl implements HabitRepo {
  final HabitLocalDataSource _localDataSource;

  HabitRepoImpl(this._localDataSource);

  @override
  ResultFuture<List<HabitInfo>> getHabitSubscriptionsOfDay(
      DateTime date) async {
    try {
      final subscriptions =
          await _localDataSource.getHabitSubscriptionsOfDay(date);
      final completions = await _localDataSource.getHabitCompletions(date);

      final List<HabitInfo> habitInfos = subscriptions.map((sub) {
        final isDone =
            completions.any((c) => c.habitId == sub.habit.id && c.isDone);
        return HabitInfo(habit: sub.habit, isDone: isDone);
      }).toList();

      return Right(habitInfos);
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  ResultFuture<void> setHabitCompletionStatus(
      {required bool isDone,
      required int habitId,
      required DateTime date}) async {
    try {
      await _localDataSource.setHabitCompletionStatus(
          habitId: habitId, isDone: isDone, date: date);

      return Right(null);
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  ResultVoid addNewHabit(
      {required String title,
      required String description,
      required int takeMinutes,
      required List<Weekday> days,
      String? why,
      List<TipEntity>? tips}) async {
    try {
      await _localDataSource.addNewHabit(
          title: title,
          description: description,
          takeMinutes: takeMinutes,
          days: days);
      return Right(null);
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  ResultFuture<List<CategoryEntity>> getCategories() async {
    try {
      return Right(await _localDataSource.getCategories());
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  ResultFuture<CategoryInfoEntity> getCategory(int categoryId) async {
    try {
      final category =
          await _localDataSource.getCategory(categoryId: categoryId);
      final habits =
          await _localDataSource.getHabitsOfCategpry(categoryId: categoryId);
      return Right(CategoryInfoEntity(category: category, habits: habits));
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  ResultFuture<HabitEntity> getHabitById(int habitId) async {
    try {
      return Right(await _localDataSource.getHabitById(habitId: habitId));
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }
}
