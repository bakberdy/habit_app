import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_app/core/shared/enums/weekday.dart';
import 'package:habit_app/core/shared/widgets/custom_filled_button.dart';
import 'package:habit_app/core/shared/widgets/labeled_text_form_field.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:habit_app/features/habit/presentation/bloc/habit_bloc.dart';

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
  final _tipController = TextEditingController();
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

  void _onCreateTapped(BuildContext context) {
    final title = _titleController.text;
    final description = _descriptionController.text;
    final takesTime = _estimatedTimeController.text;
    final why = _whyController.text;
    final selectedDays = [
      for (int i = 0; i < _selectedDays.length; i++)
        if (_selectedDays[i]) _weekdays[i]
    ];
    widget._myPlanBloc.add(
      HabitEvent.addNewHabit(
          why: why,
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
        if (state is HabitCreated) {
          Navigator.of(context).pop();
        }
      },
      bloc: widget._myPlanBloc,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),
              Center(
                  child: Text('Create your own habit', style: AppTextTheme.h4)),
              SizedBox(height: 15),
              LabeledTextFormField(
                  label: 'Title', controller: _titleController),
              Divider(height: 1, color: AppColors.grey.withAlpha(50)),
              LabeledTextFormField(
                  label: 'Description', controller: _descriptionController),
              Divider(height: 1, color: AppColors.grey.withAlpha(50)),
              LabeledTextFormField(
                label: 'Estimated time(minute)',
                controller: _estimatedTimeController,
                keyboardType: TextInputType.number,
              ),
              Divider(height: 1, color: AppColors.grey.withAlpha(50)),
              SizedBox(height: 10),
              Text('Days that you want to do'),
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
                      child: Text(_weekdays[index].value,
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
                      Text(
                        'Add more details to clarify your habit',
                        style: AppTextTheme.bodySmall,
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
                              height: 1, color: AppColors.grey.withAlpha(50))),
                      Visibility(
                        visible: _isOpenedTheDetailsForm,
                        child: LabeledTextFormField(
                            label: 'Tip to habit', controller: _tipController),
                      ),
                      Visibility(
                          visible: _isOpenedTheDetailsForm,
                          child: Divider(
                              height: 1, color: AppColors.grey.withAlpha(50))),
                      Visibility(
                        visible: _isOpenedTheDetailsForm,
                        child: LabeledTextFormField(
                            label: 'Why', controller: _whyController),
                      ),
                      Visibility(
                          visible: _isOpenedTheDetailsForm,
                          child: Divider(
                              height: 1, color: AppColors.grey.withAlpha(50))),
                      Visibility(
                        visible: _isOpenedTheDetailsForm,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Set a picture to habit',
                                style: AppTextTheme.bodySmall),
                            SizedBox(
                              height: 30,
                              child: VerticalDivider(
                                color: AppColors.grey.withAlpha(50),
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Pick from gallery',
                                  style: AppTextTheme.bodySmall
                                      .copyWith(color: AppColors.primary),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(height: 1, color: AppColors.grey.withAlpha(50)),
              SizedBox(height: 10),
              SizedBox(
                  height: 40,
                  child: CustomFilledButton(
                    title: 'Create',
                    titleColor: AppColors.primary,
                    onPressed: () => _onCreateTapped(context),
                    backgroundColor: AppColors.primary.withAlpha(10),
                    borderColor: AppColors.primary,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
