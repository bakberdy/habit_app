import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/home/domain/repository/home_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SaveUserName extends Usecase<void, String> {
  final HomeRepository _repository;

  SaveUserName(this._repository);
  @override
  ResultFuture<void> call(String params) {
    return _repository.saveUsername(params);
  }
}
