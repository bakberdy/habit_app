import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_app/core/shared/widgets/app_bar_bottom_with_search_field.dart';
import 'package:habit_app/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:habit_app/features/habit/presentation/bloc/catalog/catalog_bloc.dart';
import 'package:habit_app/features/habit/presentation/bloc/search/search_bloc.dart';
import 'package:habit_app/features/habit/presentation/screens/category_screen.dart';
import 'package:habit_app/features/habit/presentation/widgets/habit_category_widget.dart';
import 'package:flutter/material.dart';
import 'package:habit_app/injection/injection.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
          create: (_) => sl<CatalogBloc>()..add(CatalogEvent.loadCategories())),
      BlocProvider(create: (_) => sl<SearchBloc>()),
    ], child: CatalogScreenContent());
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
  final _searchController = TextEditingController();

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
          return BlocBuilder<SearchBloc, SearchState>(
              builder: (context, searchState) {
            return CustomScrollView(
              slivers: [
                CustomSliverAppBar(
                    title: 'Catalog',
                    bottom: AppBarBottomWithSearchField(
                      title: 'Browse habits',
                      searchController: _searchController,
                      onChange: (value) {
                        context
                            .read<SearchBloc>()
                            .add(SearchEvent.search(query: value.trim()));
                      },
                    )),
                SliverToBoxAdapter(child: SizedBox(height: 10)),
                searchState is Searching && _searchController.text.isNotEmpty
                    ? SearchResultSliver(habits: searchState.habits)
                    : SliverList.separated(
                        itemCount: state.categories.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                EdgeInsetsGeometry.symmetric(horizontal: 20),
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
          });
        } else {
          return SizedBox();
        }
      })),
    );
  }
}
