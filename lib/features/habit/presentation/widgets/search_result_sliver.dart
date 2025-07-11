import 'package:flutter/material.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:habit_app/features/habit/domain/entities/habit_entity.dart';
import 'package:habit_app/features/habit/presentation/widgets/habit_card.dart';
import 'package:habit_app/generated/l10n.dart';

class SearchResultSliver extends StatelessWidget {
  const SearchResultSliver({
    super.key,
    required this.habits,
  });

  final List<HabitEntity> habits;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        sliver: habits.isEmpty
            ? SliverToBoxAdapter(
                child: Center(
                    child: Text(
                S.of(context).noHabitsFound,
                style: AppTextTheme.h4.copyWith(color: AppColors.hint),
              )))
            : SliverList.separated(
                itemCount: habits.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Text(
                      S.of(context).searchResults,
                      style:
                          AppTextTheme.h5.copyWith(fontWeight: FontWeight.bold),
                    );
                  }
                  return HabitCard(
                    habit: habits[index - 1],
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(height: 10)));
  }
}
