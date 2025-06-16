import 'package:flutter/material.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:habit_app/features/catalog/domain/entities/tip_entity.dart';

class TipsWidget extends StatefulWidget {
  const TipsWidget({super.key, required this.tips});
  final List<TipEntity> tips;

  @override
  State<TipsWidget> createState() => _TipsWidgetState();
}

class _TipsWidgetState extends State<TipsWidget> {
  int _currentStepIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
        stepIconBuilder: (index, state) => Icon(
              Icons.circle,
              color:
                  _currentStepIndex == index ? AppColors.primary : Colors.grey,
            ),
        onStepTapped: (value) => setState(() {
              _currentStepIndex = value;
            }),
        currentStep: _currentStepIndex,
        controlsBuilder: (context, details) => SizedBox(
              width: double.infinity,
            ),
        physics: NeverScrollableScrollPhysics(),
        steps: List.generate(
          widget.tips.length,
          (index) {
            final tip = widget.tips[index];
            return Step(
              stepStyle: _currentStepIndex == index
                  ? StepStyle(color: AppColors.primary)
                  : null,
              title: Text(tip.title, style: AppTextTheme.bodyMedium),
              content: Text(
                tip.content,
                style: AppTextTheme.bodySmall,
              ),
            );
          },
        ));
  }
}
