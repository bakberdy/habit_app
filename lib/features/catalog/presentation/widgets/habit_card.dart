import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:habit_app/features/catalog/domain/entities/habit_entity.dart';

class HabitCard extends StatelessWidget {
  const HabitCard({
    super.key,
    required this.habit,
  });

  final HabitEntity habit;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      shadowColor: AppColors.grey.withAlpha(50),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          context.pushNamed('habit', pathParameters: {
            "habit_id": habit.id.toString(),
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(habit.title,
                        style: AppTextTheme.h5.copyWith(height: 1.2)),
                    SizedBox(height: 4),
                    Text(
                      'This is a description of the habit.',
                      style: AppTextTheme.bodySmall
                          .copyWith(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_right_outlined,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
