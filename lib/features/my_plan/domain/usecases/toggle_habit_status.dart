import 'package:habit_app/core/usecase/usecase.dart';
import 'package:habit_app/core/utils/typedef.dart';
import 'package:habit_app/features/my_plan/domain/entities/habit_completion.dart';
import 'package:habit_app/features/my_plan/domain/repository/my_plan_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ToggleHabitStatus extends Usecase<void, HabitCompletion> {
  final MyPlanRepo _myPlanRepo;

  ToggleHabitStatus(this._myPlanRepo);
  @override
  ResultFuture<void> call(HabitCompletion params) {
    return _myPlanRepo.toggleHabitStatus(
        isDone: params.isDone, habitId: params.habitId, date: params.date);
  }
}
