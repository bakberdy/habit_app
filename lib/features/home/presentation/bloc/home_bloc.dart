import 'dart:async';
import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_app/core/usecase/usecase.dart';
import 'package:habit_app/features/home/domain/entites/quote_entity.dart';
import 'package:habit_app/features/home/domain/usecases/get_daily_quote.dart';
import 'package:habit_app/features/home/domain/usecases/get_user_name.dart';
import 'package:habit_app/features/home/domain/usecases/save_user_name.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetDailyQuote _getDailyQuote;
  final SaveUserName _saveUserName;
  final GetUserName _getUserName;
  HomeBloc(
    this._getDailyQuote,
    this._saveUserName,
    this._getUserName,
  ) : super(HomeState.initial()) {
    on<_LoadData>(_onLoadData);
    on<_SetUsername>(_setUsername);
  }

  Future<void> _onLoadData(_LoadData event, Emitter<HomeState> emit) async {
    final userNameResult = await _getUserName(NoParams());
    final quoteResult = await _getDailyQuote(event.locale);

    userNameResult.fold(
      (failure) => emit(HomeState.error(errorMessage: failure.message)),
      (userName) {
        quoteResult.fold(
          (failure) => emit(HomeState.error(errorMessage: failure.message)),
          (quote) => emit(
            HomeState.loaded(
              username: userName,
              quote: quote,
            ),
          ),
        );
      },
    );
  }

  Future<void> _setUsername(_SetUsername event, Emitter<HomeState> emit) async {
    final failureOrSucces = await _saveUserName(event.username);
    failureOrSucces.fold(
      (failure) {
        emit(HomeState.error(errorMessage: failure.message));
      },
      (success) {
        add(_LoadData(locale: event.locale));
      },
    );
  }
}
