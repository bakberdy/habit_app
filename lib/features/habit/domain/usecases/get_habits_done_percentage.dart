import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/habit/domain/repository/habit_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetHabitsDonePercentage extends Usecase<Map<DateTime, double>, NoParams> {
  final HabitRepo _repo;

  GetHabitsDonePercentage(this._repo);
  @override
  ResultFuture<Map<DateTime, double>> call(NoParams params) {
    return _repo.getHabitsDonePercentage();
  }
}
