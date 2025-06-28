import 'dart:async';
import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_app/features/home/domain/entites/quote_entity.dart';
import 'package:habit_app/features/home/domain/usecases/get_daily_quote.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetDailyQuote _getDailyQuote;
  HomeBloc(this._getDailyQuote) : super(HomeState.initial()) {
    on<_LoadDailyQuote>(_onLoadDailyQiote);
  }

  Future<void> _onLoadDailyQiote(
      _LoadDailyQuote event, Emitter<HomeState> emit) async {
    final quoteOrFailure = await _getDailyQuote(event.locale);
    quoteOrFailure.fold((l) {}, (quote) {
      emit(HomeState.loaded(quote: quote));
    });
  }
}
