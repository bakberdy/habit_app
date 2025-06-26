import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/habit/domain/entities/category_entity.dart';
import 'package:habit_app/features/habit/domain/entities/habit_entity.dart';
import 'package:habit_app/features/habit/domain/usecases/get_categories.dart';
import 'package:habit_app/features/habit/domain/usecases/get_category_info.dart';
import 'package:habit_app/features/habit/domain/usecases/get_habit_by_id.dart';
import 'package:injectable/injectable.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';
part 'catalog_bloc.freezed.dart';

@injectable
class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final GetCategories _getCategories;
  final GetCategoryInfo _getCategoryInfo;
  final GetHabitById _getHabitById;
  CatalogBloc(this._getCategories, this._getCategoryInfo, this._getHabitById)
      : super(CatalogState.initial()) {
    on<_GetCategories>(_onGetCategories);
    on<_LoadCategory>(_onLoadCategory);
    on<_LoadHabit>(_onLoadHabit);
  }

  Future<void> _onGetCategories(
      _GetCategories event, Emitter<CatalogState> emit) async {
    final categories = await _getCategories(NoParams());
    categories.fold((failure) {
      emit(CatalogState.error(failure.message));
    }, (success) {
      emit(CatalogState.loaded(categories: success));
    });
  }

  FutureOr<void> _onLoadCategory(
      _LoadCategory event, Emitter<CatalogState> emit) async {
    final failureOrSuccess = await _getCategoryInfo(event.categoryId);
    failureOrSuccess.fold((failure) {
      emit(CatalogState.error(failure.message));
    }, (success) {
      emit(CatalogState.categoryLoaded(
          habits: success.habits, category: success.category));
    });
  }

  Future<void> _onLoadHabit(
      _LoadHabit event, Emitter<CatalogState> emit) async {
    final failureOrSuccess = await _getHabitById(event.habitId);
    failureOrSuccess.fold((failure) {
      emit(CatalogState.error(failure.message));
    }, (success) {
      emit(CatalogState.habitLoaded(habit: success));
    });
  }
}
