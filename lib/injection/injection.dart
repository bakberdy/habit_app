import "package:firebase_messaging/firebase_messaging.dart";
import "package:flutter_local_notifications/flutter_local_notifications.dart";
import "package:habit_app/core/core.dart";
import "package:dio/dio.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:get_it/get_it.dart";
import "package:injectable/injectable.dart";
import "package:shared_preferences/shared_preferences.dart";
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
Future<void> configureDependencies() async {
  await sl.init();
}

@module
abstract class AppModule {
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

  @lazySingleton
  FlutterLocalNotificationsPlugin get flutterLocalNotificationsPlugin =>
      FlutterLocalNotificationsPlugin();

  @lazySingleton
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;

  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
}
