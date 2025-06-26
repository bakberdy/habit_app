import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/habit/domain/entities/category_info_entity.dart';
import 'package:habit_app/features/habit/domain/repository/habit_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCategoryInfo extends Usecase<CategoryInfoEntity, int> {
  final HabitRepo _repo;

  GetCategoryInfo(this._repo);
  @override
  ResultFuture<CategoryInfoEntity> call(int params) {
    return _repo.getCategory(params);
  }
}
