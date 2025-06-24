import 'package:habit_app/core/core.dart';
import 'package:habit_app/core/shared/enums/weekday.dart';
import 'package:habit_app/features/habit/domain/entities/tip_entity.dart';
import 'package:habit_app/features/habit/domain/repository/habit_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AddNewHabit extends Usecase<void, AddNewHabitParams> {
  final HabitRepo _myPlanRepo;

  AddNewHabit(this._myPlanRepo);
  @override
  ResultFuture<void> call(AddNewHabitParams params) async {
    return await _myPlanRepo.addNewHabit(
      title: params.title,
      description: params.description,
      takeMinutes: params.takeMinutes,
      days: params.days,
      why: params.why,
      tips: params.tips,
    );
  }
}

class AddNewHabitParams {
  final String title;
  final String description;
  final int takeMinutes;
  final List<Weekday> days;
  final String? why;
  final List<TipEntity>? tips;

  AddNewHabitParams(
      {required this.title,
      required this.description,
      required this.takeMinutes,
      required this.days,
      required this.why,
      required this.tips});
}
