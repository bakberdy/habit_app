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
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart' as _i162;
import 'package:talker_flutter/talker_flutter.dart' as _i207;

import '../core/core.dart' as _i156;
import '../core/network/dio_client.dart' as _i393;
import '../features/my_plan/data/datasource/local_data_source.dart' as _i969;
import '../features/my_plan/data/repository/my_plan_repo_impl.dart' as _i672;
import '../features/my_plan/domain/repository/my_plan_repo.dart' as _i959;
import '../features/my_plan/domain/usecases/add_new_habit.dart' as _i663;
import '../features/my_plan/domain/usecases/get_habits_of_day.dart' as _i239;
import '../features/my_plan/domain/usecases/toggle_habit_status.dart' as _i110;
import '../features/my_plan/presentation/bloc/my_plan_bloc.dart' as _i928;
import 'injection.dart' as _i464;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.singleton<_i207.Talker>(() => appModule.talker);
    gh.singleton<_i331.BlocObserver>(() => appModule.talkerBlocLogger);
    gh.singleton<_i207.TalkerRouteObserver>(() => appModule.routeObserver);
    gh.singleton<_i361.Dio>(() => appModule.dio);
    gh.singleton<_i162.TalkerDioLogger>(() => appModule.talkerDioLogger);
    gh.singleton<_i156.AppRouter>(() => appModule.appRouter);
    gh.lazySingleton<_i969.LocalDataSource>(() => _i969.LocalDataSourceImpl());
    gh.lazySingleton<_i959.MyPlanRepo>(
        () => _i672.MyPlanRepoImpl(gh<_i969.LocalDataSource>()));
    gh.singleton<_i393.DioClient>(() => _i393.DioClient(
          gh<_i361.Dio>(),
          gh<_i162.TalkerDioLogger>(),
        ));
    gh.lazySingleton<_i110.ToggleHabitStatus>(
        () => _i110.ToggleHabitStatus(gh<_i959.MyPlanRepo>()));
    gh.lazySingleton<_i663.AddNewHabit>(
        () => _i663.AddNewHabit(gh<_i959.MyPlanRepo>()));
    gh.lazySingleton<_i239.GetHabitsOfDay>(
        () => _i239.GetHabitsOfDay(gh<_i959.MyPlanRepo>()));
    gh.factory<_i928.MyPlanBloc>(() => _i928.MyPlanBloc(
          gh<_i239.GetHabitsOfDay>(),
          gh<_i110.ToggleHabitStatus>(),
          gh<_i663.AddNewHabit>(),
        ));
    return this;
  }
}

class _$AppModule extends _i464.AppModule {}
