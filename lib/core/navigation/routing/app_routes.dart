part of 'routing.dart';

class AppRoutes {
  ///branches for bottom navigation bar

  static StatefulShellBranch settingsBranch(
          {required TalkerRouteObserver observer,
          required GlobalKey<NavigatorState> key}) =>
      StatefulShellBranch(
        navigatorKey: key,
        observers: [observer],
        routes: [
          GoRoute(
            name: 'settings',
            path: AppPaths.settings,
            builder: (context, state) => SettingsPage(),
          )
        ],
      );

  static StatefulShellBranch homeBranch(
          {required TalkerRouteObserver observer,
          required GlobalKey<NavigatorState> key}) =>
      StatefulShellBranch(
        navigatorKey: key,
        observers: [observer],
        routes: [
          GoRoute(
            name: 'home',
            path: AppPaths.home,
            builder: (context, state) => HomeScreen(),
          )
        ],
      );

  static StatefulShellBranch myPlanBranch(
          {required TalkerRouteObserver observer,
          required GlobalKey<NavigatorState> key}) =>
      StatefulShellBranch(
        navigatorKey: key,
        observers: [observer],
        routes: [
          GoRoute(
            name: 'my_plan',
            path: AppPaths.myPlan,
            builder: (context, state) => MyPlanScreen(),
          )
        ],
      );

  static StatefulShellBranch catalogBranch(
          {required TalkerRouteObserver observer,
          required GlobalKey<NavigatorState> key}) =>
      StatefulShellBranch(
        navigatorKey: key,
        observers: [observer],
        routes: [
          GoRoute(
              name: 'catalog',
              path: AppPaths.catalog,
              builder: (context, state) => CatalogScreen(),
              routes: [
                GoRoute(
                    name: 'category',
                    path: '${AppPaths.category}/:category_id',
                    builder: (context, state) => CategoryScreen(
                          categoryId: int.parse(
                              state.pathParameters['category_id'] ?? '0'),
                        ),
                    routes: [
                      // habitRoute,
                    ])
              ])
        ],
      );

  static get habitRoute => GoRoute(
        name: 'habit',
        path: '${AppPaths.habit}/:habit_id',
        builder: (context, state) => HabitScreen(
          habitId: int.parse(state.pathParameters['habit_id'] ?? '0'),
        ),
      );
}
