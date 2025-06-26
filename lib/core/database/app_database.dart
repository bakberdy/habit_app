import 'dart:convert';
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:habit_app/core/database/tables.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

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
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();

          // === Загрузка и вставка категорий ===
          final categoriesJson =
              await rootBundle.loadString('lib/assets/data/categories.json');
          final categoriesData = jsonDecode(categoriesJson) as List;
          for (final item in categoriesData) {
            await into(categories).insert(
              CategoriesCompanion.insert(
                id: Value(item['id']),
                title: item['title'],
                description: item['description'],
                imagePath: Value(item['imagePath']),
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
                title: item['title'],
                description: item['description'],
                why: Value(item['why']),
                takesTime: item['takesTime'],
                categoryId: item['categoryId'],
              ),
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
                title: tip['title'],
                content: tip['content'],
              ),
            );
          }
        },
      );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'habit_app:_db'));
    return NativeDatabase(file);
  });
}
