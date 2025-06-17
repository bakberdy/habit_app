import 'package:flutter/material.dart';
import 'package:habit_app/core/shared/enums/weekday.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';

class DaysWidget extends StatelessWidget {
  const DaysWidget({
    super.key,
    required List<Weekday> days,
  }) : _days = days;

  final List<Weekday> _days;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      alignment: WrapAlignment.start,
      children: _days.map((e) {
        return Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(colors: [
                Colors.blue.shade400,
                AppColors.primary,
              ])),
          child: Text(e.value,
              style: AppTextTheme.bodySmall.copyWith(color: Colors.white)),
        );
      }).toList(),
    );
  }
}
