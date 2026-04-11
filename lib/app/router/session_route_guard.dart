import 'package:nissay_401k/app/providers/nissay_session_provider.dart';
import 'package:nissay_401k/app/router/app_route_paths.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_route_guard.g.dart';

enum SessionRouteState {
  loading,
  unauthenticated,
  authenticated,
}

SessionRouteState sessionRouteStateFromCheck(AsyncValue<void> sessionCheck) {
  return switch (sessionCheck) {
    AsyncLoading() => SessionRouteState.loading,
    AsyncError() => SessionRouteState.unauthenticated,
    AsyncData() => SessionRouteState.authenticated,
  };
}

String? redirectLocationForSessionState(
  SessionRouteState state,
  String location,
) {
  const authenticatedPaths = {
    AppRoutePaths.dashboard,
    AppRoutePaths.webView,
  };
  const unauthenticatedPaths = {
    AppRoutePaths.login,
  };

  return switch (state) {
    SessionRouteState.loading => location == AppRoutePaths.splash ? null : AppRoutePaths.splash,
    SessionRouteState.unauthenticated => unauthenticatedPaths.contains(location) ? null : AppRoutePaths.login,
    SessionRouteState.authenticated => authenticatedPaths.contains(location) ? null : AppRoutePaths.dashboard,
  };
}

@riverpod
class SessionRouteStatus extends _$SessionRouteStatus {
  @override
  SessionRouteState build() {
    return sessionRouteStateFromCheck(ref.watch(nissaySessionCheckProvider));
  }

  String? redirectForLocation(String location) {
    return redirectLocationForSessionState(state, location);
  }
}
