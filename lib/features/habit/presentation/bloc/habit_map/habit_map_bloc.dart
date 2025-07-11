import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_app/core/usecase/usecase.dart';
import 'package:habit_app/features/habit/domain/usecases/get_habits_done_percentage.dart';
import 'package:injectable/injectable.dart';

part 'habit_map_event.dart';
part 'habit_map_state.dart';
part 'habit_map_bloc.freezed.dart';

@injectable
class HabitMapBloc extends Bloc<HabitMapEvent, HabitMapState> {
  final GetHabitsDonePercentage _getHabitsDonePercentage;
  HabitMapBloc(this._getHabitsDonePercentage) : super(HabitMapState.loading()) {
    on<_Load>(_onLoad);
  }

  FutureOr<void> _onLoad(_Load event, Emitter<HabitMapState> emit) async {
    emit(HabitMapState.loading());
    final result = await _getHabitsDonePercentage(NoParams());
    result.fold(
      (failure) {},
      (success) {
        emit(HabitMapState.loaded(dateset: convertPercentageMap(success)));
      },
    );
  }

  Map<DateTime, int> convertPercentageMap(Map<DateTime, double> input) {
    final result = <DateTime, int>{};

    input.forEach((date, value) {
      if (value == 0.0) return;

      int newValue;
      if (value < 0.25) {
        newValue = 1;
      } else if (value < 0.5) {
        newValue = 2;
      } else if (value < 0.75) {
        newValue = 3;
      } else {
        newValue = 4;
      }

      result[date] = newValue;
    });

    return result;
  }
}
