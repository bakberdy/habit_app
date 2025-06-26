import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_app/core/shared/widgets/app_bar_bottom_with_search_field.dart';
import 'package:habit_app/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:habit_app/features/habit/presentation/bloc/catalog/catalog_bloc.dart';
import 'package:habit_app/features/habit/presentation/widgets/habit_card.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:habit_app/injection/injection.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.categoryId});
  final int categoryId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CatalogBloc>.value(
        value: sl<CatalogBloc>()
          ..add(CatalogEvent.loadCategory(categoryId: categoryId)),
        child: CategoryScreenContent(categoryId: categoryId));
  }
}

class CategoryScreenContent extends StatefulWidget {
  const CategoryScreenContent({super.key, required this.categoryId});
  final int categoryId;

  @override
  State<CategoryScreenContent> createState() => _CategoryScreenContentState();
}

class _CategoryScreenContentState extends State<CategoryScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
          BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
        if (state is CategoryLoaded) {
          return CustomScrollView(
            slivers: [
              CustomSliverAppBar(
                  title: 'Category',
                  bottom:
                      AppBarBottomWithSearchField(title: state.category.title)),
              SliverToBoxAdapter(
                child: SizedBox(height: 10),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    state.category.description,
                    style: AppTextTheme.h4,
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 10)),
              if (state.category.imagePath != null)
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
                                image: AssetImage(state.category.imagePath!),
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
                        style: AppTextTheme.h5
                            .copyWith(fontWeight: FontWeight.w600))),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                sliver: SliverList.separated(
                  itemCount: state.habits.length,
                  itemBuilder: (context, index) => HabitCard(
                    habit: state.habits[index],
                  ),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(height: 10),
                ),
              ),
            ],
          );
        } else {
          return SizedBox();
        }
      })),
    );
  }
}
