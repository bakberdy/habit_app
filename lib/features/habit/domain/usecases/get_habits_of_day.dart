import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/habit/domain/entities/habit_info.dart';
import 'package:habit_app/features/habit/domain/repository/habit_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetHabitsOfDay extends Usecase<List<HabitInfo>, DateTime> {
  final HabitRepo _myPlanRepo;

  GetHabitsOfDay(this._myPlanRepo);
  @override
  ResultFuture<List<HabitInfo>> call(DateTime params) async {
    return await _myPlanRepo.getHabitSubscriptionsOfDay(params);
  }
}
