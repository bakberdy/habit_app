import 'dart:ui';

import 'package:habit_app/core/core.dart';
import 'package:habit_app/features/habit/domain/entities/category_info_entity.dart';
import 'package:habit_app/features/habit/domain/repository/habit_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCategoryInfo
    extends Usecase<CategoryInfoEntity, GetCategoryInfoParams> {
  final HabitRepo _repo;

  GetCategoryInfo(this._repo);
  @override
  ResultFuture<CategoryInfoEntity> call(GetCategoryInfoParams params) {
    return _repo.getCategory(params.categoryId, params.locale);
  }
}

class GetCategoryInfoParams {
  final int categoryId;
  final Locale locale;

  GetCategoryInfoParams({required this.categoryId, required this.locale});
}
