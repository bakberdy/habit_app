import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_app/core/bloc/locale_cubit.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:habit_app/features/settings/presentation/widgets/select_button.dart';
import 'package:habit_app/generated/l10n.dart';
import 'package:habit_app/main.dart';

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
      body: BlocBuilder<LocaleCubit, LocaleState>(
        builder: (BuildContext context, state) => ListView(
          children: [
            SelectButton(
              title: 'English (en)',
              isSelected: AppLocalizations.english == state.locale,
              onTap: () {
                context.read<LocaleCubit>().setLocale(AppLocalizations.english);
              },
            ),
            Divider(height: 1, color: AppColors.grey.withAlpha(30)),
            SelectButton(
              title: 'Қазақша (kk)',
              isSelected: AppLocalizations.kazakh == state.locale,
              onTap: () {
                context.read<LocaleCubit>().setLocale(AppLocalizations.kazakh);
              },
            ),
            Divider(height: 1, color: AppColors.grey.withAlpha(30)),
            SelectButton(
              title: 'Русский (ru)',
              isSelected: AppLocalizations.russian == state.locale,
              onTap: () {
                context.read<LocaleCubit>().setLocale(AppLocalizations.russian);
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
