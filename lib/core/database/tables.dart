import 'package:drift/drift.dart';

class Habits extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get takesTime => integer()();
  IntColumn get categoryId => integer().references(Categories, #id)();

  TextColumn get titleEn => text().unique().withLength(min: 1)();
  TextColumn get descriptionEn => text()();
  TextColumn get whyEn => text().nullable()();

  TextColumn get titleKk => text().unique().withLength(min: 1)();
  TextColumn get descriptionKk => text()();
  TextColumn get whyKk => text().nullable()();

  TextColumn get titleRu => text().unique().withLength(min: 1)();
  TextColumn get descriptionRu => text()();
  TextColumn get whyRu => text().nullable()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

class HabitWeekdays extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get habitId => integer().references(Habits, #id)();
  IntColumn get weekday =>
      // ignore: recursive_getters
      integer().check(weekday.isBetween(Constant(1), Constant(7)))();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

class HabitSubscriptions extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get habitId => integer().references(Habits, #id)();
  DateTimeColumn get subscriptionDate => dateTime()();
  DateTimeColumn get unsubscribeDate => dateTime().nullable()();

  @override
  Set<Column<Object>>? get primaryKey => {id};

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
        {habitId, subscriptionDate}
      ];
}

class Tips extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get habitId => integer().references(Habits, #id)();

  TextColumn get titleEn => text().withLength(min: 1, max: 255)();
  TextColumn get contentEn => text()();

  TextColumn get titleRu => text().withLength(min: 1, max: 255)();
  TextColumn get contentRu => text()();

  TextColumn get titleKk => text().withLength(min: 1, max: 255)();
  TextColumn get contentKk => text()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

class HabitCompletions extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get habitId => integer().references(Habits, #id)();
  BoolColumn get isDone => boolean()();
  DateTimeColumn get date => dateTime()();

  @override
  Set<Column<Object>>? get primaryKey => {id};

  @override
  List<Set<Column>> get uniqueKeys => [
        {habitId, date}
      ];
}

class Categories extends Table {
  IntColumn get id => integer()();
  TextColumn get imagePath => text().nullable()();

  TextColumn get titleEn => text()();
  TextColumn get descriptionEn => text()();

  TextColumn get titleRu => text()();
  TextColumn get descriptionRu => text()();

  TextColumn get titleKk => text()();
  TextColumn get descriptionKk => text()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}
