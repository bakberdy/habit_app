import 'package:chat_app/core/shared/widgets/app_bar_bottom_with_search_field.dart';
import 'package:chat_app/core/shared/widgets/custom_app_bar.dart';
import 'package:chat_app/core/theme/app_colors.dart';
import 'package:chat_app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            padding: EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverList.builder(
              itemBuilder: (context, index) => HabitCard(),
            ),
          ),
        ],
      )),
    );
  }
}

class HabitCard extends StatelessWidget {
  const HabitCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.pushNamed('habit', pathParameters: {
          "habit_id": "0",
        });
      },
      contentPadding: EdgeInsets.zero,
      leading: Container(
          height: 50,
          width: 50,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset('lib/assets/illustrations/education.png',
              fit: BoxFit.cover)),
      title: Text('Title'),
      subtitle: Text('This is a description of the habit.'),
      trailing: IconButton(
          onPressed: () {}, icon: Icon(Icons.add_circle_outline_rounded)),
    );
  }
}
