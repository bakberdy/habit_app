import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:habit_app/core/core.dart';
import 'package:habit_app/core/providers/locale_provider.dart';
import 'package:habit_app/generated/l10n.dart';
import 'package:habit_app/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  Bloc.observer = sl<BlocObserver>();
  runApp(ChangeNotifierProvider(
    create: (_) => LocaleProvider(
        WidgetsBinding.instance.platformDispatcher.locale,
        sl<SharedPreferences>()),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Provider.of<LocaleProvider>(context).locale,
      title: 'Tal≥ky',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routerConfig: sl<AppRouter>().router,
    );
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
