import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nissay_401k/app/pages/dashboard/dashboard_page.dart';
import 'package:nissay_401k/app/pages/login/login_page.dart';
import 'package:nissay_401k/app/pages/splash/splash_page.dart';
import 'package:nissay_401k/app/pages/user/user_page.dart';
import 'package:nissay_401k/app/pages/webview/webview_page.dart';
import 'package:nissay_401k/app/providers/logger.dart';
import 'package:nissay_401k/app/router/app_route_paths.dart';
import 'package:nissay_401k/app/router/session_route_guard.dart';
import 'package:nissay_401k/app/ui/navigation/app_shell_navigation_bar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter appRouter(Ref ref) {
  final logger = ref.watch(loggerProvider);
  final goRouter = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoutePaths.dashboard,
    routes: $appRoutes,
    observers: [
      TalkerRouteObserver(logger),
    ],
    redirect: (_, state) {
      return ref.read(sessionRouteStatusProvider.notifier).redirectForLocation(state.matchedLocation);
    },
  );

  ref.listen(sessionRouteStatusProvider, (previous, next) => goRouter.refresh());
  return goRouter;
}

@TypedGoRoute<SplashRoute>(path: AppRoutePaths.splash)
class SplashRoute extends GoRouteData with $SplashRoute {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashPage();
  }
}

@TypedGoRoute<LoginRoute>(path: AppRoutePaths.login)
class LoginRoute extends GoRouteData with $LoginRoute {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginPage();
  }
}

@TypedStatefulShellRoute<AuthenticatedShellRoute>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<DashboardBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<DashboardRoute>(path: AppRoutePaths.dashboard),
      ],
    ),
    TypedStatefulShellBranch<WebBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<WebViewRoute>(path: AppRoutePaths.webView),
      ],
    ),
    TypedStatefulShellBranch<UserBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<UserRoute>(path: AppRoutePaths.user),
      ],
    ),
  ],
)
class AuthenticatedShellRoute extends StatefulShellRouteData {
  const AuthenticatedShellRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return _AuthenticatedShellScaffold(navigationShell: navigationShell);
  }
}

class DashboardBranchData extends StatefulShellBranchData {
  const DashboardBranchData();
}

class WebBranchData extends StatefulShellBranchData {
  const WebBranchData();
}

class UserBranchData extends StatefulShellBranchData {
  const UserBranchData();
}

class DashboardRoute extends GoRouteData with $DashboardRoute {
  const DashboardRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DashboardPage();
  }
}

class WebViewRoute extends GoRouteData with $WebViewRoute {
  const WebViewRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const WebViewPage();
  }
}

class UserRoute extends GoRouteData with $UserRoute {
  const UserRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const UserPage();
  }
}

class _AuthenticatedShellScaffold extends StatelessWidget {
  const _AuthenticatedShellScaffold({required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: navigationShell,
      bottomNavigationBar: AppShellNavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
      ),
    );
  }
}
