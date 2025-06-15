import 'package:chat_app/core/theme/app_colors.dart';
import 'package:chat_app/core/utils/show_bottom_sheet_with_buttons.dart';
import 'package:chat_app/features/my_plan/presentation/widgets/create_own_habit_bottom_sheet.dart';
import 'package:flutter/material.dart';

class GoalsFloationgActionButton extends StatefulWidget {
  const GoalsFloationgActionButton({
    super.key,
  });

  @override
  State<GoalsFloationgActionButton> createState() =>
      _GoalsFloationgActionButtonState();
}

class _GoalsFloationgActionButtonState
    extends State<GoalsFloationgActionButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: CircleBorder(),
      onPressed: () {
        showBottomSheetWithButtons(
            title: 'Add a new routine',
            context,
            actions: [
              BottomSheetActionItem(
                  onTap: _onBrowseRountinesTap,
                  text: 'Browse rountines',
                  icon: Icons.open_in_browser_rounded),
              BottomSheetActionItem(
                  onTap: () => _onCreateOwnTap(context),
                  text: 'Create Own',
                  icon: Icons.add_circle_outline),
            ]);
      },
      backgroundColor: AppColors.primary,
      child: Icon(
        Icons.add,
        color: AppColors.white,
      ),
    );
  }

  void _onBrowseRountinesTap() {}

  void _onCreateOwnTap(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: AppColors.white,
        useRootNavigator: true,
        context: context,
        builder: (context) {
          return CreateOwnHabitBottomSheet();
        });
  }
}
