import 'dart:ui';

import 'package:habit_app/core/core.dart';
import 'package:habit_app/core/shared/widgets/custom_filled_button.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_app/features/habit/domain/entities/category_entity.dart';
import 'package:habit_app/generated/l10n.dart';

class HabitCategoryWidget extends StatelessWidget {
  const HabitCategoryWidget({
    super.key,
    required this.category,
  });

  final CategoryEntity category;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: [
          // Изображение на фоне
          if (category.imagePath != null)
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(category.imagePath!),
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
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 200, maxHeight: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category.title,
                    style: AppTextTheme.bodyMedium.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    category.description,
                    style: AppTextTheme.bodySmall.copyWith(
                      color: Colors.white,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              right: 10,
              bottom: 15,
              child: SizedBox(
                height: 35,
                child: CustomFilledButton(
                  onPressed: () {
                    context.pushNamed('category',
                        pathParameters: {"category_id": "${category.id}"});
                  },
                  title: S.of(context).browse,
                  backgroundColor: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}
