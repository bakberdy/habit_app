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
      DateTime date);

  Future<List<HabitCompletionModel>> getHabitCompletions(DateTime date);

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

  Future<List<CategoryModel>> getCategories();
  Future<CategoryModel> getCategory({required int categoryId});
  Future<List<HabitModel>> getHabitsOfCategpry({required int categoryId});
  Future<HabitModel> getHabitById({required int habitId});
}

@LazySingleton(as: HabitLocalDataSource)
class HabitLocalDataSourceImpl implements HabitLocalDataSource {
  final AppDatabase _db;
  final Talker _logger;

  HabitLocalDataSourceImpl(this._db, this._logger);

  @override
  Future<List<HabitSubscriptionModel>> getHabitSubscriptionsOfDay(
      DateTime date) async {
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

      final habitModel = await HabitModel.fromDrift(habit, _db);

      return HabitSubscriptionModel(
        id: subscription.id,
        habit: habitModel,
        subscriptionDate: subscription.subscriptionDate,
      );
    }));
  }

  @override
  Future<List<HabitCompletionModel>> getHabitCompletions(DateTime date) async {
    final dateOnly = DateTime(date.year, date.month, date.day);

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
  }

  @override
  Future<void> setHabitCompletionStatus({
    required int habitId,
    required DateTime date,
    required bool isDone,
  }) async {
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
    await _db.transaction(() async {
      // 1. Вставляем привычку
      final habitId = await _db.into(_db.habits).insert(
            HabitsCompanion.insert(
              title: title,
              description: description,
              takesTime: takeMinutes,
              why: Value(why),
              categoryId: 9999,
            ),
          );

      // 2. Вставляем дни недели
      for (final day in days) {
        await _db.into(_db.habitWeekdays).insert(
              HabitWeekdaysCompanion.insert(
                habitId: habitId,
                weekday: day.index + 1, // Weekday.monday == index 0
              ),
            );
      }

      // 3. Вставляем советы (если есть)
      if (tips != null) {
        for (final tip in tips) {
          await _db.into(_db.tips).insert(
                TipsCompanion.insert(
                  habitId: habitId,
                  title: tip.title,
                  content: tip.content,
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
  }

  @override
  Future<List<CategoryModel>> getCategories() async {
    final categories = await _db.select(_db.categories).get();

    _logger.info(categories.length);

    return categories
        .map((e) => CategoryModel(
              id: e.id,
              title: e.title,
              description: e.description,
              imagePath: e.imagePath,
            ))
        .toList();
  }

  @override
  Future<CategoryModel> getCategory({required int categoryId}) async {
    final response = await (_db.select(_db.categories)
          ..where((e) => (e.id).equals(categoryId)))
        .getSingleOrNull();
    if (response != null) {
      return CategoryModel(
          id: response.id,
          title: response.title,
          imagePath: response.imagePath,
          description: response.description);
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<HabitModel>> getHabitsOfCategpry(
      {required int categoryId}) async {
    final habitsResponse = await (_db.select(_db.habits)
          ..where((e) => (e.categoryId).equals(categoryId)))
        .get();
    final habits = await Future.wait(
        habitsResponse.map((e) => HabitModel.fromDrift(e, _db)));
    return habits;
  }

  @override
  Future<HabitModel> getHabitById({required int habitId}) async {
    final habit = await (_db.select(_db.habits)
          ..where((e) => (e.id).equals(habitId)))
        .getSingle();
    return HabitModel.fromDrift(habit, _db);
  }
}
