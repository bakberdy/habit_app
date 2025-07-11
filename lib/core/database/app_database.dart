import 'dart:convert';
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:habit_app/core/database/tables.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [
  Habits,
  Tips,
  HabitSubscriptions,
  HabitCompletions,
  HabitWeekdays,
])
@lazySingleton
class AppDatabase extends _$AppDatabase {
  AppDatabase(this._logger) : super(_openConnection());
  final Talker _logger;

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(onCreate: (m) async {
        await m.createAll();
        try {
          // === Загрузка и вставка категорий ===
          final categoriesJson =
              await rootBundle.loadString('lib/assets/data/categories.json');
          final categoriesData = jsonDecode(categoriesJson) as List;
          for (final item in categoriesData) {
            await into(categories).insert(
              CategoriesCompanion.insert(
                id: Value(item['id']),
                imagePath: Value(item['imagePath']),
                titleEn: item['title_en'],
                descriptionEn: item['description_en'],
                titleRu: item['title_ru'],
                descriptionRu: item['description_ru'],
                titleKk: item['title_kk'],
                descriptionKk: item['description_kk'],
              ),
            );
          }

          // === Загрузка и вставка привычек ===
          final habitsJson =
              await rootBundle.loadString('lib/assets/data/habits.json');
          final habitsData = jsonDecode(habitsJson) as List;
          for (final item in habitsData) {
            await into(habits).insert(
              HabitsCompanion.insert(
                  takesTime: item['takesTime'],
                  categoryId: (item['categoryId']),
                  titleEn: item['title_en'],
                  descriptionEn: item['description_en'],
                  whyEn: Value(item['why_en']),
                  titleKk: item['title_kk'],
                  descriptionKk: item['description_kk'],
                  whyKk: Value(item['why_kk']),
                  titleRu: item['title_ru'],
                  descriptionRu: item['description_ru'],
                  whyRu: Value(item['why_ru'])),
            );
          }

          // === Загрузка и вставка подсказок ===
          final tipsJson =
              await rootBundle.loadString('lib/assets/data/tips.json');
          final tipsData = jsonDecode(tipsJson) as List;
          for (final tip in tipsData) {
            await into(tips).insert(
              TipsCompanion.insert(
                habitId: tip['habitId'],
                titleEn: tip['title_en'],
                contentEn: tip['content_en'],
                titleRu: tip['title_ru'],
                contentRu: tip['content_ru'],
                titleKk: tip['title_kk'],
                contentKk: tip['content_kk'],
              ),
            );
          }

          final weekdaysJson =
              await rootBundle.loadString('lib/assets/data/weekday.json');
          final weekdaysDData = jsonDecode(weekdaysJson) as List;
          for (final weekday in weekdaysDData) {
            await into(habitWeekdays).insert(
              HabitWeekdaysCompanion.insert(
                habitId: weekday['habitId'],
                weekday: weekday['weekday'],
              ),
            );
          }
        } on SqliteException catch (e, s) {
          _logger.error(e, s);
        } catch (e, s) {
          _logger.error(e, s);
        }
      });
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'habit_app:dededededeata'));
    return NativeDatabase(file);
  });
}
