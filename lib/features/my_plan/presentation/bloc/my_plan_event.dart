part of 'my_plan_bloc.dart';

@freezed
sealed class MyPlanEvent with _$MyPlanEvent {
  factory MyPlanEvent.getSubscriptionsOn({required DateTime date}) =
      _GetSubscriptions;
  factory MyPlanEvent.addNewHabit(
      {required String title,
      required String description,
      required int? takeMinutes,
      required List<Weekday> days,
      String? why,
      List<TipEntity>? tips}) = _AddNewHabit;
  factory MyPlanEvent.toggleHabitDoneStatus(
      {required DateTime date,
      required int habitId,
      required bool isDone}) = _ToggleHabitDoneStatus;
}
