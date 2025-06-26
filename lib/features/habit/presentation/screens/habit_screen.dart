import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:habit_app/features/habit/presentation/bloc/catalog/catalog_bloc.dart';
import 'package:habit_app/features/habit/presentation/widgets/days_widget.dart';
import 'package:habit_app/features/habit/presentation/widgets/tips_widget.dart';
import 'package:habit_app/injection/injection.dart';
import 'package:lottie/lottie.dart';

class HabitScreen extends StatelessWidget {
  const HabitScreen({super.key, required this.habitId});
  final int habitId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CatalogBloc>(
      create: (_) =>
          sl<CatalogBloc>()..add(CatalogEvent.loadHabit(habitId: habitId)),
      child: HabitScreenContent(habitId: habitId),
    );
  }
}

class HabitScreenContent extends StatefulWidget {
  const HabitScreenContent({super.key, required this.habitId});
  final int habitId;

  @override
  State<HabitScreenContent> createState() => _HabitScreenState();
}

class _HabitScreenState extends State<HabitScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Lottie.asset('lib/assets/animations/cosmos_animation.json',
              fit: BoxFit.cover),
          SafeArea(
            child: BlocBuilder<CatalogBloc, CatalogState>(
                builder: (context, state) {
              if (state is HabitLoaded) {
                final habit = state.habit;
                return CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      automaticallyImplyLeading: false,
                      backgroundColor: Colors.transparent,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BackButton(
                            color: AppColors.textPrimary,
                          ),
                          Text(
                            "Details",
                            style: AppTextTheme.h5.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 70)
                        ],
                      ),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 60)),
                    SliverToBoxAdapter(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 0),
                                  color: AppColors.grey.withAlpha(80),
                                  blurRadius: 10)
                            ],
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              habit.title,
                              style: AppTextTheme.h3
                                  .copyWith(color: AppColors.textPrimary),
                            ),
                            SizedBox(height: 10),
                            Text(
                              habit.description,
                              style: AppTextTheme.bodySmall,
                            ),
                            SizedBox(height: 20),
                            habit.why == null || habit.why!.isEmpty
                                ? SizedBox()
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Why:',
                                          style: AppTextTheme.bodyMedium
                                              .copyWith(
                                                  fontWeight: FontWeight.w600)),
                                      Text(
                                        habit.why!,
                                        style: AppTextTheme.bodySmall,
                                      ),
                                      SizedBox(height: 20),
                                    ],
                                  ),
                            Row(
                              children: [
                                Text('Takes minutes:',
                                    style: AppTextTheme.bodyMedium
                                        .copyWith(fontWeight: FontWeight.w600)),
                                SizedBox(width: 5),
                                Text('${habit.takesTime}',
                                    style: AppTextTheme.bodyMedium
                                        .copyWith(fontWeight: FontWeight.w600)),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text('Suggested days:',
                                style: AppTextTheme.bodyMedium
                                    .copyWith(fontWeight: FontWeight.w600)),
                            SizedBox(height: 5),
                            DaysWidget(days: habit.days),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    habit.tips == null || habit.tips!.isEmpty
                        ? SliverToBoxAdapter(child: SizedBox())
                        : SliverList(
                            delegate: SliverChildListDelegate([
                              Padding(
                                padding: EdgeInsetsGeometry.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Text('Tips:',
                                    style: AppTextTheme.bodyMedium
                                        .copyWith(fontWeight: FontWeight.w600)),
                              ),
                              TipsWidget(tips: habit.tips!)
                            ]),
                          )
                  ],
                );
              } else {
                return SizedBox();
              }
            }),
          ),
        ],
      ),
    );
  }
}
