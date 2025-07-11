import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/injection/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashRedirectPage extends StatelessWidget {
  const SplashRedirectPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final prefs = sl<SharedPreferences>();
      final username = prefs.getString('username');

      if (username == null) {
        context.go('/choose_lang');
      } else {
        context.go('/home');
      }
    });

    return const Scaffold(
      backgroundColor: AppColors.primary,
    );
  }
}
