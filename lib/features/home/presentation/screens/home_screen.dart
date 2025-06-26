import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_app/core/core.dart';
import 'package:habit_app/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:habit_app/core/shared/widgets/daily_habit_card.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:habit_app/features/habit/presentation/bloc/my_plan/my_plan_bloc.dart';
import 'package:habit_app/features/habit/presentation/bloc/search/search_bloc.dart';
import 'package:habit_app/features/habit/presentation/screens/category_screen.dart';
import 'package:habit_app/features/home/presentation/widgets/habits_bar.dart';
import 'package:habit_app/core/shared/widgets/app_bar_bottom_with_search_field.dart';
import 'package:habit_app/features/home/presentation/widgets/quote_card.dart';
import 'package:habit_app/features/home/presentation/widgets/recomendation_bar.dart';
import 'package:flutter/material.dart';
import 'package:habit_app/injection/injection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => sl<SearchBloc>()),
      BlocProvider(
          create: (_) => sl<MyPlanBloc>()
            ..add(MyPlanEvent.getSubscriptionsOn(date: DateTime.now())))
    ], child: HomeScreenContent());
  }
}

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({super.key});

  @override
  State<HomeScreenContent> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenContent> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) => CustomScrollView(
            slivers: [
              CustomSliverAppBar(
                title: 'Home',
                bottom: AppBarBottomWithSearchField(
                  title: 'Welcome, Bakberdi',
                  searchController: _searchController,
                  onChange: (value) {
                    context
                        .read<SearchBloc>()
                        .add(SearchEvent.search(query: value));
                  },
                ),
              ),
              if (state is Searching && _searchController.text.isNotEmpty)
                SearchResultSliver(habits: state.habits),
              SliverVisibility(
                visible: _searchController.text.isEmpty,
                sliver: SliverToBoxAdapter(
                  child: QuoteCard(),
                ),
              ),
              SliverVisibility(
                  visible: _searchController.text.isEmpty,
                  sliver: SliverToBoxAdapter(child: RecomendationBar())),
              SliverVisibility(
                visible: _searchController.text.isEmpty,
                sliver: SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text('Your today\'s plan', style: AppTextTheme.h4),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
              SliverVisibility(
                visible: _searchController.text.isEmpty,
                sliver: BlocBuilder<MyPlanBloc, MyPlanState>(
                  builder: (context, state) {
                    if (state is MyPlanStateLoaded) {
                      return SliverList.separated(
                        separatorBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(
                            height: 1,
                            color: AppColors.white,
                          ),
                        ),
                        itemCount: state.habitInfo.length >= 3
                            ? 3
                            : state.habitInfo.length,
                        itemBuilder: (context, index) {
                          return HabitSubsriptionCard(
                            isLast: state.habitInfo.length >= 3
                                ? index == 2
                                : state.habitInfo.length - 1 == index,
                            isFirst: index == 0,
                            habitInfo: state.habitInfo[index],
                            dayStatus: state.dayStatus,
                          );
                        },
                      );
                    } else {
                      return SliverToBoxAdapter();
                    }
                  },
                ),
              ),
              // SliverToBoxAdapter(child: HabitsBar(title: 'Education')),
              // SliverToBoxAdapter(child: HabitsBar(title: 'Life')),
              // SliverToBoxAdapter(child: HabitsBar(title: 'Sport')),
            ],
          ),
        ),
      ),
    );
  }
}
