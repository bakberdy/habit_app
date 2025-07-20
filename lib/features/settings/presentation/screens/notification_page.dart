import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:habit_app/features/settings/presentation/blocs/notification/notification_bloc.dart';
import 'package:habit_app/injection/injection.dart';
import 'package:shimmer/shimmer.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NotificationBloc>(
      create: (_) =>
          sl<NotificationBloc>()..add(NotificationEvent.loadSettings()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Notifications',
            style: AppTextTheme.h5.copyWith(fontWeight: FontWeight.w700),
          ),
        ),
        body: BlocBuilder<NotificationBloc, NotificationState>(
            builder: (context, state) {
          return ListView(
            padding: EdgeInsets.all(20),
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     state.isLoading
              //         ? Shimmer.fromColors(
              //             baseColor: Colors.grey.shade300,
              //             highlightColor: Colors.grey.shade500,
              //             child: Container(
              //               alignment: Alignment.center,
              //               height: 40,
              //               child: Text(
              //                 'Push notifications',
              //                 style: AppTextTheme.bodyMedium,
              //               ),
              //             ),
              //           )
              //         : Text(
              //             'Push notifications',
              //             style: AppTextTheme.bodyMedium,
              //           ),
              //     state.isLoading
              //         ? SizedBox()
              //         : Platform.isIOS
              //             ? CupertinoSwitch(
              //                 value: state.pushEnabled,
              //                 onChanged: (value) {
              //                   context.read<NotificationBloc>().add(
              //                       NotificationEvent.setPushEnabled(value));
              //                 },
              //                 activeTrackColor: AppColors.primary,
              //               )
              //             : Switch(
              //                 value: state.pushEnabled,
              //                 onChanged: (value) {
              //                   context.read<NotificationBloc>().add(
              //                       NotificationEvent.setPushEnabled(value));
              //                 },
              //                 inactiveTrackColor: AppColors.hint.withAlpha(40),
              //                 inactiveThumbColor: (AppColors.grey),
              //                 activeTrackColor: AppColors.primary,
              //               )
              //   ],
              // ),
              // Divider(
              //   color: AppColors.hint.withAlpha(40),
              //   height: 20,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  state.isLoading
                      ? Shimmer.fromColors(
                          baseColor: Colors.grey.shade300,
                          highlightColor: Colors.grey.shade500,
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            child: Text(
                              'Daily notifications',
                              style: AppTextTheme.bodyMedium,
                            ),
                          ),
                        )
                      : Text(
                          'Daily notifications',
                          style: AppTextTheme.bodyMedium,
                        ),
                  state.isLoading
                      ? SizedBox()
                      : Platform.isIOS
                          ? CupertinoSwitch(
                              value: state.dailyEnabled,
                              onChanged: (value) {
                                context.read<NotificationBloc>().add(
                                    NotificationEvent.setDailyEnabled(value));
                              },
                              activeTrackColor: AppColors.primary,
                            )
                          : Switch(
                              value: state.dailyEnabled,
                              onChanged: (value) {
                                context.read<NotificationBloc>().add(
                                    NotificationEvent.setDailyEnabled(value));
                              },
                              inactiveTrackColor: AppColors.hint.withAlpha(40),
                              inactiveThumbColor: (AppColors.grey),
                              activeTrackColor: AppColors.primary,
                            ),
                ],
              )
            ],
          );
        }),
      ),
    );
  }
}
