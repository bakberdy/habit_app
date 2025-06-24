import 'package:go_router/go_router.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/utils/show_bottom_sheet_with_buttons.dart';
import 'package:habit_app/features/habit/presentation/bloc/habit_bloc.dart';
import 'package:habit_app/features/habit/presentation/widgets/create_own_habit_bottom_sheet.dart';
import 'package:flutter/material.dart';

class MyPlanFloationgActionButton extends StatefulWidget {
  const MyPlanFloationgActionButton({
    super.key,
    required myPlanBloc,
  }) : _myPlanBloc = myPlanBloc;
  final MyPlanBloc _myPlanBloc;

  @override
  State<MyPlanFloationgActionButton> createState() =>
      _MyPlanFloationgActionButtonState();
}

class _MyPlanFloationgActionButtonState
    extends State<MyPlanFloationgActionButton> {
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
                  onTap: () async => await _onCreateOwnTap(context),
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

  void _onBrowseRountinesTap() {
    context.pop();
    context.go('/catalog');
  }

  Future<void> _onCreateOwnTap(BuildContext context) async {
    await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: AppColors.white,
        useRootNavigator: true,
        context: context,
        builder: (context) {
          return CreateOwnHabitBottomSheet(myPlanBloc: widget._myPlanBloc);
        });
    if (context.mounted) {
      context.pop();
    }
  }
}
