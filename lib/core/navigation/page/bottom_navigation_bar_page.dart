import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:habit_app/generated/l10n.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  @override
  void initState() {
    super.initState();
  }

  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 65,
          decoration: BoxDecoration(
              border:
                  Border(top: BorderSide(width: 1, color: Colors.grey[300]!))),
          child: Theme(
            data: Theme.of(context).copyWith(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
                elevation: 0,
                onTap: (value) {
                  _goBranch(value);
                  // setState(() {});
                },
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                currentIndex: widget.navigationShell.currentIndex,
                selectedItemColor: AppColors.primary,
                unselectedItemColor: AppColors.grey,
                backgroundColor: Colors.white,
                selectedLabelStyle: AppTextTheme.bodySmall
                    .copyWith(color: themeData.primaryColor, fontSize: 12),
                unselectedLabelStyle:
                    AppTextTheme.bodySmall.copyWith(fontSize: 12),
                items: [
                  _navigationBarItem(themeData, S.of(context).home,
                      'lib/assets/icons/home.png', 0),
                  _navigationBarItem(themeData, S.of(context).catalog,
                      'lib/assets/icons/search.png', 1),
                  _navigationBarItem(themeData, S.of(context).myPlan,
                      'lib/assets/icons/goals.png', 2),
                  _navigationBarItem(themeData, S.of(context).settings,
                      'lib/assets/icons/settings.png', 3),
                ]),
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _navigationBarItem(
      ThemeData themeData, String label, String svgIconPath, int index) {
    final isSelected = widget.navigationShell.currentIndex == index;
    return BottomNavigationBarItem(
        backgroundColor: Colors.white,
        icon: SizedBox(
          height: 20,
          width: 20,
          child: Image.asset(
            svgIconPath,
            color: isSelected ? themeData.primaryColor : themeData.canvasColor,
          ),
        ),
        label: label);
  }
}
