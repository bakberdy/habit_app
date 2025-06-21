import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_app/core/shared/enums/weekday.dart';
import 'package:habit_app/features/catalog/domain/entities/tip_entity.dart';
import 'package:habit_app/features/my_plan/domain/entities/habit_completion.dart';
import 'package:habit_app/features/my_plan/domain/entities/habit_info.dart';
import 'package:habit_app/features/my_plan/domain/usecases/add_new_habit.dart';
import 'package:habit_app/features/my_plan/domain/usecases/get_habits_of_day.dart';
import 'package:habit_app/features/my_plan/domain/usecases/toggle_habit_status.dart';
import 'package:injectable/injectable.dart';

part 'my_plan_event.dart';
part 'my_plan_state.dart';
part 'my_plan_bloc.freezed.dart';

@injectable
class MyPlanBloc extends Bloc<MyPlanEvent, MyPlanState> {
  final GetHabitsOfDay _getHabitsOfDay;
  final ToggleHabitStatus _toggleHabitStatus;
  final AddNewHabit _addNewHabit;
  MyPlanBloc(
    this._getHabitsOfDay,
    this._toggleHabitStatus,
    this._addNewHabit,
  ) : super(MyPlanState.initial()) {
    on<_GetSubscriptions>(_onGetSubscriptions);
    on<_ToggleHabitDoneStatus>(_onToggleHabitDoneStatus);
    on<_AddNewHabit>(_onAddNewHabit);
  }

  FutureOr<void> _onGetSubscriptions(
      _GetSubscriptions event, Emitter<MyPlanState> emit) async {
    final res = await _getHabitsOfDay(event.date);

    res.fold((failure) {}, (habits) {
      emit(MyPlanState.loaded(
        date: event.date,
        textOfDay: _textOfTheDay(event.date),
        dayStatus: DayStatus.fromDate(event.date),
        habitInfo: habits,
      ));
    });
  }

  Future<void> _onToggleHabitDoneStatus(
      _ToggleHabitDoneStatus event, Emitter<MyPlanState> emit) async {
    final res = await _toggleHabitStatus(HabitCompletion(
        habitId: event.habitId, isDone: event.isDone, date: event.date));
    res.fold((failure) {}, (_) {
      add(MyPlanEvent.getSubscriptionsOn(date: event.date));
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
    if (event.why != null && event.why!.isEmpty) {
      emit(MyPlanState.errorState(
          message: 'Reason cannot be empty if provided'));
      return;
    }
    await _addNewHabit(AddNewHabitParams(
      title: event.title,
      description: event.description,
      takeMinutes: event.takeMinutes!,
      days: event.days,
      why: event.why,
      tips: event.tips,
    ));
  }

  String _textOfTheDay(DateTime date) {
    if (_isSameDate(date, DateTime.now())) {
      return "Your today's plan";
    } else if (_isSameDate(date, DateTime.now().subtract(Duration(days: 1)))) {
      return "Your yesterday plan";
    } else if (_isSameDate(date, DateTime.now().add(Duration(days: 1)))) {
      return "Your tomorrow plan";
    } else {
      return 'Your plan of ${date.day} ${_monthName(date.month)}';
    }
  }

  bool _isSameDate(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  String _monthName(int month) {
    const months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    return months[month - 1];
  }
}
