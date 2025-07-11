import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/settings/domain/repository/settings_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SetPushEnabled extends Usecase<void, bool> {
  final SettingsRepository _repository;

  SetPushEnabled(this._repository);

  @override
  ResultFuture<void> call(bool params) {
    return _repository.setPushEnabled(params);
  }
}
