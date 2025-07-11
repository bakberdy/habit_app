import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:habit_app/core/core.dart';
import 'package:habit_app/core/bloc/locale_cubit.dart';
import 'package:habit_app/features/settings/data/datasource/local_notifications_service.dart';
import 'package:habit_app/features/settings/data/datasource/push_notifications_service.dart';
import 'package:habit_app/firebase_options.dart';
import 'package:habit_app/generated/l10n.dart';
import 'package:habit_app/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // 🛠️ Сначала инициализация binding'а

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await configureDependencies();

  await sl<PushNotificationsService>().init();
  await sl<LocalNotificationsService>().init('en');

  Bloc.observer = sl<BlocObserver>();

  runApp(
    BlocProvider(
      create: (_) => LocaleCubit(sl<SharedPreferences>()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, LocaleState>(builder: (context, state) {
      return MaterialApp.router(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        locale: state.locale,
        title: 'Adet',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        routerConfig: sl<AppRouter>().router,
      );
    });
  }
}

class AppLocalizations {
  static List<Locale> supportedLocales = [
    Locale('kk', 'KZ'),
    Locale('en', 'US'),
    Locale('ru', 'RU'),
  ];

  static Locale get kazakh => const Locale('kk', 'KZ');
  static Locale get english => const Locale('en', 'US');
  static Locale get russian => const Locale('ru', 'RU');
}
