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
import '../core/database/app_database.dart' as _i935;
import '../core/network/dio_client.dart' as _i393;
import '../features/habit/data/datasource/my_plan_local_data_source.dart'
    as _i462;
import '../features/habit/data/repository/my_plan_repo_impl.dart' as _i672;
import '../features/habit/domain/repository/habit_repo.dart' as _i959;
import '../features/habit/domain/usecases/add_new_habit.dart' as _i663;
import '../features/habit/domain/usecases/get_habits_of_day.dart' as _i239;
import '../features/habit/domain/usecases/set_habit_completions_status.dart'
    as _i332;
import '../features/habit/presentation/bloc/habit_bloc.dart' as _i928;
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
    gh.lazySingleton<_i935.AppDatabase>(() => _i935.AppDatabase());
    gh.lazySingleton<_i462.MyPlanLocalDataSource>(
        () => _i462.MyPlanLocalDataSourceImpl(
              gh<_i935.AppDatabase>(),
              gh<_i207.Talker>(),
            ));
    gh.singleton<_i393.DioClient>(() => _i393.DioClient(
          gh<_i361.Dio>(),
          gh<_i162.TalkerDioLogger>(),
        ));
    gh.lazySingleton<_i959.HabitRepo>(
        () => _i672.MyPlanRepoImpl(gh<_i462.MyPlanLocalDataSource>()));
    gh.lazySingleton<_i663.AddNewHabit>(
        () => _i663.AddNewHabit(gh<_i959.HabitRepo>()));
    gh.lazySingleton<_i239.GetHabitsOfDay>(
        () => _i239.GetHabitsOfDay(gh<_i959.HabitRepo>()));
    gh.lazySingleton<_i332.SetHabitCompletionStatus>(
        () => _i332.SetHabitCompletionStatus(gh<_i959.HabitRepo>()));
    gh.factory<_i928.MyPlanBloc>(() => _i928.MyPlanBloc(
          gh<_i239.GetHabitsOfDay>(),
          gh<_i332.SetHabitCompletionStatus>(),
          gh<_i663.AddNewHabit>(),
        ));
    return this;
  }
}

class _$AppModule extends _i464.AppModule {}
