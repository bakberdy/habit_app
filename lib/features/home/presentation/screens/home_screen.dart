import 'package:habit_app/core/core.dart';
import 'package:habit_app/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:habit_app/core/shared/widgets/daily_habit_card.dart';
import 'package:habit_app/features/home/presentation/widgets/habits_bar.dart';
import 'package:habit_app/core/shared/widgets/app_bar_bottom_with_search_field.dart';
import 'package:habit_app/features/home/presentation/widgets/quote_card.dart';
import 'package:habit_app/features/home/presentation/widgets/recomendation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              title: 'Home',
              bottom: AppBarBottomWithSearchField(
                title: 'Welcome, Bakberdi',
              ),
            ),
            SliverToBoxAdapter(
              child: QuoteCard(),
            ),
            SliverToBoxAdapter(child: RecomendationBar()),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text('Your today\'s plan', style: AppTextTheme.h4),
                      SizedBox(height: 10),
                    ]),
              ),
            ),
            SliverList.separated(
              separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 1,
                  color: AppColors.white,
                ),
              ),
              itemCount: 3,
              itemBuilder: (context, index) {
                return DailyHabitCard(
                  index: index,
                );
              },
            ),
            SliverToBoxAdapter(child: HabitsBar(title: 'Education')),
            SliverToBoxAdapter(child: HabitsBar(title: 'Life')),
            SliverToBoxAdapter(child: HabitsBar(title: 'Sport')),
          ],
        ),
      ),
    );
  }
}
