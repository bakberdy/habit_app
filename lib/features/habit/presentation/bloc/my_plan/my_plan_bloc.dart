import 'dart:async';
import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_app/core/shared/enums/weekday.dart';
import 'package:habit_app/features/habit/domain/entities/tip_entity.dart';
import 'package:habit_app/features/habit/domain/entities/habit_completion.dart';
import 'package:habit_app/features/habit/domain/entities/habit_info.dart';
import 'package:habit_app/features/habit/domain/usecases/add_new_habit.dart';
import 'package:habit_app/features/habit/domain/usecases/add_new_habit_from_default.dart';
import 'package:habit_app/features/habit/domain/usecases/get_habits_of_day.dart';
import 'package:habit_app/features/habit/domain/usecases/set_habit_completions_status.dart';
import 'package:habit_app/generated/l10n.dart';
import 'package:injectable/injectable.dart';

part 'my_plan_event.dart';
part 'my_plan_state.dart';
part 'my_plan_bloc.freezed.dart';

@injectable
class MyPlanBloc extends Bloc<MyPlanEvent, MyPlanState> {
  final GetHabitsOfDay _getHabitsOfDay;
  final SetHabitCompletionStatus _setHabitCompletionStatus;
  final AddNewHabit _addNewHabit;
  final AddNewHabitFromDefault _addNewHabitFromDefault;
  MyPlanBloc(
    this._addNewHabitFromDefault,
    this._getHabitsOfDay,
    this._setHabitCompletionStatus,
    this._addNewHabit,
  ) : super(MyPlanState.initial()) {
    on<_GetSubscriptions>(_onGetSubscriptions);
    on<_ToggleHabitDoneStatus>(_onToggleHabitDoneStatus);
    on<_AddNewHabit>(_onAddNewHabit);
    on<_AddHabitFromDb>(_addHabitFromDb);
  }

  FutureOr<void> _onGetSubscriptions(
      _GetSubscriptions event, Emitter<MyPlanState> emit) async {
    final res = await _getHabitsOfDay(
        GetHabitsOfDayParams(date: event.date, locale: event.locale));

    res.fold((failure) {
      emit(MyPlanState.errorState(message: failure.message));
    }, (habits) {
      int numberOfDoneHabits = 0;
      for (int i = 0; i < habits.length; i++) {
        if (habits[i].isDone ?? false) {
          numberOfDoneHabits++;
        }
      }

      emit(MyPlanState.loaded(
        numberOfDoneHabits: numberOfDoneHabits,
        date: event.date,
        textOfDay: _textOfTheDay(event.date),
        dayStatus: DayStatus.fromDate(event.date),
        habitInfo: habits,
      ));
    });
  }

  Future<void> _onToggleHabitDoneStatus(
      _ToggleHabitDoneStatus event, Emitter<MyPlanState> emit) async {
    final res = await _setHabitCompletionStatus(HabitCompletion(
        habitId: event.habitId, isDone: event.isDone, date: event.date));
    res.fold((failure) {
      emit(MyPlanState.errorState(message: failure.message));
    }, (_) {
      add(MyPlanEvent.getSubscriptionsOn(
          date: event.date, locale: event.locale));
    });
  }

  Future<void> _onAddNewHabit(
      _AddNewHabit event, Emitter<MyPlanState> emit) async {
    if (event.title.isEmpty) {
      emit(MyPlanState.errorState(message: 'Title cannot be empty'));
      return;
    }
    if (event.description.isEmpty) {
      emit(MyPlanState.errorState(message: 'Description cannot be empty'));
      return;
    }
    if (event.takeMinutes == null) {
      emit(MyPlanState.errorState(message: 'Duration must exist'));
      return;
    }
    if (event.takeMinutes! <= 0) {
      emit(MyPlanState.errorState(message: 'Duration must be greater than 0'));
      return;
    }
    if (event.days.isEmpty) {
      emit(MyPlanState.errorState(message: 'Select at least one day'));
      return;
    }
    final failureOrSucccess = await _addNewHabit(AddNewHabitParams(
      title: event.title,
      description: event.description,
      takeMinutes: event.takeMinutes!,
      days: event.days,
      why: event.why,
      tips: event.tips,
    ));
    failureOrSucccess.fold((failure) {
      emit(MyPlanState.errorState(message: failure.message));
    }, (success) {
      final now = DateTime.now();
      emit(MyPlanState.created());
      add(MyPlanEvent.getSubscriptionsOn(
          locale: event.locale,
          date: DateTime(
            now.year,
            now.month,
            now.day,
          )));
    });
  }

  Future<void> _addHabitFromDb(
      _AddHabitFromDb event, Emitter<MyPlanState> emit) async {
    final failureOrSuccess = await _addNewHabitFromDefault(event.habitId);
    failureOrSuccess.fold((failure) {
      emit(MyPlanState.errorState(message: failure.message));
    }, (success) {
      final now = DateTime.now();
      emit(MyPlanState.created());
      add(MyPlanEvent.getSubscriptionsOn(
          locale: event.locale, date: DateTime(now.year, now.month, now.day)));
    });
  }

  String _textOfTheDay(DateTime date) {
    if (_isSameDate(date, DateTime.now())) {
      return S.current.yourTodaysPlan;
    } else if (_isSameDate(date, DateTime.now().subtract(Duration(days: 1)))) {
      return S.current.yourYesterdayPlan;
    } else if (_isSameDate(date, DateTime.now().add(Duration(days: 1)))) {
      return S.current.yourTomorrowPlan;
    } else {
      return S.current.yourPlanOfDayMonth(date.day, _monthName(date.month));
    }
  }

  bool _isSameDate(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  String _monthName(int month) {
    final months = [
      S.current.january,
      S.current.february,
      S.current.march,
      S.current.april,
      S.current.may,
      S.current.june,
      S.current.july,
      S.current.august,
      S.current.september,
      S.current.october,
      S.current.november,
      S.current.december,
    ];
    return months[month - 1];
  }
}
