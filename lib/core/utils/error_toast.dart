import 'package:chat_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

void showErrorToast(
  BuildContext context, {
  required String message,
}) {
  toastification.show(
    alignment: Alignment.bottomCenter,
    type: ToastificationType.error,
    context: context,
    title: Text(message, maxLines: 4),
    icon: const Icon(Icons.error),
    style: ToastificationStyle.flat,
    backgroundColor: AppColors.white,
    showProgressBar: false,
    foregroundColor: Colors.red,
    borderSide: BorderSide(width: 1, color: Colors.red),
    autoCloseDuration: const Duration(seconds: 2),
    animationBuilder: (context, animation, alignment, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}
