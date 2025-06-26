part of 'my_plan_bloc.dart';

@freezed
sealed class MyPlanState with _$MyPlanState {
  const factory MyPlanState.initial() = MyPlanStateInitial;
  const factory MyPlanState.created() = MyPlanStateCreated;
  const factory MyPlanState.errorState({required String message}) =
      MyPlanStateError;
  const factory MyPlanState.loaded(
      {required DateTime date,
      required DayStatus dayStatus,
      required int numberOfDoneHabits,
      required String textOfDay,
      required List<HabitInfo> habitInfo}) = MyPlanStateLoaded;
}

enum DayStatus {
  today,
  past,
  future;

  factory DayStatus.fromDate(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final target = DateTime(date.year, date.month, date.day);

    if (target.isAtSameMomentAs(today)) {
      return DayStatus.today;
    } else if (target.isBefore(today)) {
      return DayStatus.past;
    } else {
      return DayStatus.future;
    }
  }
}

extension DayStatusX on DayStatus {
  bool isToday() => this == DayStatus.today;
  bool isPast() => this == DayStatus.past;
  bool isFuture() => this == DayStatus.future;
}
