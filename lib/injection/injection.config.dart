// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_bloc/flutter_bloc.dart' as _i331;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart' as _i162;
import 'package:talker_flutter/talker_flutter.dart' as _i207;

import '../core/core.dart' as _i156;
import '../core/database/app_database.dart' as _i935;
import '../core/network/dio_client.dart' as _i393;
import '../features/habit/data/datasource/habit_local_data_source.dart'
    as _i655;
import '../features/habit/data/repository/habit_repo_impl.dart' as _i687;
import '../features/habit/domain/repository/habit_repo.dart' as _i166;
import '../features/habit/domain/usecases/add_new_habit.dart' as _i65;
import '../features/habit/domain/usecases/add_new_habit_from_default.dart'
    as _i618;
import '../features/habit/domain/usecases/get_categories.dart' as _i1031;
import '../features/habit/domain/usecases/get_category_info.dart' as _i545;
import '../features/habit/domain/usecases/get_habit_by_id.dart' as _i740;
import '../features/habit/domain/usecases/get_habit_subscription_with_date_and_habit_id.dart'
    as _i1055;
import '../features/habit/domain/usecases/get_habits_done_percentage.dart'
    as _i854;
import '../features/habit/domain/usecases/get_habits_of_day.dart' as _i825;
import '../features/habit/domain/usecases/search_habit_usecase.dart' as _i680;
import '../features/habit/domain/usecases/set_habit_completions_status.dart'
    as _i56;
import '../features/habit/presentation/bloc/catalog/catalog_bloc.dart' as _i216;
import '../features/habit/presentation/bloc/habit_map/habit_map_bloc.dart'
    as _i257;
import '../features/habit/presentation/bloc/my_plan/my_plan_bloc.dart' as _i836;
import '../features/habit/presentation/bloc/search/search_bloc.dart' as _i373;
import '../features/home/data/data_source/home_local_data_source.dart' as _i200;
import '../features/home/data/repository/home_repo_impl.dart' as _i488;
import '../features/home/domain/repository/home_repository.dart' as _i855;
import '../features/home/domain/usecases/get_daily_quote.dart' as _i457;
import '../features/home/presentation/bloc/home_bloc.dart' as _i824;
import 'injection.dart' as _i464;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => appModule.sharedPreferences,
      preResolve: true,
    );
    gh.singleton<_i207.Talker>(() => appModule.talker);
    gh.singleton<_i331.BlocObserver>(() => appModule.talkerBlocLogger);
    gh.singleton<_i207.TalkerRouteObserver>(() => appModule.routeObserver);
    gh.singleton<_i361.Dio>(() => appModule.dio);
    gh.singleton<_i162.TalkerDioLogger>(() => appModule.talkerDioLogger);
    gh.singleton<_i156.AppRouter>(() => appModule.appRouter);
    gh.lazySingleton<_i200.HomeLocalDataSource>(
        () => _i200.HomeLocalDataSourceImpl());
    gh.lazySingleton<_i935.AppDatabase>(
        () => _i935.AppDatabase(gh<_i207.Talker>()));
    gh.lazySingleton<_i655.HabitLocalDataSource>(
        () => _i655.HabitLocalDataSourceImpl(
              gh<_i935.AppDatabase>(),
              gh<_i207.Talker>(),
            ));
    gh.singleton<_i393.DioClient>(() => _i393.DioClient(
          gh<_i361.Dio>(),
          gh<_i162.TalkerDioLogger>(),
        ));
    gh.lazySingleton<_i855.HomeRepository>(
        () => _i488.HomeRepoImpl(gh<_i200.HomeLocalDataSource>()));
    gh.lazySingleton<_i166.HabitRepo>(
        () => _i687.HabitRepoImpl(gh<_i655.HabitLocalDataSource>()));
    gh.lazySingleton<_i1055.GetHabitSubscriptionWithDateAndHabitId>(() =>
        _i1055.GetHabitSubscriptionWithDateAndHabitId(gh<_i166.HabitRepo>()));
    gh.lazySingleton<_i545.GetCategoryInfo>(
        () => _i545.GetCategoryInfo(gh<_i166.HabitRepo>()));
    gh.lazySingleton<_i618.AddNewHabitFromDefault>(
        () => _i618.AddNewHabitFromDefault(gh<_i166.HabitRepo>()));
    gh.lazySingleton<_i740.GetHabitById>(
        () => _i740.GetHabitById(gh<_i166.HabitRepo>()));
    gh.lazySingleton<_i1031.GetCategories>(
        () => _i1031.GetCategories(gh<_i166.HabitRepo>()));
    gh.lazySingleton<_i680.SearchHabitUsecase>(
        () => _i680.SearchHabitUsecase(gh<_i166.HabitRepo>()));
    gh.lazySingleton<_i854.GetHabitsDonePercentage>(
        () => _i854.GetHabitsDonePercentage(gh<_i166.HabitRepo>()));
    gh.lazySingleton<_i457.GetDailyQuote>(
        () => _i457.GetDailyQuote(gh<_i855.HomeRepository>()));
    gh.factory<_i257.HabitMapBloc>(
        () => _i257.HabitMapBloc(gh<_i854.GetHabitsDonePercentage>()));
    gh.lazySingleton<_i65.AddNewHabit>(
        () => _i65.AddNewHabit(gh<_i166.HabitRepo>()));
    gh.lazySingleton<_i825.GetHabitsOfDay>(
        () => _i825.GetHabitsOfDay(gh<_i166.HabitRepo>()));
    gh.lazySingleton<_i56.SetHabitCompletionStatus>(
        () => _i56.SetHabitCompletionStatus(gh<_i166.HabitRepo>()));
    gh.factory<_i824.HomeBloc>(() => _i824.HomeBloc(gh<_i457.GetDailyQuote>()));
    gh.factory<_i216.CatalogBloc>(() => _i216.CatalogBloc(
          gh<_i1031.GetCategories>(),
          gh<_i545.GetCategoryInfo>(),
          gh<_i740.GetHabitById>(),
          gh<_i1055.GetHabitSubscriptionWithDateAndHabitId>(),
        ));
    gh.factory<_i373.SearchBloc>(
        () => _i373.SearchBloc(gh<_i680.SearchHabitUsecase>()));
    gh.factory<_i836.MyPlanBloc>(() => _i836.MyPlanBloc(
          gh<_i618.AddNewHabitFromDefault>(),
          gh<_i825.GetHabitsOfDay>(),
          gh<_i56.SetHabitCompletionStatus>(),
          gh<_i65.AddNewHabit>(),
        ));
    return this;
  }
}

class _$AppModule extends _i464.AppModule {}
