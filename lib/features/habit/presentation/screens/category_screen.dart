import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_app/core/providers/locale_cubit.dart';
import 'package:habit_app/core/shared/widgets/app_bar_bottom_with_search_field.dart';
import 'package:habit_app/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:habit_app/features/habit/presentation/bloc/catalog/catalog_bloc.dart';
import 'package:habit_app/features/habit/presentation/bloc/search/search_bloc.dart';
import 'package:habit_app/features/habit/presentation/widgets/habit_card.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:habit_app/features/habit/presentation/widgets/search_result_sliver.dart';
import 'package:habit_app/generated/l10n.dart';
import 'package:habit_app/injection/injection.dart';
import 'package:habit_app/main.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.categoryId});
  final int categoryId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, LocaleState>(builder: (context, state) {
      return MultiBlocProvider(providers: [
        BlocProvider<CatalogBloc>.value(
          value: sl<CatalogBloc>()
            ..add(CatalogEvent.loadCategory(
                categoryId: categoryId,
                locale: state.locale ?? AppLocalizations.english)),
        ),
        BlocProvider<SearchBloc>.value(value: sl<SearchBloc>())
      ], child: CategoryScreenContent(categoryId: categoryId));
    });
  }
}

class CategoryScreenContent extends StatefulWidget {
  const CategoryScreenContent({super.key, required this.categoryId});
  final int categoryId;

  @override
  State<CategoryScreenContent> createState() => _CategoryScreenContentState();
}

class _CategoryScreenContentState extends State<CategoryScreenContent> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocConsumer<LocaleCubit, LocaleState>(
              listener: (context, state) => context.read<CatalogBloc>().add(
                  CatalogEvent.loadCategory(
                      locale: state.locale ?? AppLocalizations.english,
                      categoryId: widget.categoryId)),
              builder: (context, localeState) {
                return BlocBuilder<CatalogBloc, CatalogState>(
                    builder: (context, state) {
                  if (state is CategoryLoaded) {
                    return BlocBuilder<SearchBloc, SearchState>(
                        builder: (context, searchState) {
                      return CustomScrollView(
                        slivers: [
                          CustomSliverAppBar(
                              title: S.of(context).category,
                              bottom: AppBarBottomWithSearchField(
                                title: state.category.title,
                                searchController: _searchController,
                                onChange: (value) {
                                  context.read<SearchBloc>().add(
                                      SearchEvent.search(
                                          locale: localeState.locale ??
                                              AppLocalizations.english,
                                          query: value,
                                          categoryId: widget.categoryId));
                                },
                              )),
                          SliverToBoxAdapter(
                            child: SizedBox(height: 10),
                          ),
                          searchState is Searching &&
                                  _searchController.text.isNotEmpty
                              ? SearchResultSliver(habits: searchState.habits)
                              : SliverToBoxAdapter(),
                          SliverVisibility(
                            visible: !(searchState is Searching &&
                                _searchController.text.isNotEmpty),
                            sliver: SliverPadding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              sliver: SliverToBoxAdapter(
                                child: Text(
                                  state.category.description,
                                  style: AppTextTheme.h4,
                                ),
                              ),
                            ),
                          ),
                          SliverToBoxAdapter(child: SizedBox(height: 10)),
                          if (state.category.imagePath != null)
                            SliverVisibility(
                              visible: !(searchState is Searching &&
                                  _searchController.text.isNotEmpty),
                              sliver: SliverPadding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  sliver: SliverToBoxAdapter(
                                    child: Container(
                                      height: 200,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Colors.pink,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  state.category.imagePath!),
                                              fit: BoxFit.cover)),
                                    ),
                                  )),
                            ),
                          SliverVisibility(
                            visible: !(searchState is Searching &&
                                _searchController.text.isNotEmpty),
                            sliver: SliverToBoxAdapter(
                                child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Divider(
                                height: 30,
                                thickness: 2,
                                color: AppColors.grey.withAlpha(50),
                              ),
                            )),
                          ),
                          SliverVisibility(
                            visible: !(searchState is Searching &&
                                _searchController.text.isNotEmpty),
                            sliver: SliverToBoxAdapter(
                              child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Text(S.of(context).habits,
                                      style: AppTextTheme.h5.copyWith(
                                          fontWeight: FontWeight.w600))),
                            ),
                          ),
                          SliverVisibility(
                            visible: !(searchState is Searching &&
                                _searchController.text.isNotEmpty),
                            sliver: SliverPadding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              sliver: SliverList.separated(
                                itemCount: state.habits.length,
                                itemBuilder: (context, index) => HabitCard(
                                  habit: state.habits[index],
                                ),
                                separatorBuilder:
                                    (BuildContext context, int index) =>
                                        SizedBox(height: 10),
                              ),
                            ),
                          ),
                        ],
                      );
                    });
                  } else {
                    return SizedBox();
                  }
                });
              })),
    );
  }
}
