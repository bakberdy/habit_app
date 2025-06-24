import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:habit_app/core/database/tables.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart'; // будет сгенерирован

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
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'habit_app'));
    return NativeDatabase(file);
  });
}
