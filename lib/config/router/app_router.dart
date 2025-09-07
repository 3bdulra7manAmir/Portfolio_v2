import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/widgets/circular_indicator.dart';
import '../../features/00_onboarding/presentation/screens/splash_view.dart';
import '../../features/01_home/presentation/screens/home_view.dart';
import '../../features/02_services/presentation/screens/services_view.dart';
import '../../features/03_about_me/presentation/screens/about_me_view.dart';
import '../../features/04_projects/presentation/screens/projects_view.dart';
import '../../features/05_resume/presentation/screens/resume_view.dart';
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
          // Branch 1 → Services
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.services,
                name: AppRoutes.services,
                builder: (_, _) => const Services()
              ),
            ],
          ),
          // Branch 2 → About Me
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.projects,
                name: AppRoutes.projects,
                builder: (_, _) => const Projects()
              ),
            ],
          ),
          /// Branch 3 → Projects
          StatefulShellBranch(
            routes: <RouteBase>
            [
              GoRoute(
                path: AppRoutes.aboutMe,
                name: AppRoutes.aboutMe,
                builder: (context, state) => const AboutMe(),
              ),
            ],
          ),
          /// Branch 4 → Resume
          StatefulShellBranch(
            routes: <RouteBase>
            [
              GoRoute(
                path: AppRoutes.resume,
                name: AppRoutes.resume,
                builder: (context, state) => const Resume(),
              ),
            ],
          ),
        ]
      ),

    ]
  );
}
