import 'dart:ui';

import 'package:habit_app/core/database/app_database.dart';
import 'package:habit_app/core/shared/enums/weekday.dart';
import 'package:habit_app/features/habit/data/models/tip_model.dart';
import 'package:habit_app/features/habit/domain/entities/habit_entity.dart';

class HabitModel extends HabitEntity {
  const HabitModel(
      {required super.id,
      required super.takesTime,
      required super.title,
      required super.description,
      required super.why,
      required List<TipModel> tips,
      required super.days})
      : super(tips: tips);

  static Future<HabitModel> fromDrift(
      Habit habit, AppDatabase db, Locale locale) async {
    // Получаем советы (tips)
    final tipRows = await (db.select(db.tips)
          ..where((t) => t.habitId.equals(habit.id)))
        .get();
    final tips = tipRows.map((e) => TipModel.fromDrift(e, locale)).toList();

    // Получаем дни недели
    final weekdayRows = await (db.select(db.habitWeekdays)
          ..where((w) => w.habitId.equals(habit.id)))
        .get();
    final days = weekdayRows.map((e) => Weekday.fromInt(e.weekday)).toList();
    String getLocalized(String? en, String? ru, String? kk) {
      switch (locale.languageCode) {
        case 'ru':
          return ru ?? en ?? '';
        case 'kk':
          return kk ?? en ?? '';
        default:
          return en ?? '';
      }
    }

    return HabitModel(
      id: habit.id,
      title: getLocalized(habit.titleEn, habit.titleRu, habit.titleKk),
      description: getLocalized(
          habit.descriptionEn, habit.descriptionRu, habit.descriptionKk),
      why: getLocalized(habit.whyEn, habit.whyRu, habit.whyKk),
      takesTime: habit.takesTime,
      tips: tips,
      days: days,
    );
  }
}
