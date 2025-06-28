import 'dart:ui';

import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/settings/domain/repository/settings_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SetLocale extends Usecase<void, Locale> {
  final SettingsRepository _repository;

  SetLocale(this._repository);

  @override
  ResultFuture<void> call(Locale params) {
    return _repository.setLocale(params);
  }
}
