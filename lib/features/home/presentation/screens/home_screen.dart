import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_app/core/providers/locale_provider.dart';
import 'package:habit_app/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:habit_app/features/habit/presentation/bloc/habit_map/habit_map_bloc.dart';
import 'package:habit_app/features/habit/presentation/widgets/daily_habit_card.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:habit_app/features/habit/presentation/bloc/my_plan/my_plan_bloc.dart';
import 'package:habit_app/features/habit/presentation/bloc/search/search_bloc.dart';
import 'package:habit_app/core/shared/widgets/app_bar_bottom_with_search_field.dart';
import 'package:habit_app/features/habit/presentation/widgets/search_result_sliver.dart';
import 'package:habit_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:habit_app/features/home/presentation/widgets/quote_card.dart';
import 'package:habit_app/features/home/presentation/widgets/recomendation_bar.dart';
import 'package:flutter/material.dart';
import 'package:habit_app/generated/l10n.dart';
import 'package:habit_app/injection/injection.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => sl<SearchBloc>()),
      BlocProvider(
          create: (_) => sl<HomeBloc>()
            ..add(HomeEvent.loadData(
                locale: context.read<LocaleProvider>().locale))),
      BlocProvider(
          create: (_) => sl<HabitMapBloc>()..add(HabitMapEvent.load())),
      BlocProvider(
          create: (_) => sl<MyPlanBloc>()
            ..add(MyPlanEvent.getSubscriptionsOn(
                date: DateTime.now(),
                locale: Provider.of<LocaleProvider>(context, listen: false)
                    .locale)))
    ], child: HomeScreenContent());
  }
}

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({super.key});

  @override
  State<HomeScreenContent> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenContent> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context
        .read<HomeBloc>()
        .add(HomeEvent.loadData(locale: context.read<LocaleProvider>().locale));
  }

  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) => CustomScrollView(
            slivers: [
              BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
                final username =
                    ((state is HomeLoaded) ? state.username : "") ?? "";
                return CustomSliverAppBar(
                  title: S.of(context).home,
                  bottom: AppBarBottomWithSearchField(
                    title: S.of(context).welcome(username),
                    searchController: _searchController,
                    onChange: _onSearchBarChange,
                  ),
                );
              }),
              if (state is Searching && _searchController.text.isNotEmpty)
                SearchResultSliver(habits: state.habits),
              SliverVisibility(
                visible: _searchController.text.isEmpty,
                sliver: SliverToBoxAdapter(
                  child: BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                    if (state is HomeLoaded) {
                      return QuoteCard(
                        quote: state.quote,
                      );
                    } else {
                      return SizedBox();
                    }
                  }),
                ),
              ),
              SliverVisibility(
                  visible: _searchController.text.isEmpty,
                  sliver: SliverToBoxAdapter(child: RecomendationBar())),
              SliverVisibility(
                  visible: _searchController.text.isEmpty,
                  sliver: SliverToBoxAdapter(child: SizedBox(height: 10))),
              SliverVisibility(
                visible: _searchController.text.isEmpty,
                sliver: SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(S.of(context).yourActivityCalendar,
                            style: AppTextTheme.h4),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
              SliverVisibility(
                  visible: _searchController.text.isEmpty,
                  sliver: SliverToBoxAdapter(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: BlocBuilder<HabitMapBloc, HabitMapState>(
                          builder: (context, state) {
                        return Row(
                          children: [
                            SizedBox(width: 20),
                            HeatMap(
                              locale:
                                  Provider.of<LocaleProvider>(context).locale,
                              endDate: DateTime(2026, 9),
                              startDate: DateTime(2025, 6),
                              datasets: {
                                DateTime(2025, 6, 1): 1,
                                DateTime(2025, 6, 2): 2,
                                DateTime(2025, 6, 3): 3,
                                DateTime(2025, 6, 4): 4,
                                DateTime(2025, 6, 5): 2,
                                DateTime(2025, 6, 6): 1,
                                DateTime(2025, 6, 7): 3,
                                DateTime(2025, 6, 8): 4,
                                DateTime(2025, 6, 9): 2,
                                DateTime(2025, 6, 10): 1,
                                DateTime(2025, 6, 11): 3,
                                DateTime(2025, 6, 12): 4,
                                DateTime(2025, 6, 13): 2,
                                DateTime(2025, 6, 14): 1,
                                DateTime(2025, 6, 15): 3,
                                DateTime(2025, 6, 16): 4,
                                DateTime(2025, 6, 17): 2,
                                DateTime(2025, 6, 18): 1,
                                DateTime(2025, 6, 19): 3,
                                DateTime(2025, 6, 20): 4,
                                DateTime(2025, 6, 21): 2,
                                DateTime(2025, 6, 22): 1,
                                DateTime(2025, 6, 23): 3,
                                DateTime(2025, 6, 24): 4,
                                DateTime(2025, 6, 25): 2,
                                DateTime(2025, 6, 26): 1,
                                DateTime(2025, 6, 27): 3,
                                DateTime(2025, 6, 28): 4,
                                DateTime(2025, 6, 29): 2,
                                DateTime(2025, 6, 30): 1,
                                DateTime(2025, 7, 1): 3,
                              },
                              size: 30,
                              colorsets: {
                                1: AppColors.primary.withAlpha(50),
                                2: AppColors.primary.withAlpha(120),
                                3: AppColors.primary.withAlpha(200),
                                4: AppColors.primary,
                              },
                            ),
                          ],
                        );
                      }),
                    ),
                  )),
              SliverVisibility(
                visible: _searchController.text.isEmpty,
                sliver: BlocBuilder<MyPlanBloc, MyPlanState>(
                  builder: (context, state) {
                    if (state is MyPlanStateLoaded &&
                        state.habitInfo.isNotEmpty) {
                      return SliverPadding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        sliver: SliverList.separated(
                          separatorBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Divider(
                              height: 1,
                              color: AppColors.white,
                            ),
                          ),
                          itemCount: (state.habitInfo.length >= 3
                                  ? 4
                                  : state.habitInfo.length) +
                              1,
                          itemBuilder: (context, index) {
                            if (index == 0) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10),
                                  Text(S.of(context).yourTodaysPlan,
                                      style: AppTextTheme.h4),
                                  SizedBox(height: 10),
                                ],
                              );
                            }
                            if (index == 4) {
                              return InkWell(
                                  onTap: () {
                                    context.goNamed('my_plan');
                                  },
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      height: 40,
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              S.of(context).morePlan,
                                              style: AppTextTheme.bodySmall
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w600),
                                            ),
                                            SizedBox(width: 5),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              size: 15,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ));
                            }
                            return HabitSubsriptionCard(
                              isLast: state.habitInfo.length >= 3
                                  ? index == 3
                                  : state.habitInfo.length == index,
                              isFirst: index == 1,
                              habitInfo: state.habitInfo[index - 1],
                              dayStatus: state.dayStatus,
                            );
                          },
                        ),
                      );
                    } else {
                      return SliverToBoxAdapter();
                    }
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onSearchBarChange(value) {
    context.read<SearchBloc>().add(SearchEvent.search(
        query: value,
        locale: Provider.of<LocaleProvider>(context, listen: false).locale));
  }
}
