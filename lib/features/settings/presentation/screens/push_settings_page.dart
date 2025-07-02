import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';

class PushSettingsPage extends StatefulWidget {
  const PushSettingsPage({super.key});

  @override
  State<PushSettingsPage> createState() => _PushSettingsPageState();
}

class _PushSettingsPageState extends State<PushSettingsPage> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: AppTextTheme.h5.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Daily notifications',
                style: AppTextTheme.bodyMedium,
              ),
              Platform.isIOS
                  ? CupertinoSwitch(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      activeTrackColor: AppColors.primary,
                    )
                  : Switch(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      inactiveTrackColor: AppColors.hint.withAlpha(40),
                      inactiveThumbColor: (AppColors.grey),
                      activeTrackColor: AppColors.primary,
                    )
            ],
          )
        ],
      ),
    );
  }
}
