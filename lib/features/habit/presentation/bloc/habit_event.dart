part of 'habit_bloc.dart';

@freezed
sealed class HabitEvent with _$HabitEvent {
  factory HabitEvent.getSubscriptionsOn({required DateTime date}) =
      _GetSubscriptions;
  factory HabitEvent.addNewHabit(
      {required String title,
      required String description,
      required int? takeMinutes,
      required List<Weekday> days,
      String? why,
      List<TipEntity>? tips}) = _AddNewHabit;
  factory HabitEvent.toggleHabitDoneStatus(
      {required DateTime date,
      required int habitId,
      required bool isDone}) = _ToggleHabitDoneStatus;
}
