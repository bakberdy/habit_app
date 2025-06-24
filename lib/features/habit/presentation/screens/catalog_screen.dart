import 'package:habit_app/core/core.dart';
import 'package:habit_app/core/shared/widgets/app_bar_bottom_with_search_field.dart';
import 'package:habit_app/core/shared/widgets/widgets.dart';
import 'package:habit_app/features/habit/presentation/widgets/habit_category_widget.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
                title: 'Catalog',
                bottom: AppBarBottomWithSearchField(title: 'Browse habits')),
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverList.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                  child: HabitCategoryWidget(),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(height: 10),
            )
          ],
        ),
      ),
    );
  }
}
