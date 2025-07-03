import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habit_app/core/bloc/locale_cubit.dart';
import 'package:habit_app/core/shared/widgets/custom_filled_button.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:habit_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:habit_app/generated/l10n.dart';
import 'package:habit_app/injection/injection.dart';
import 'package:habit_app/main.dart';

class EnterNameScreen extends StatelessWidget {
  const EnterNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<HomeBloc>(),
      child: EnterNameScreenContent(),
    );
  }
}

class EnterNameScreenContent extends StatefulWidget {
  const EnterNameScreenContent({super.key});

  @override
  State<EnterNameScreenContent> createState() => _EnterNameScreenState();
}

class _EnterNameScreenState extends State<EnterNameScreenContent> {
  final _nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
    );
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: BlocBuilder<LocaleCubit, LocaleState>(builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  'Ádet',
                  style:
                      GoogleFonts.lalezar(fontSize: 100, color: Colors.white),
                ),
                Text(
                  S.of(context).enterYourName,
                  style: AppTextTheme.h4.copyWith(color: Colors.white),
                ),
                SizedBox(height: 10),
                Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: _nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return S.of(context).nameCannotBeEmpty;
                      } else {
                        return null;
                      }
                    },
                    style:
                        AppTextTheme.bodyMedium.copyWith(color: Colors.white),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        border: outlineInputBorder,
                        enabledBorder: outlineInputBorder,
                        focusedBorder: outlineInputBorder,
                        disabledBorder: outlineInputBorder,
                        errorBorder: outlineInputBorder.copyWith(
                            borderSide: BorderSide(color: Colors.red))),
                  ),
                ),
                SizedBox(height: 10),
                CustomFilledButton(
                    title: S.of(context).letsStart,
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        context.read<HomeBloc>().add(HomeEvent.setUsername(
                            username: _nameController.text,
                            locale: state.locale ?? AppLocalizations.english));
                        context.goNamed('onboarding');
                      }
                    },
                    borderColor: AppColors.white,
                    titleColor: AppColors.white,
                    backgroundColor: AppColors.transparent),
              ],
            ),
          ),
        );
      }),
    );
  }
}
