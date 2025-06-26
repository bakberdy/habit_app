import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_app/core/core.dart';
import 'package:habit_app/core/shared/widgets/app_bar_bottom_with_search_field.dart';
import 'package:habit_app/core/shared/widgets/widgets.dart';
import 'package:habit_app/features/habit/presentation/bloc/catalog/catalog_bloc.dart';
import 'package:habit_app/features/habit/presentation/widgets/habit_category_widget.dart';
import 'package:flutter/material.dart';
import 'package:habit_app/injection/injection.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CatalogBloc>(
        create: (BuildContext context) =>
            sl<CatalogBloc>()..add(CatalogEvent.loadCategories()),
        child: CatalogScreenContent());
  }
}

class CatalogScreenContent extends StatefulWidget {
  const CatalogScreenContent({super.key});

  @override
  State<CatalogScreenContent> createState() => _CatalogScreenContentState();
}

class _CatalogScreenContentState extends State<CatalogScreenContent>
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
      body: SafeArea(child:
          BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
        if (state is CatalogLoaded) {
          return CustomScrollView(
            slivers: [
              CustomSliverAppBar(
                  title: 'Catalog',
                  bottom: AppBarBottomWithSearchField(title: 'Browse habits')),
              SliverToBoxAdapter(child: SizedBox(height: 10)),
              SliverList.separated(
                itemCount: state.categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                    child: HabitCategoryWidget(
                      category: state.categories[index],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(height: 10),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 10))
            ],
          );
        } else {
          return SizedBox();
        }
      })),
    );
  }
}
