import 'dart:ui';

import 'package:drift/drift.dart';
import 'package:habit_app/core/database/app_database.dart';
import 'package:habit_app/core/shared/enums/weekday.dart';
import 'package:habit_app/features/habit/data/models/category_model.dart';
import 'package:habit_app/features/habit/data/models/habit_model.dart';
import 'package:habit_app/features/habit/data/models/tip_model.dart';
import 'package:habit_app/features/habit/data/models/habit_completion_model.dart';
import 'package:habit_app/features/habit/data/models/habit_subscription_model.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

abstract interface class HabitLocalDataSource {
  Future<List<HabitSubscriptionModel>> getHabitSubscriptionsOfDay(
      DateTime date, Locale locale);

  Future<List<HabitCompletionModel>> getHabitCompletions(DateTime date);

  Future<void> addNewHabitFromDb(int habitId);

  Future<void> addNewHabit({
    required String title,
    required String description,
    required int takeMinutes,
    required List<Weekday> days,
    String? why,
    List<TipModel>? tips,
  });
  Future<void> setHabitCompletionStatus(
      {required int habitId, required bool isDone, required DateTime date});

  Future<List<CategoryModel>> getCategories({required Locale locale});
  Future<CategoryModel> getCategory(
      {required int categoryId, required Locale locale});
  Future<List<HabitModel>> getHabitsOfCategpry(
      {required int categoryId, required Locale locale});
  Future<HabitModel> getHabitById(
      {required int habitId, required Locale locale});
  Future<List<HabitModel>> searchHabit(
      {required String query, int? categoryId, required Locale locale});
  Future<HabitSubscriptionModel?> getSubscriptionWithHabitIdAndDate(
      {required int habitId, required DateTime date, required Locale locale});
}

@LazySingleton(as: HabitLocalDataSource)
class HabitLocalDataSourceImpl implements HabitLocalDataSource {
  final AppDatabase _db;
  final Talker _logger;

  HabitLocalDataSourceImpl(this._db, this._logger);

  @override
  Future<List<HabitSubscriptionModel>> getHabitSubscriptionsOfDay(
      DateTime date, Locale locale) async {
    try {
      final dateWithoutTime = DateTime(date.year, date.month, date.day);
      final weekday = date.weekday;

      final query = _db.select(_db.habitSubscriptions).join([
        innerJoin(
          _db.habitWeekdays,
          _db.habitWeekdays.habitId.equalsExp(_db.habitSubscriptions.habitId),
        ),
        innerJoin(
          _db.habits,
          _db.habits.id.equalsExp(_db.habitSubscriptions.habitId),
        ),
      ])
        ..where(_db.habitWeekdays.weekday.equals(weekday))
        ..where(_db.habitSubscriptions.subscriptionDate
            .isSmallerOrEqualValue(dateWithoutTime))
        ..where(
          _db.habitSubscriptions.unsubscribeDate.isNull() |
              _db.habitSubscriptions.unsubscribeDate
                  .isBiggerOrEqualValue(dateWithoutTime),
        );

      final rows = await query.get();

      return Future.wait(rows.map((row) async {
        final habit = row.readTable(_db.habits);
        final subscription = row.readTable(_db.habitSubscriptions);

        final habitModel = await HabitModel.fromDrift(habit, _db, locale);

        return HabitSubscriptionModel(
          id: subscription.id,
          habit: habitModel,
          subscriptionDate: subscription.subscriptionDate,
        );
      }));
    } catch (e, s) {
      _logger.error(e, s);
      rethrow;
    }
  }

  @override
  Future<List<HabitCompletionModel>> getHabitCompletions(DateTime date) async {
    final dateOnly = DateTime(date.year, date.month, date.day);

    try {
      final rows = await (_db.select(_db.habitCompletions)
            ..where((c) => c.date.equals(dateOnly)))
          .get();
      _logger.info(
          'Fetched ${rows.length} habit completions for $dateOnly \n$rows}');

      return rows
          .map((e) => HabitCompletionModel(
                habitId: e.habitId,
                isDone: e.isDone,
                date: e.date,
              ))
          .toList();
    } catch (e, s) {
      _logger.error(e, s);
      rethrow;
    }
  }

  @override
  Future<void> setHabitCompletionStatus({
    required int habitId,
    required DateTime date,
    required bool isDone,
  }) async {
    try {
      final dateOnly = DateTime(date.year, date.month, date.day);

      // Проверяем, есть ли уже запись на эту дату
      final existing = await (_db.select(_db.habitCompletions)
            ..where((c) => c.habitId.equals(habitId) & c.date.equals(dateOnly)))
          .getSingleOrNull();

      if (existing != null) {
        // Обновляем isDone
        await (_db.update(_db.habitCompletions)
              ..where((c) => c.id.equals(existing.id)))
            .write(HabitCompletionsCompanion(
          isDone: Value(isDone),
        ));
      } else {
        // Вставляем новую запись
        await _db.into(_db.habitCompletions).insert(
              HabitCompletionsCompanion.insert(
                habitId: habitId,
                date: dateOnly,
                isDone: isDone,
              ),
            );
      }
    } catch (e, s) {
      _logger.error(e, s);
      rethrow;
    }
  }

