import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habit_app/core/providers/locale_provider.dart';
import 'package:habit_app/core/shared/widgets/custom_filled_button.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:habit_app/generated/l10n.dart';
import 'package:habit_app/main.dart';

class ChooseLanguagePage extends StatelessWidget {
  const ChooseLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChooseLanguagePageContent();
  }
}

class ChooseLanguagePageContent extends StatefulWidget {
  const ChooseLanguagePageContent({super.key});

  @override
  State<ChooseLanguagePageContent> createState() =>
      _ChooseLanguagePageContentState();
}

class _ChooseLanguagePageContentState extends State<ChooseLanguagePageContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Dailo',
                style: GoogleFonts.lalezar(fontSize: 100, color: Colors.white),
              ),
              Text(
                S.of(context).chooseALanguage,
                style: AppTextTheme.h4.copyWith(color: Colors.white),
              ),
              SizedBox(height: 10),
              CustomFilledButton(
                  title: '🇬🇧 English (en)',
                  onPressed: () {
                    context
                        .read<LocaleProvider>()
                        .setLocale(AppLocalizations.english);
                    context.goNamed('enter_name');
                  },
                  borderColor: AppColors.white,
                  titleColor: AppColors.white,
                  backgroundColor: AppColors.transparent),
              SizedBox(height: 10),
              CustomFilledButton(
                  title: '🇰🇿 Қазақша (kk)',
                  onPressed: () {
                    context
                        .read<LocaleProvider>()
                        .setLocale(AppLocalizations.kazakh);
                    context.goNamed('enter_name');
                  },
                  borderColor: AppColors.white,
                  titleColor: AppColors.white,
                  backgroundColor: AppColors.transparent),
              SizedBox(height: 10),
              Builder(builder: (context) {
                return CustomFilledButton(
                    title: '🇷🇺 Русский (ru)',
                    onPressed: () {
                      context
                          .read<LocaleProvider>()
                          .setLocale(AppLocalizations.russian);
                      context.goNamed('enter_name');
                    },
                    borderColor: AppColors.white,
                    titleColor: AppColors.white,
                    backgroundColor: AppColors.transparent);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
