import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/habit/domain/entities/habit_entity.dart';
import 'package:habit_app/features/habit/domain/repository/habit_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SearchHabitUsecase extends Usecase<List<HabitEntity>, SearchHabitParams> {
  final HabitRepo _repo;
  SearchHabitUsecase(this._repo);
  @override
  ResultFuture<List<HabitEntity>> call(SearchHabitParams params) {
    return _repo.searchHabit(
        query: params.query, categoryId: params.categoryId);
  }
}

class SearchHabitParams {
  final String query;
  final int? categoryId;

  SearchHabitParams({required this.query, required this.categoryId});
}
