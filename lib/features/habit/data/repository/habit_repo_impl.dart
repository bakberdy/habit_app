import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:habit_app/core/error/error.dart';
import 'package:habit_app/core/shared/enums/weekday.dart';
import 'package:habit_app/core/utils/typedef.dart';
import 'package:habit_app/features/habit/data/models/tip_model.dart';
import 'package:habit_app/features/habit/domain/entities/category_entity.dart';
import 'package:habit_app/features/habit/domain/entities/category_info_entity.dart';
import 'package:habit_app/features/habit/domain/entities/habit_entity.dart';
import 'package:habit_app/features/habit/domain/entities/habit_subscription.dart';
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
      DateTime date, Locale locale) async {
    try {
      final subscriptions =
          await _localDataSource.getHabitSubscriptionsOfDay(date, locale);
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
  ResultFuture<void> setHabitCompletionStatus({
    required bool isDone,
    required int habitId,
    required DateTime date,
  }) async {
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
          why: why,
          tips: tips
              ?.map((e) => TipModel(id: 0, title: e.title, content: e.content))
              .toList(),
          days: days);
      return Right(null);
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  ResultFuture<List<CategoryEntity>> getCategories(
      {required Locale locale}) async {
    try {
      return Right(await _localDataSource.getCategories(locale: locale));
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  ResultFuture<CategoryInfoEntity> getCategory(
      int categoryId, Locale locale) async {
    try {
      final category = await _localDataSource.getCategory(
          categoryId: categoryId, locale: locale);
      final habits = await _localDataSource.getHabitsOfCategpry(
          categoryId: categoryId, locale: locale);
      return Right(CategoryInfoEntity(category: category, habits: habits));
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  ResultFuture<HabitEntity> getHabitById(int habitId, Locale locale) async {
    try {
      return Right(await _localDataSource.getHabitById(
          habitId: habitId, locale: locale));
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  ResultFuture<List<HabitEntity>> searchHabit(
      {required String query, int? categoryId, required Locale locale}) async {
    try {
      return Right(await _localDataSource.searchHabit(
          locale: locale, query: query, categoryId: categoryId));
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  ResultVoid addNewHabitFromDb(int habitId) async {
    try {
      return Right(await _localDataSource.addNewHabitFromDb(habitId));
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  ResultFuture<HabitSubscriptionEntity?> getHabitSubscription(
      {required int habitId,
      required DateTime date,
      required Locale locale}) async {
    try {
      final subscription =
          await _localDataSource.getSubscriptionWithHabitIdAndDate(
              habitId: habitId, date: date, locale: locale);
      return Right(subscription);
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  ResultFuture<Map<DateTime, double>> getHabitsDonePercentage() async {
    final loopStartDate = DateTime(2025, 6, 1); // исправлено
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);

    final Map<DateTime, double> datasets = {};

    for (int i = 0;; i++) {
      final date = loopStartDate.add(Duration(days: i));
      if (date.isAfter(today)) break;

      final subscriptions =
          await _localDataSource.getHabitSubscriptionsOfDay(date, Locale('en'));
      final completions = (await _localDataSource.getHabitCompletions(date))
          .where((e) => e.isDone)
          .toList();

      if (subscriptions.isEmpty) {
        datasets[date] = 0.0;
      } else {
        datasets[date] = completions.length / subscriptions.length;
      }
    }

    return Right(datasets);
  }
}
