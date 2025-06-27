import 'package:drift/drift.dart';

class Habits extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().unique().withLength(min: 1)();
  TextColumn get description => text()();
  TextColumn get why => text().nullable()();
  IntColumn get takesTime => integer()();
  IntColumn get categoryId => integer().references(Categories, #id)();

  @override
  Set<Column<Object>>? get primaryKey => {id};

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
        {title, description}
      ];
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
  TextColumn get title => text().withLength(min: 1, max: 255)();
  TextColumn get content => text()();
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
  TextColumn get title => text()();
  TextColumn get description => text()();
  TextColumn get imagePath => text().nullable()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}
