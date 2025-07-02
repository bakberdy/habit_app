import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_app/core/providers/locale_cubit.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:habit_app/features/habit/domain/entities/habit_info.dart';
import 'package:habit_app/features/habit/presentation/bloc/my_plan/my_plan_bloc.dart';
import 'package:habit_app/generated/l10n.dart';

class HabitSubsriptionCard extends StatelessWidget {
  const HabitSubsriptionCard({
    super.key,
    required this.habitInfo,
    required this.isLast,
    required this.isFirst,
    required this.dayStatus,
  });
  final HabitInfo habitInfo;
  final bool isLast;
  final bool isFirst;
  final DayStatus dayStatus;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, LocaleState>(builder: (context, state) {
      return InkWell(
        borderRadius: (isFirst && isLast)
            ? BorderRadius.circular(12)
            : isFirst
                ? BorderRadius.vertical(top: Radius.circular(12))
                : isLast
                    ? BorderRadius.vertical(bottom: Radius.circular(12))
                    : BorderRadius.zero,
        onTap: () {},
        child: Container(
          // margin: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: AppColors.primary.withAlpha(50),
            borderRadius: (isFirst && isLast)
                ? BorderRadius.circular(12)
                : isFirst
                    ? BorderRadius.vertical(top: Radius.circular(12))
                    : isLast
                        ? BorderRadius.vertical(bottom: Radius.circular(12))
                        : BorderRadius.zero,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(width: 5),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(habitInfo.habit.title,
                          style: AppTextTheme.bodySmall
                              .copyWith(fontWeight: FontWeight.w600)),
                      SizedBox(height: 3),
                      Text(habitInfo.habit.description,
                          style: AppTextTheme.bodySmall),
                      SizedBox(height: 3),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            size: 15,
                            weight: 600,
                          ),
                          SizedBox(width: 3),
                          Text(
                            S
                                .of(context)
                                .takestimeMinutes(habitInfo.habit.takesTime),
                            style: AppTextTheme.bodySmall,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              dayStatus.isPast() || dayStatus.isToday()
                  ? Transform.scale(
                      scale: 1.3,
                      child: Checkbox(
                        value: habitInfo.isDone,
                        onChanged: dayStatus.isToday()
                            ? (value) {
                                context.read<MyPlanBloc>().add(
                                    MyPlanEvent.toggleHabitDoneStatus(
                                        locale: state.locale,
                                        date: DateTime.now(),
                                        habitId: habitInfo.habit.id,
                                        isDone: !(habitInfo.isDone ?? true)));
                              }
                            : null,
                        side: BorderSide.none,
                        fillColor: WidgetStatePropertyAll(AppColors.primary),
                      ),
                    )
                  : SizedBox(),
              SizedBox(width: 5)
            ],
          ),
        ),
      );
    });
  }
}
