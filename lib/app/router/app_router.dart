import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nissay_401k/app/pages/dashboard_page.dart';
import 'package:nissay_401k/app/pages/nissay_login_page.dart';
import 'package:nissay_401k/app/pages/splash_page.dart';
import 'package:nissay_401k/app/providers/auth.dart';
import 'package:nissay_401k/app/providers/logger.dart';
import 'package:nissay_401k/app/providers/login_request_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

enum RouterStatusValue {
  splash,
  login,
  dashboard,
}

@riverpod
Future<void> loginCheck(Ref ref) async {
  final nissay = ref.watch(nissayAuthProvider.notifier);
  final auth = await ref.watch(authStorageProvider.future);
  final log = ref.watch(loggerProvider);
  try {
    await ref.read(getNissayDataProvider.future);
  } on Exception catch (e, trace) {
    log.error('Failed to fetch Nissay data', e, trace);
    if (auth case final AuthState auth) {
      await nissay.login(
        userid: auth.userid,
        password: auth.password,
      );
      await ref.read(getNissayDataProvider.future);
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
      AsyncLoading() => RouterStatusValue.splash,
      AsyncError() => RouterStatusValue.login,
      AsyncData() => RouterStatusValue.dashboard,
    };
  }

  FutureOr<String> redirect(GoRouterState status) {
    switch (state) {
      case RouterStatusValue.splash:
        return const SplashRoute().location;
      case RouterStatusValue.login:
        return const LoginRoute().location;
      case RouterStatusValue.dashboard:
        return const DashboardRoute().location;
    }
  }
}

@riverpod
GoRouter appRouter(Ref ref) {
  final goRouter = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: const DashboardRoute().location,
    routes: $appRoutes,
    redirect: (_, state) =>
        ref.read(rootStatusProvider.notifier).redirect(state),
  );

  ref.listen(rootStatusProvider, (prev, next) => goRouter.refresh());
  return goRouter;
}

@TypedGoRoute<SplashRoute>(path: '/splash')
class SplashRoute extends GoRouteData with $SplashRoute {
  const SplashRoute();
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
