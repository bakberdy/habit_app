part of 'habit_bloc.dart';

@freezed
sealed class HabitState with _$HabitState {
  const factory HabitState.initial() = HabitInitial;
  const factory HabitState.created() = HabitCreated;
  const factory HabitState.errorState({required String message}) = HabitError;
  const factory HabitState.loaded(
      {required DateTime date,
      required DayStatus dayStatus,
      required int numberOfDoneHabits,
      required String textOfDay,
      required List<HabitInfo> habitInfo}) = HabitLoaded;
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
