import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_app/core/core.dart';
import 'package:habit_app/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:habit_app/features/habit/presentation/widgets/daily_habit_card.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:habit_app/features/habit/presentation/bloc/my_plan/my_plan_bloc.dart';
import 'package:habit_app/features/habit/presentation/widgets/my_plan_floating_action_button.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:habit_app/injection/injection.dart';

class MyPlanScreen extends StatelessWidget {
  const MyPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MyPlanBloc>(
      create: (_) => sl<MyPlanBloc>()
        ..add(MyPlanEvent.getSubscriptionsOn(date: DateTime.now())),
      child: MyPlanScreenContent(),
    );
  }
}

class MyPlanScreenContent extends StatefulWidget {
  const MyPlanScreenContent({super.key});

  @override
  State<MyPlanScreenContent> createState() => _MyPlanScreenContentState();
}

class _MyPlanScreenContentState extends State<MyPlanScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyPlanFloationgActionButton(
        myPlanBloc: context.read<MyPlanBloc>(),
      ),
      body: SafeArea(
        child: BlocConsumer<MyPlanBloc, MyPlanState>(
          listener: (context, state) {
            if (state is MyPlanStateError) {
              showErrorToast(context, message: state.message);
              context
                  .read<MyPlanBloc>()
                  .add(MyPlanEvent.getSubscriptionsOn(date: DateTime.now()));
            }
          },
          builder: (context, state) {
            if (state is MyPlanStateLoaded) {
              return CustomScrollView(
                slivers: [
                  CustomSliverAppBar(title: 'My plan'),
                  SliverToBoxAdapter(
                    child: Theme(
                      data: ThemeData(
                          colorScheme: ColorScheme.fromSwatch(
                              primarySwatch: Colors.blue)),
                      child: EasyDateTimeLinePicker(
                        firstDate: DateTime(2025, 6, 13),
                        lastDate: DateTime(2030, 3, 18),
                        focusedDate: state.date,
                        currentDate: DateTime.now(),
                        onDateChange: (date) {
                          context
                              .read<MyPlanBloc>()
                              .add(MyPlanEvent.getSubscriptionsOn(date: date));
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(child: SizedBox(height: 10)),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text(state.textOfDay, style: AppTextTheme.h4),
                            SizedBox(height: 10),
                          ]),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Builder(
                      builder: (context) {
                        if (state.habitInfo.isEmpty) {
                          return Column(
                            children: [
                              SizedBox(height: 100),
                              Center(
                                child: Text(
                                  "You don't have any plans on this day.\nTap + to add a new habit!",
                                  textAlign: TextAlign.center,
                                  style: AppTextTheme.h4
                                      .copyWith(color: AppColors.hint),
                                ),
                              ),
                            ],
                          );
                        }
                        return SizedBox();
                      },
                    ),
                  ),
                  SliverPadding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                    sliver: SliverList.separated(
                      separatorBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(
                          height: 1,
                          color: AppColors.white,
                        ),
                      ),
                      itemCount: state.habitInfo.length,
                      itemBuilder: (context, index) {
                        return HabitSubsriptionCard(
                          habitInfo: state.habitInfo[index],
                          isLast: index == state.habitInfo.length - 1,
                          isFirst: index == 0,
                          dayStatus: state.dayStatus,
                        );
                      },
                    ),
                  ),
                  if (state.habitInfo.isNotEmpty &&
                      (state.dayStatus.isPast() || state.dayStatus.isToday()))
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Text(
                          'Great job! You completed ${state.numberOfDoneHabits} out of ${state.habitInfo.length} habits ${state.textOfDay.toLowerCase()}. 😊',
                          style: AppTextTheme.h4,
                        ),
                      ),
                    )
                ],
              );
            } else {
              return SizedBox();
            }
          },
        ),
      ),
    );
  }
}
