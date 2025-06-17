import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/my_plan/domain/entities/habit_info.dart';
import 'package:habit_app/features/my_plan/domain/repository/my_plan_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetHabitsOfDay extends Usecase<List<HabitInfo>, DateTime> {
  final MyPlanRepo _myPlanRepo;

  GetHabitsOfDay(this._myPlanRepo);
  @override
  ResultFuture<List<HabitInfo>> call(DateTime params) async {
    return await _myPlanRepo.getHabitSubscriptionsOfDay(params);
  }
}
