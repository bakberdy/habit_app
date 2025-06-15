import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _currentPage = 0;

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
                  _currentPage = value;
                  _goBranch(value);
                  // setState(() {});
                },
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                currentIndex: _currentPage,
                selectedItemColor: themeData.primaryColor,
                unselectedItemColor: themeData.canvasColor,
                backgroundColor: Colors.white,
                selectedLabelStyle: themeData.textTheme.bodySmall
                    ?.copyWith(color: themeData.primaryColor, fontSize: 12),
                unselectedLabelStyle:
                    themeData.textTheme.bodySmall?.copyWith(fontSize: 12),
                items: [
                  _navigationBarItem(_currentPage, themeData, 'Home',
                      'lib/assets/icons/home.png', 0),
                  _navigationBarItem(_currentPage, themeData, 'Catalog',
                      'lib/assets/icons/search.png', 1),
                  _navigationBarItem(_currentPage, themeData, 'My plan',
                      'lib/assets/icons/goals.png', 2),
                  _navigationBarItem(_currentPage, themeData, 'Settings',
                      'lib/assets/icons/settings.png', 3),
                ]),
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _navigationBarItem(int currentIndex,
      ThemeData themeData, String label, String svgIconPath, int index) {
    return BottomNavigationBarItem(
        backgroundColor: Colors.white,
        icon: SizedBox(
          height: 20,
          width: 20,
          child: Image.asset(
            svgIconPath,
            color: currentIndex == index
                ? themeData.primaryColor
                : themeData.canvasColor,
          ),
        ),
        label: label);
  }
}
