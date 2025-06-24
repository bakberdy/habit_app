import 'package:habit_app/core/shared/widgets/app_bar_bottom_with_search_field.dart';
import 'package:habit_app/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:habit_app/features/habit/presentation/widgets/habit_card.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:habit_app/features/habit/domain/entities/habit_entity.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key, required this.categoryId});
  final int categoryId;

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
              title: 'Category',
              bottom: AppBarBottomWithSearchField(title: 'Education')),
          SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverToBoxAdapter(
              child: Text(
                'This section contains habits and tips to improve your education and learning skills.',
                style: AppTextTheme.h4,
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              sliver: SliverToBoxAdapter(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.pink,
                      image: DecorationImage(
                          image: AssetImage(
                              'lib/assets/illustrations/education.png'),
                          fit: BoxFit.cover)),
                ),
              )),
          SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              height: 30,
              thickness: 2,
              color: AppColors.grey.withAlpha(50),
            ),
          )),
          SliverToBoxAdapter(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('Habits',
                    style:
                        AppTextTheme.h5.copyWith(fontWeight: FontWeight.w600))),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            sliver: SliverList.separated(
              itemBuilder: (context, index) => HabitCard(
                habit: HabitEntity.sample(),
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(height: 10),
            ),
          ),
        ],
      )),
    );
  }
}
