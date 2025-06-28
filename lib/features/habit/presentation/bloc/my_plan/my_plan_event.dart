part of 'my_plan_bloc.dart';

@freezed
sealed class MyPlanEvent with _$MyPlanEvent {
  factory MyPlanEvent.getSubscriptionsOn(
      {required DateTime date, required Locale locale}) = _GetSubscriptions;
  factory MyPlanEvent.addHabitFromDb(
      {required int habitId, required Locale locale}) = _AddHabitFromDb;
  factory MyPlanEvent.addNewHabit(
      {required String title,
      required String description,
      required int? takeMinutes,
      required List<Weekday> days,
      required Locale locale,
      String? why,
      List<TipEntity>? tips}) = _AddNewHabit;
  factory MyPlanEvent.toggleHabitDoneStatus(
      {required DateTime date,
      required Locale locale,
      required int habitId,
      required bool isDone}) = _ToggleHabitDoneStatus;
}
