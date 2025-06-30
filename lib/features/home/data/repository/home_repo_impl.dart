import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:habit_app/core/utils/typedef.dart';
import 'package:habit_app/features/home/data/data_source/home_local_data_source.dart';
import 'package:habit_app/features/home/domain/entites/quote_entity.dart';
import 'package:habit_app/features/home/domain/repository/home_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HomeRepository)
class HomeRepoImpl extends HomeRepository {
  final HomeLocalDataSource _localDataSource;

  HomeRepoImpl(this._localDataSource);
  @override
  ResultFuture<QuoteEntity> getDailyQuote(Locale locale) async {
    return Right(await _localDataSource.getDailyQuote(locale));
  }

  @override
  ResultFuture<String?> getUsername() async {
    return Right(await _localDataSource.getUsername());
  }

  @override
  ResultVoid saveUsername(String username) async {
    await _localDataSource.saveUsername(username: username);
    return Right(null);
  }
}
