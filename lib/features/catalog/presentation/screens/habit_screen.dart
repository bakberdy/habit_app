import 'package:flutter/material.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:habit_app/features/catalog/domain/entities/tip_entity.dart';
import 'package:habit_app/features/catalog/presentation/widgets/days_widget.dart';
import 'package:habit_app/features/catalog/presentation/widgets/tips_widget.dart';
import 'package:lottie/lottie.dart';

class HabitScreen extends StatefulWidget {
  const HabitScreen({super.key, required this.habitId});
  final int habitId;

  @override
  State<HabitScreen> createState() => _HabitScreenState();
}

class _HabitScreenState extends State<HabitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Lottie.asset('lib/assets/animations/cosmos_animation.json',
              fit: BoxFit.cover),
          SafeArea(
            child: Builder(builder: (context) {
              //TODO: replace with real data
              final title = 'Make a morning exercise';
              final description =
                  'Starting your day with a morning exercise helps boost your energy, improves focus, and sets a positive tone for the rest of the day. Consistent morning workouts can enhance your physical health, reduce stress, and build discipline over time.';
              final whyText =
                  'Starting your day with a morning exercise helps boost your energy, improves focus, and sets a positive tone for the rest of the day. Consistent morning workouts can enhance your physical health, reduce stress, and build discipline over time.';
              final days = ['Monday', "Wednesday", "Friday"];
              final tips = List.generate(
                4,
                (index) => TipEntity(title: 'title $index', content: 'content'),
              );
              return CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BackButton(
                          color: AppColors.textPrimary,
                        ),
                        Text(
                          "Details",
                          style: AppTextTheme.h5.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 70)
                      ],
                    ),
                  ),
                  SliverToBoxAdapter(child: SizedBox(height: 30)),
                  SliverToBoxAdapter(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 0),
                                color: AppColors.grey.withAlpha(80),
                                blurRadius: 10)
                          ],
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: AppTextTheme.h3
                                .copyWith(color: AppColors.textPrimary),
                          ),
                          SizedBox(height: 10),
                          Text(
                            description,
                            style: AppTextTheme.bodySmall,
                          ),
                          SizedBox(height: 20),
                          Text('Why:',
                              style: AppTextTheme.bodyMedium
                                  .copyWith(fontWeight: FontWeight.w600)),
                          Text(
                            whyText,
                            style: AppTextTheme.bodySmall,
                          ),
                          SizedBox(height: 20),
                          Text('Suggested days:',
                              style: AppTextTheme.bodyMedium
                                  .copyWith(fontWeight: FontWeight.w600)),
                          SizedBox(height: 5),
                          DaysWidget(suggestedDays: days),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: EdgeInsetsGeometry.symmetric(
                        horizontal: 20, vertical: 10),
                    sliver: SliverToBoxAdapter(
                        child: Text('Tips:',
                            style: AppTextTheme.bodyMedium
                                .copyWith(fontWeight: FontWeight.w600))),
                  ),
                  SliverToBoxAdapter(child: TipsWidget(tips: tips))
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
