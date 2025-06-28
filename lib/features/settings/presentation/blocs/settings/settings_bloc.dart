import 'dart:async';
import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_app/features/settings/domain/usecases/set_locale.dart';
import 'package:injectable/injectable.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SetLocale _setLocale;
  SettingsBloc(this._setLocale) : super(SettingsState.initial()) {
    on<_SetLocale>(_onSetLocale);
  }

  FutureOr<void> _onSetLocale(
      _SetLocale event, Emitter<SettingsState> emit) async {
    await _setLocale(event.locale);
  }
}
