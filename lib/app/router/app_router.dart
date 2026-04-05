import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nissay_401k/app/pages/dashboard_page.dart';
import 'package:nissay_401k/app/pages/nissay_login_page.dart';
import 'package:nissay_401k/app/pages/splash_page.dart';
import 'package:nissay_401k/app/pages/webview_page.dart';
import 'package:nissay_401k/app/providers/auth.dart';
import 'package:nissay_401k/app/providers/logger.dart';
import 'package:nissay_401k/app/providers/login_request_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

enum RouterStatusValue {
  loading,
  unauthenticated,
  authenticated,
}

@Riverpod(keepAlive: true)
Future<void> loginCheck(Ref ref) async {
  final nissay = ref.watch(nissayAuthProvider.notifier);
  final auth = await ref.watch(authStorageProvider.future);
  final log = ref.watch(loggerProvider);
  try {
    await ref.watch(getNissayDataProvider.future);
  } on Exception catch (e, trace) {
    log.error('Failed to fetch Nissay data', e, trace);
    if (auth case final AuthState auth) {
      await nissay.login(
        userid: auth.userid,
        password: auth.password,
      );
      await ref.watch(getNissayDataProvider.future);
    } else {
      rethrow;
    }
  }
}

@riverpod
class RootStatus extends _$RootStatus {
  @override
  RouterStatusValue build() {
    final nissay = ref.watch(loginCheckProvider);
    return switch (nissay) {
      AsyncLoading() => RouterStatusValue.loading,
      AsyncError() => RouterStatusValue.unauthenticated,
      AsyncData() => RouterStatusValue.authenticated,
    };
  }

  String? redirect(GoRouterState status) {
    switch (state) {
      case RouterStatusValue.loading:
        return SplashRoute().location;
      case RouterStatusValue.unauthenticated:
        if (isUnauthenticatedRoutes.every((route) => route.location != status.matchedLocation)) {
          return const LoginRoute().location;
        }
      case RouterStatusValue.authenticated:
        if (isAuthenticatedRoutes.every((route) => route.location != status.matchedLocation)) {
          return const DashboardRoute().location;
        }
    }
    return null;
  }

  List<GoRouteData> get isAuthenticatedRoutes => [
    const DashboardRoute(),
    const WebViewRoute(),
  ];
  List<GoRouteData> get isUnauthenticatedRoutes => [
    const LoginRoute(),
  ];
}

@riverpod
GoRouter appRouter(Ref ref) {
  final goRouter = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: const DashboardRoute().location,
    routes: $appRoutes,
    redirect: (_, state) => ref.read(rootStatusProvider.notifier).redirect(state),
  );

  ref.listen(rootStatusProvider, (prev, next) => goRouter.refresh());
  return goRouter;
}

@TypedGoRoute<SplashRoute>(path: '/splash')
class SplashRoute extends GoRouteData with $SplashRoute {
  SplashRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashPage();
  }
}

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData with $LoginRoute {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NissayLoginPage();
  }
}

@TypedGoRoute<DashboardRoute>(path: '/dashboard')
class DashboardRoute extends GoRouteData with $DashboardRoute {
  const DashboardRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DashboardPage();
  }
}

@TypedGoRoute<WebViewRoute>(path: '/webview')
class WebViewRoute extends GoRouteData with $WebViewRoute {
  const WebViewRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const WebViewPage();
  }
}
