import 'dart:async';
import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_app/features/habit/domain/entities/habit_entity.dart';
import 'package:habit_app/features/habit/domain/usecases/search_habit_usecase.dart';
import 'package:injectable/injectable.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchHabitUsecase _searchHabitUsecase;
  SearchBloc(this._searchHabitUsecase) : super(SearchState.initial()) {
    on<_SearchEvent>(_onSearch);
    on<_Clear>(_onClear);
  }

  Future<void> _onSearch(_SearchEvent event, Emitter<SearchState> emit) async {
    final failureOrSuccess = await _searchHabitUsecase(SearchHabitParams(
        query: event.query,
        categoryId: event.categoryId,
        locale: event.locale));
    failureOrSuccess.fold(
      (failure) {
        emit(SearchState.error());
      },
      (success) {
        emit(SearchState.searching(query: event.query, habits: success));
      },
    );
  }

  FutureOr<void> _onClear(_Clear event, Emitter<SearchState> emit) {
    emit(SearchState.initial());
  }
}
