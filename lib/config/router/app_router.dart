import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/widgets/circular_indicator.dart';
import '../../features/01_onboarding/presentation/screens/splash_view.dart';
import '../../features/02_home/presentation/screens/home_view.dart';
import '../../features/03_about_me/presentation/screens/about_me_view.dart';
import 'app_routes.dart';
import 'nav_bar_navigator.dart';
import 'route_observer.dart';


abstract class AppRouter
{
  AppRouter._();
  static final navigatorState = GlobalKey<NavigatorState>(debugLabel: 'root');
  static final router = GoRouter(
    navigatorKey: navigatorState,
    debugLogDiagnostics: kDebugMode,
    observers: [RouteTracker(),],
    initialLocation: AppRoutes.splash,
    errorBuilder: (_, _) => const Scaffold(body: CustomLoadingIndicator(),),
    routes:
    [
      /// [ OnBoarding Feature ]
      // [Splash]
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splash,
        builder: (_, _) => const Splash(),
      ),

      StatefulShellRoute.indexedStack(
        builder: (_, _, navigationShell) => MainScaffold(navigationShell: navigationShell),
        branches:
        [
          // Branch 0 → Home ()
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.home,
                name: AppRoutes.home,
                builder: (_, _) => const Home(),
              ),
              ],
          ),
          // Branch 1 → About ME
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.aboutMe,
                name: AppRoutes.aboutMe,
                builder: (_, _) => const AboutMe()
              ),
            ],
          ),
          // Branch 2 → Projects
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.projects,
                name: AppRoutes.projects,
                builder: (_, _) => const Scaffold(
                  body: Center(child: Text('Projects Screen Placeholder')),
                ),
              ),
            ],
          ),
          /// Branch 3 → Resume
          StatefulShellBranch(
            routes: <RouteBase>
            [
              GoRoute(
                path: AppRoutes.resume,
                name: AppRoutes.resume,
                builder: (context, state) => const Scaffold(
                  body: Center(child: Text('Resume Screen Placeholder')),
                ),
              ),
            ],
          ),
        ]
      ),

    ]
  );
}
