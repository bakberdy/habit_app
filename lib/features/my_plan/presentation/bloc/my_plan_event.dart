part of 'my_plan_bloc.dart';

@freezed
sealed class MyPlanEvent with _$MyPlanEvent {
  factory MyPlanEvent.getSubscriptionsOn({required DateTime date}) =
      _GetSubscriptions;
  factory MyPlanEvent.toggleHabitDoneStatus(
      {required DateTime date,
      required int habitId,
      required bool isDone}) = _ToggleHabitDoneStatus;
}
