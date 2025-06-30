import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/home/domain/repository/home_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetUserName extends Usecase<String?, NoParams> {
  final HomeRepository _repo;

  GetUserName(this._repo);
  @override
  ResultFuture<String?> call(NoParams params) {
    return _repo.getUsername();
  }
}
