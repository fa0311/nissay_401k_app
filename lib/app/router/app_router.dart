import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nissay_401k/app/pages/dashboard_page.dart';
import 'package:nissay_401k/app/pages/nissay_login_page.dart';
import 'package:nissay_401k/app/pages/splash_page.dart';
import 'package:nissay_401k/app/pages/webview_page.dart';
import 'package:nissay_401k/app/providers/nissay_session_provider.dart';
import 'package:nissay_401k/app/router/app_route_paths.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter appRouter(Ref ref) {
  final goRouter = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoutePaths.dashboard,
    routes: $appRoutes,
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
    return const NissayLoginPage();
  }
}

@TypedGoRoute<DashboardRoute>(path: AppRoutePaths.dashboard)
class DashboardRoute extends GoRouteData with $DashboardRoute {
  const DashboardRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DashboardPage();
  }
}

@TypedGoRoute<WebViewRoute>(path: AppRoutePaths.webView)
class WebViewRoute extends GoRouteData with $WebViewRoute {
  const WebViewRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const WebViewPage();
  }
}
