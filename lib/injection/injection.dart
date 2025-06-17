import "package:habit_app/core/core.dart";
import "package:dio/dio.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:get_it/get_it.dart";
import "package:injectable/injectable.dart";
import "package:talker_bloc_logger/talker_bloc_logger_observer.dart";
import "package:talker_dio_logger/talker_dio_logger_interceptor.dart";
import "package:talker_dio_logger/talker_dio_logger_settings.dart";
import "package:talker_flutter/talker_flutter.dart";

import 'injection.config.dart';

final sl = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() {
  sl.init();
  // sl<AuthService>().init();
}

@module
abstract class AppModule {
  // @singleton
  // SupabaseClient get supabaseClient => Supabase.instance.client;

  @singleton
  Talker get talker => TalkerFlutter.init();

  @singleton
  BlocObserver get talkerBlocLogger => TalkerBlocObserver(talker: talker);

  @singleton
  TalkerRouteObserver get routeObserver => TalkerRouteObserver(talker);

  @singleton
  Dio get dio => Dio();

  @singleton
  TalkerDioLogger get talkerDioLogger => TalkerDioLogger(
      talker: talker,
      settings: TalkerDioLoggerSettings(
          printRequestHeaders: true,
          printRequestData: true,
          printResponseTime: true,
          printRequestExtra: true));

  @singleton
  AppRouter get appRouter => AppRouter(talker: talker);
}
