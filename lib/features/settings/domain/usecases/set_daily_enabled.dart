import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/settings/domain/repository/settings_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SetDailyEnabled extends Usecase<void, bool> {
  final SettingsRepository _repository;

  SetDailyEnabled(this._repository);
  @override
  ResultFuture<void> call(bool params) {
    return _repository.setDailyEnabled(params);
  }
}
