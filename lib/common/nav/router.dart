import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'package:template_app/common/nav/route_params.dart';
import 'package:template_app/common/nav/routes.dart';
import 'package:template_app/common/widget/scaffold_with_nav_bar.dart';
import 'package:template_app/features/home/presentation/view/home_screen.dart';
import 'package:template_app/features/profile/presentation/view/profile_screen.dart';
import 'package:template_app/features/search/presentation/view/search_screen.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  initialLocation: Routes.home,
  debugLogDiagnostics: true,
  navigatorKey: rootNavigatorKey,
  observers: [
    // FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
  ],
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          ScaffoldWithNavBar(navigationShell: navigationShell),
      branches: [
        homeBranch(
          routes: [
            searchSubRoute(),
          ],
        ),
        profileBranch(),
      ],
    ),
  ],
);

StatefulShellBranch homeBranch({List<RouteBase> routes = const []}) =>
    StatefulShellBranch(
      routes: [
        GoRoute(
          path: Routes.home,
          builder: (context, state) => const HomeScreen(),
          routes: routes,
          redirect: (context, state) async {
            // final prefs = await SharedPreferences.getInstance();
            // final bool? firstLaunch = prefs.getBool('firstLaunch');
            // if (firstLaunch != false) {
            //   return Routes.onboarding;
            // }
            // final isUserLoggedIn = await getIt<AuthRepository>().isUserLoggedIn();
            // if (!isUserLoggedIn) {
            //   return Routes.auth;
            // }
            return null;
          },
        ),
      ],
    );

GoRoute searchSubRoute({List<RouteBase> routes = const []}) => GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: 'search',
      builder: (context, state) => SearchScreen(
        query: (state.extra as Map)[RouteParams.query],
      ),
      routes: routes,
    );

StatefulShellBranch profileBranch({List<RouteBase> routes = const []}) =>
    StatefulShellBranch(
      routes: [
        GoRoute(
          path: Routes.profile,
          builder: (context, state) => const ProfileScreen(),
          routes: routes,
        ),
      ],
    );