  @override
  Future<void> addNewHabit({
    required String title,
    required String description,
    required int takeMinutes,
    required List<Weekday> days,
    String? why,
    List<TipModel>? tips,
  }) async {
    try {
      await _db.transaction(() async {
        final habitId = await _db.into(_db.habits).insert(
              HabitsCompanion.insert(
                titleEn: title,
                titleRu: title,
                titleKk: title,
                descriptionEn: description,
                descriptionRu: description,
                descriptionKk: description,
                takesTime: takeMinutes,
                whyEn: Value(why),
                whyRu: Value(why),
                whyKk: Value(why),
                categoryId: 9999,
              ),
            );

        for (final day in days) {
          await _db.into(_db.habitWeekdays).insert(
                HabitWeekdaysCompanion.insert(
                  habitId: habitId,
                  weekday: day.index + 1,
                ),
              );
        }

        if (tips != null) {
          for (final tip in tips) {
            await _db.into(_db.tips).insert(
                  TipsCompanion.insert(
                    habitId: habitId,
                    titleEn: tip.title,
                    contentEn: tip.content,
                    titleRu: tip.title,
                    contentRu: tip.content,
                    titleKk: tip.title,
                    contentKk: tip.content,
                  ),
                );
          }
        }

        final now = DateTime.now();
        final today = DateTime(now.year, now.month, now.day);

        await _db.into(_db.habitSubscriptions).insert(
              HabitSubscriptionsCompanion.insert(
                habitId: habitId,
                subscriptionDate: today,
              ),
            );
      });
    } catch (e, s) {
      _logger.error(e, s);
      rethrow;
    }
  }

  @override
  Future<List<CategoryModel>> getCategories({required Locale locale}) async {
    final categories = await _db.select(_db.categories).get();
    try {
      return categories.map((e) => CategoryModel.fromDrift(e, locale)).toList();
    } catch (e, s) {
      _logger.error(e, s);
      rethrow;
    }
  }

  @override
  Future<CategoryModel> getCategory(
      {required int categoryId, required Locale locale}) async {
    try {
      final response = await (_db.select(_db.categories)
            ..where((e) => (e.id).equals(categoryId)))
          .getSingleOrNull();
      if (response != null) {
        return CategoryModel.fromDrift(response, locale);
      } else {
        throw Exception();
      }
    } catch (e, s) {
      _logger.error(e, s);
      rethrow;
    }
  }

  @override
  Future<List<HabitModel>> getHabitsOfCategpry(
      {required int categoryId, required Locale locale}) async {
    try {
      final habitsResponse = await (_db.select(_db.habits)
            ..where((e) => (e.categoryId).equals(categoryId)))
          .get();
      final habits = await Future.wait(
          habitsResponse.map((e) => HabitModel.fromDrift(e, _db, locale)));
      return habits;
    } catch (e, s) {
      _logger.error(e, s);
      rethrow;
    }
  }

  @override
  Future<HabitModel> getHabitById(
      {required int habitId, required Locale locale}) async {
    try {
      final habit = await (_db.select(_db.habits)
            ..where((e) => (e.id).equals(habitId)))
          .getSingle();
      return HabitModel.fromDrift(habit, _db, locale);
    } catch (e, s) {
      _logger.error(e, s);
      rethrow;
    }
  }

  @override
  Future<List<HabitModel>> searchHabit(
      {required String query, int? categoryId, required Locale locale}) async {
    try {
      final rows = categoryId == null
          ? await (_db.select(_db.habits)
                ..where((e) => ((e.titleEn.like('%$query%') |
                        e.descriptionEn.like('%$query%')) |
                    (e.titleRu.like('%$query%') |
                        e.descriptionRu.like('%$query%')) |
                    (e.titleKk.like('%$query%') |
                        e.descriptionKk.like('%$query%')))))
              .get()
          : await (_db.select(_db.habits)
                ..where((e) =>
                    ((e.titleEn.like('%$query%') |
                            e.descriptionEn.like('%$query%')) |
                        (e.titleRu.like('%$query%') |
                            e.descriptionRu.like('%$query%')) |
                        (e.titleKk.like('%$query%') |
                            e.descriptionKk.like('%$query%'))) &
                    e.categoryId.equals(categoryId)))
              .get();
      return Future.wait(rows.map((e) => HabitModel.fromDrift(e, _db, locale)));
    } catch (e, s) {
      _logger.info(e, s);
      rethrow;
    }
  }

  @override
  Future<void> addNewHabitFromDb(int habitId) async {
    try {
      final now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);

      await _db.into(_db.habitSubscriptions).insert(
            HabitSubscriptionsCompanion.insert(
              habitId: habitId,
              subscriptionDate: today,
            ),
          );
    } catch (e, s) {
      _logger.error(e, s);
      rethrow;
    }
  }

  @override
  Future<HabitSubscriptionModel?> getSubscriptionWithHabitIdAndDate(
      {required int habitId,
      required DateTime date,
      required Locale locale}) async {
    final dateWithoutTime = DateTime(date.year, date.month, date.day);
    final habit = (await (_db.select(_db.habits)
          ..where((e) => e.id.equals(habitId)))
        .getSingleOrNull());
    if (habit == null) {
      return null;
    }
    final subscription = await (_db.select(_db.habitSubscriptions)
          ..where(
              (e) => e.subscriptionDate.isSmallerOrEqualValue(dateWithoutTime))
          ..where(
            (e) =>
                e.unsubscribeDate.isNull() |
                _db.habitSubscriptions.unsubscribeDate
                    .isBiggerOrEqualValue(dateWithoutTime),
          )
          ..where((e) => e.habitId.equals(habitId)))
        .getSingleOrNull();
    if (subscription == null) {
      return null;
    }
    return HabitSubscriptionModel(
        id: subscription.id,
        habit: await HabitModel.fromDrift(habit, _db, locale),
        subscriptionDate: subscription.subscriptionDate);
  }
}
