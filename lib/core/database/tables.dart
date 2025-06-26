import 'package:drift/drift.dart';

class Habits extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1)();
  TextColumn get description => text()();
  TextColumn get why => text().nullable()();
  IntColumn get takesTime => integer()();
  IntColumn get categoryId => integer().references(Categories, #id)();
}

class HabitSubscriptions extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get habitId => integer().references(Habits, #id)();
  DateTimeColumn get subscriptionDate => dateTime()();
  DateTimeColumn get unsubscribeDate => dateTime().nullable()();
}

class Tips extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get habitId => integer().references(Habits, #id)();
  TextColumn get title => text().withLength(min: 1, max: 255)();
  TextColumn get content => text()();
}

class HabitCompletions extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get habitId => integer().references(Habits, #id)();
  BoolColumn get isDone => boolean()();
  DateTimeColumn get date => dateTime()();

  @override
  List<Set<Column>> get uniqueKeys => [
        {habitId, date}
      ];
}

class HabitWeekdays extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get habitId => integer().references(Habits, #id)();

  IntColumn get weekday =>
      // ignore: recursive_getters
      integer().check(weekday.isBetween(Constant(1), Constant(7)))();
}

class Categories extends Table {
  IntColumn get id => integer()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  TextColumn get imagePath => text().nullable()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}
