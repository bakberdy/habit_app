import 'package:flutter/material.dart';
import 'package:habit_app/core/providers/locale_provider.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:habit_app/features/settings/presentation/widgets/select_button.dart';
import 'package:habit_app/generated/l10n.dart';
import 'package:habit_app/main.dart';
import 'package:provider/provider.dart';

class SelectLanguagePage extends StatefulWidget {
  const SelectLanguagePage({super.key});

  @override
  State<SelectLanguagePage> createState() => _SelectLanguagePageState();
}

class _SelectLanguagePageState extends State<SelectLanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).language,
          style: AppTextTheme.h5.copyWith(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Consumer<LocaleProvider>(
        builder: (BuildContext context, LocaleProvider value, Widget? child) =>
            ListView(
          children: [
            SelectButton(
              title: 'English (en)',
              isSelected: AppLocalizations.english == value.locale,
              onTap: () {
                context
                    .read<LocaleProvider>()
                    .setLocale(AppLocalizations.english);
              },
            ),
            Divider(height: 1, color: AppColors.grey.withAlpha(30)),
            SelectButton(
              title: 'Қазақша (kk)',
              isSelected: AppLocalizations.kazakh == value.locale,
              onTap: () {
                context
                    .read<LocaleProvider>()
                    .setLocale(AppLocalizations.kazakh);
              },
            ),
            Divider(height: 1, color: AppColors.grey.withAlpha(30)),
            SelectButton(
              title: 'Русский (ru)',
              isSelected: AppLocalizations.russian == value.locale,
              onTap: () {
                context
                    .read<LocaleProvider>()
                    .setLocale(AppLocalizations.russian);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                S
                    .of(context)
                    .forTheLanguageChangeToTakeEffectCorrectlyPleaseReopen,
                style: AppTextTheme.bodySmall.copyWith(color: AppColors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
