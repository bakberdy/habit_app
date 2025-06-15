import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    required this.title,
    this.bottom,
  });
  final String title;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        leading:
            context.canPop() ? BackButton(color: AppColors.textPrimary) : null,
        snap: false,
        floating: false,
        stretch: false,
        pinned: false,
        title: Text(
          title,
          style: AppTextTheme.h5.copyWith(fontWeight: FontWeight.w700),
        ),
        bottom: bottom);
  }
}
