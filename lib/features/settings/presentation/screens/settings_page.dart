import 'package:go_router/go_router.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:habit_app/features/settings/presentation/widgets/buttons_list.dart';
import 'package:flutter/material.dart';
import 'package:habit_app/generated/l10n.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsPageContent();
  }
}

class SettingsPageContent extends StatefulWidget {
  const SettingsPageContent({super.key});

  @override
  State<SettingsPageContent> createState() => _SettingsPageContentState();
}

class _SettingsPageContentState extends State<SettingsPageContent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            S.of(context).settings,
            style: AppTextTheme.h5.copyWith(fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: ListView(
              children: [
                SizedBox(height: 20),
                ButtonsList(
                  children: [
                    ButtonDetails(
                        onTap: () {
                          context.goNamed('notifications');
                        },
                        title: S.of(context).notifications,
                        prefixIcon: SizedBox(
                            height: 25,
                            width: 25,
                            child: Image.asset('lib/assets/icons/noti.png'))),
                    ButtonDetails(
                        onTap: () {
                          context.goNamed('select_language');
                        },
                        title: S.of(context).language,
                        prefixIcon: SizedBox(
                            height: 25,
                            width: 25,
                            child: Image.asset('lib/assets/icons/lang.png'))),
                  ],
                ),
                SizedBox(height: 20),
                ButtonsList(
                  children: [
                    ButtonDetails(
                        onTap: () {
                          context.goNamed('support');
                        },
                        title: S.of(context).helpSupport,
                        prefixIcon: SizedBox(
                            height: 25,
                            width: 25,
                            child: Image.asset('lib/assets/icons/help.png'))),
                    ButtonDetails(
                        onTap: () {
                          context.goNamed('about_app');
                        },
                        title: S.of(context).aboutApp,
                        prefixIcon: SizedBox(
                            height: 25,
                            width: 25,
                            child: Image.asset('lib/assets/icons/about.png'))),
                  ],
                )
              ],
            )));
  }
}
