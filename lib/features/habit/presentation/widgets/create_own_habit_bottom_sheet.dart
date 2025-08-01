import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_app/core/bloc/locale_cubit.dart';
import 'package:habit_app/core/shared/enums/weekday.dart';
import 'package:habit_app/core/shared/widgets/custom_filled_button.dart';
import 'package:habit_app/core/shared/widgets/labeled_text_form_field.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:habit_app/features/habit/domain/entities/tip_entity.dart';
import 'package:habit_app/features/habit/presentation/bloc/my_plan/my_plan_bloc.dart';
import 'package:habit_app/generated/l10n.dart';

class CreateOwnHabitBottomSheet extends StatefulWidget {
  const CreateOwnHabitBottomSheet({super.key, required myPlanBloc})
      : _myPlanBloc = myPlanBloc;
  final MyPlanBloc _myPlanBloc;

  @override
  State<CreateOwnHabitBottomSheet> createState() =>
      _CreateOwnHabitBottomSheetState();
}

class _CreateOwnHabitBottomSheetState extends State<CreateOwnHabitBottomSheet>
    with SingleTickerProviderStateMixin {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _estimatedTimeController = TextEditingController();
  final _tipTitleController = TextEditingController();
  final _tipDescriptionController = TextEditingController();
  final _whyController = TextEditingController();
  final _selectedDays = List.filled(7, false);
  bool _isOpenedTheDetailsForm = false;

  late final AnimationController _rotationAnimationController;
  late final Animation<double> _rotateAnimation;

  @override
  void initState() {
    _rotationAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );

    _rotateAnimation = Tween<double>(begin: 0, end: pi / 2).animate(
      CurvedAnimation(
          parent: _rotationAnimationController, curve: Curves.linear),
    );
    super.initState();
  }

  void _toggleRotation() {
    if (_isOpenedTheDetailsForm) {
      _rotationAnimationController.reverse();
    } else {
      _rotationAnimationController.forward();
    }
    _isOpenedTheDetailsForm = !_isOpenedTheDetailsForm;
    setState(() {});
  }

  void _onCreateTapped(BuildContext context, Locale? locale) {
    final title = _titleController.text;
    final description = _descriptionController.text;
    final takesTime = _estimatedTimeController.text;
    final why = _whyController.text;
    final tipTitle = _tipTitleController.text;
    final tipDescription = _tipDescriptionController.text;
    final selectedDays = [
      for (int i = 0; i < _selectedDays.length; i++)
        if (_selectedDays[i]) _weekdays[i]
    ];
    final tips = <TipEntity>[];
    if (tipDescription.isNotEmpty && tipTitle.isNotEmpty) {
      tips.add(TipEntity(id: 0, title: tipTitle, content: tipDescription));
    }
    widget._myPlanBloc.add(
      MyPlanEvent.addNewHabit(
          why: why,
          locale: locale,
          tips: tips.isNotEmpty ? tips : null,
          title: title,
          description: description,
          takeMinutes: int.tryParse(takesTime),
          days: selectedDays),
    );
  }

  final List<Weekday> _weekdays = [
    Weekday.monday,
    Weekday.tuesday,
    Weekday.wednesday,
    Weekday.thursday,
    Weekday.friday,
    Weekday.saturday,
    Weekday.sunday,
  ];
  @override
  Widget build(BuildContext context) {
    return BlocListener(
      listener: (context, state) {
        if (state is MyPlanStateCreated) {
          Navigator.of(context).pop();
        }
      },
      bloc: widget._myPlanBloc,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20),
                Center(
                    child: Text(S.of(context).createYourOwnHabit,
                        style: AppTextTheme.h4)),
                SizedBox(height: 15),
                LabeledTextFormField(
                    label: S.of(context).title, controller: _titleController),
                Divider(height: 1, color: AppColors.grey.withAlpha(50)),
                LabeledTextFormField(
                    label: S.of(context).description,
                    controller: _descriptionController),
                Divider(height: 1, color: AppColors.grey.withAlpha(50)),
                LabeledTextFormField(
                  label: S.of(context).estimatedTimeminute,
                  controller: _estimatedTimeController,
                  keyboardType: TextInputType.number,
                ),
                Divider(height: 1, color: AppColors.grey.withAlpha(50)),
                SizedBox(height: 10),
                Text(S.of(context).daysThatYouWantToDo),
                SizedBox(height: 5),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  alignment: WrapAlignment.start,
                  children: List.generate(7, (index) {
                    final bgColor = index == 6 || index == 5
                        ? Colors.redAccent
                        : AppColors.primary;
                    return InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        _selectedDays[index] = !_selectedDays[index];
                        setState(() {});
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: _selectedDays[index]
                              ? bgColor
                              : bgColor.withAlpha(50),
                        ),
                        child: Text(_weekdays[index].label(context),
                            style: AppTextTheme.bodySmall.copyWith(
                                color: _selectedDays[index]
                                    ? Colors.white
                                    : AppColors.textPrimary)),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 10),
                Divider(height: 1, color: AppColors.grey.withAlpha(50)),
                InkWell(
                  onTap: _toggleRotation,
                  child: SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 280,
                          child: Text(
                            S.of(context).addMoreDetailsToClarifyYourHabit,
                            style: AppTextTheme.bodySmall,
                          ),
                        ),
                        AnimatedBuilder(
                          animation: _rotationAnimationController,
                          builder: (BuildContext context, Widget? child) =>
                              Transform.rotate(
                            angle: _rotateAnimation.value,
                            child: Icon(
                              Icons.keyboard_arrow_right_outlined,
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                RepaintBoundary(
                  child: AnimatedSize(
                    alignment: Alignment.topCenter,
                    duration: Duration(milliseconds: 200),
                    child: Column(
                      children: [
                        Visibility(
                            visible: _isOpenedTheDetailsForm,
                            child: Divider(
                                height: 1,
                                color: AppColors.grey.withAlpha(50))),
                        Visibility(
                          visible: _isOpenedTheDetailsForm,
                          child: LabeledTextFormField(
                            label: S.of(context).why,
                            controller: _whyController,
                          ),
                        ),
                        Visibility(
                            visible: _isOpenedTheDetailsForm,
                            child: Divider(
                                height: 1,
                                color: AppColors.grey.withAlpha(50))),
                        Visibility(
                            visible: _isOpenedTheDetailsForm,
                            child: SizedBox(height: 20)),
                        Visibility(
                            visible: _isOpenedTheDetailsForm,
                            child: Divider(
                                height: 1,
                                color: AppColors.grey.withAlpha(50))),
                        Visibility(
                          visible: _isOpenedTheDetailsForm,
                          child: LabeledTextFormField(
                              label: S.of(context).tipToHabit,
                              controller: _tipTitleController),
                        ),
                        Visibility(
                            visible: _isOpenedTheDetailsForm,
                            child: Divider(
                                height: 1,
                                color: AppColors.grey.withAlpha(50))),
                        Visibility(
                          visible: _isOpenedTheDetailsForm,
                          child: LabeledTextFormField(
                              label: S.of(context).tipDescription,
                              controller: _tipDescriptionController),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(height: 1, color: AppColors.grey.withAlpha(50)),
                SizedBox(height: 10),
                BlocBuilder<LocaleCubit, LocaleState>(
                    builder: (context, localeState) {
                  return SizedBox(
                      height: 40,
                      child: CustomFilledButton(
                        title: S.of(context).create,
                        titleColor: AppColors.primary,
                        onPressed: () =>
                            _onCreateTapped(context, localeState.locale),
                        backgroundColor: AppColors.primary.withAlpha(10),
                        borderColor: AppColors.primary,
                      ));
                }),
                SizedBox(height: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
