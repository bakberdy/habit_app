import 'package:habit_app/core/usecase/usecase.dart';
import 'package:habit_app/core/utils/typedef.dart';
import 'package:habit_app/features/habit/domain/entities/habit_completion.dart';
import 'package:habit_app/features/habit/domain/repository/habit_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SetHabitCompletionStatus extends Usecase<void, HabitCompletion> {
  final HabitRepo _myPlanRepo;

  SetHabitCompletionStatus(this._myPlanRepo);
  @override
  ResultFuture<void> call(HabitCompletion params) {
    return _myPlanRepo.setHabitCompletionStatus(
        isDone: params.isDone, habitId: params.habitId, date: params.date);
  }
}
