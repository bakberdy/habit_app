import 'dart:ui';

import 'package:chat_app/core/core.dart';
import 'package:chat_app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HabitCategoryWidget extends StatelessWidget {
  const HabitCategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: [
          // Изображение на фоне
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/illustrations/education.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Только часть заблюренная — верхний левый угол
          Positioned(
            left: 0,
            bottom: 0,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                child: SizedBox(
                  height: 70,
                  width: context.mediaWidth,
                ),
              ),
            ),
          ),
          // Текст поверх
          Positioned(
            left: 12,
            bottom: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daily habits',
                  style: AppTextTheme.bodyMedium.copyWith(
                      fontWeight: FontWeight.w600, color: Colors.white),
                ),
                Text(
                  'Make yourself organized',
                  style: AppTextTheme.bodySmall.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
              right: 10,
              bottom: 15,
              child: SizedBox(
                height: 35,
                width: 100,
                child: CustomFilledButton(
                  onPressed: () {
                    context.push('${AppPaths.catalog}${AppPaths.category}/0');
                  },
                  title: 'Browse',
                  backgroundColor: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}
