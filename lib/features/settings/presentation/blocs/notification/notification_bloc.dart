import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_app/core/usecase/usecase.dart';
import 'package:habit_app/features/settings/domain/usecases/get_daily_enabled.dart';
import 'package:habit_app/features/settings/domain/usecases/get_push_enabled.dart';
import 'package:habit_app/features/settings/domain/usecases/set_daily_enabled.dart';
import 'package:habit_app/features/settings/domain/usecases/set_push_enabled.dart';
import 'package:habit_app/injection/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final SetDailyEnabled _setDailyEnabled;
  final SetPushEnabled _setPushEnabled;
  final GetPushEnabled _getPushEnabled;
  final GetDailyEnabled _getDailyEnabled;
  NotificationBloc(
    this._setDailyEnabled,
    this._setPushEnabled,
    this._getPushEnabled,
    this._getDailyEnabled,
  ) : super(NotificationState.initial()) {
    on<NotificationEvent>(_onEvent);
  }

  Future<void> _onEvent(
      NotificationEvent event, Emitter<NotificationState> emit) async {
    switch (event) {
      case _SetDailyEnabled enabled:
        final failureOrVoid = await _setDailyEnabled(enabled.enabled);
        failureOrVoid.fold(
          (failure) => sl<Talker>()
              .error('Failed to set daily enabled: ${failure.message}'),
          (_) {
            emit(state.copyWith(dailyEnabled: enabled.enabled));
            add(NotificationEvent.loadSettings());
          },
        );
        break;
      case _SetPushEnabled enabled:
        final failureOrVoid = await _setPushEnabled(enabled.enabled);
        failureOrVoid.fold(
          (failure) => sl<Talker>()
              .error('Failed to set push enabled: ${failure.message}'),
          (_) {
            emit(state.copyWith(pushEnabled: enabled.enabled));
            add(NotificationEvent.loadSettings());
          },
        );
        break;
      case _LoadSettings _:
        emit(state.copyWith(isLoading: true));

        final pushResult = await _getPushEnabled(NoParams());
        final dailyResult = await _getDailyEnabled(NoParams());

        final push = pushResult.getOrElse(() => false);
        final daily = dailyResult.getOrElse(() => false);

        emit(state.copyWith(
          pushEnabled: push,
          dailyEnabled: daily,
          isLoading: false,
        ));
        break;
    }
  }
}
