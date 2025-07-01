import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

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
        leading: null,
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
