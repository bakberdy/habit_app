import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/habit/domain/repository/habit_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AddNewHabitFromDefault extends Usecase<void, int> {
  final HabitRepo _repo;

  AddNewHabitFromDefault(this._repo);
  @override
  ResultFuture<void> call(int params) {
    return _repo.addNewHabitFromDb(params);
  }
}
