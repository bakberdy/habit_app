import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/settings/domain/repository/settings_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetPushEnabled extends Usecase<bool, NoParams> {
  final SettingsRepository _repository;

  GetPushEnabled(this._repository);
  @override
  ResultFuture<bool> call(NoParams params) {
    return _repository.getPushEnabled();
  }
}
