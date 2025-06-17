import 'package:habit_app/core/shared/enums/weekday.dart';
import 'package:habit_app/features/catalog/domain/entities/habit_entity.dart';
import 'package:habit_app/features/my_plan/data/models/habit_completion_model.dart';
import 'package:habit_app/features/my_plan/data/models/habit_subscription_model.dart';
import 'package:injectable/injectable.dart';

abstract interface class LocalDataSource {
  Future<List<HabitSubscriptionModel>> getHabitSubscriptionsOfDay(
      DateTime date);
  Future<List<HabitCompletionModel>> getHabitCompletions(DateTime date);
  Future<void> toggleHabitStatus(
      {required int habitId, required bool isDone, required DateTime date});
}

@LazySingleton(as: LocalDataSource)
class LocalDataSourceImpl implements LocalDataSource {
  @override
  Future<List<HabitSubscriptionModel>> getHabitSubscriptionsOfDay(
      DateTime date) {
    final subscriptions = _list
        .where((e) => e.habit.isInThisWeekday(date) && e.isActiveOn(date))
        .toList();
    return Future.value(subscriptions);
  }

  @override
  Future<List<HabitCompletionModel>> getHabitCompletions(DateTime date) async {
    final completions = _habitCompletes
        .where((e) =>
            e.date.year == date.year &&
            e.date.month == e.date.month &&
            e.date.day == date.day)
        .toList();
    return Future.value(completions);
  }

  @override
  Future<void> toggleHabitStatus(
      {required int habitId,
      required bool isDone,
      required DateTime date}) async {
    _habitCompletes.add(
        HabitCompletionModel(habitId: habitId, isDone: isDone, date: date));
  }
}

final _habitCompletes = [
  HabitCompletionModel(habitId: 0, isDone: true, date: DateTime(2025, 6, 16)),
  HabitCompletionModel(habitId: 3, isDone: true, date: DateTime(2025, 6, 21)),
];

final _list = [
  HabitSubscriptionModel(
      id: 0,
      habit: HabitEntity(
          id: 0,
          takesTime: 3,
          title: 'title',
          description: 'description',
          why: 'why',
          tips: null,
          days: [Weekday.friday, Weekday.monday, Weekday.sunday]),
      subscriptionDate: DateTime(2025, 5, 28)),
  HabitSubscriptionModel(
      id: 1,
      habit: HabitEntity(
          id: 1,
          takesTime: 2,
          title: 'Read Book',
          description: 'Read 20 pages of a book',
          why: 'To gain knowledge',
          tips: null,
          days: [Weekday.tuesday, Weekday.thursday]),
      subscriptionDate: DateTime(2025, 5, 29)),
  HabitSubscriptionModel(
      id: 2,
      habit: HabitEntity(
          id: 2,
          takesTime: 1,
          title: 'Morning Run',
          description: 'Run for 30 minutes',
          why: 'To stay healthy',
          tips: null,
          days: [Weekday.monday, Weekday.wednesday, Weekday.friday]),
      subscriptionDate: DateTime(2025, 5, 30)),
  HabitSubscriptionModel(
      id: 3,
      habit: HabitEntity(
          id: 3,
          takesTime: 4,
          title: 'Meditation',
          description: 'Meditate for 15 minutes',
          why: 'To reduce stress',
          tips: null,
          days: [Weekday.sunday, Weekday.saturday]),
      subscriptionDate: DateTime(2025, 5, 31)),
  HabitSubscriptionModel(
      id: 4,
      habit: HabitEntity(
          id: 4,
          takesTime: 2,
          title: 'Drink Water',
          description: 'Drink 8 glasses of water',
          why: 'To stay hydrated',
          tips: null,
          days: [Weekday.saturday]),
      subscriptionDate: DateTime(2025, 6, 1))
];
