import 'package:nissay_401k/app/providers/auth.dart';
import 'package:nissay_401k/app/providers/logger.dart';
import 'package:nissay_401k/app/providers/nissay_repository_provider.dart';
import 'package:nissay_401k/app/router/app_route_paths.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nissay_session_provider.g.dart';

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

@Riverpod(keepAlive: true)
Future<void> nissaySessionCheck(Ref ref) async {
  final session = ref.watch(nissaySessionProvider.notifier);
  final savedAuth = await ref.watch(authStorageProvider.future);
  final log = ref.watch(loggerProvider);

  try {
    await ref.watch(nissayCurrentAssetsProvider.future);
  } on Exception catch (error, stackTrace) {
    log.error('Failed to fetch Nissay data', error, stackTrace);

    if (savedAuth case final AuthState auth) {
      await session.login(
        userId: auth.userId,
        password: auth.password,
      );
      await ref.watch(nissayCurrentAssetsProvider.future);
    } else {
      rethrow;
    }
  }
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

@riverpod
class NissaySession extends _$NissaySession {
  @override
  Future<AuthState?> build() {
    return ref.watch(authStorageProvider.future);
  }

  Future<void> login({
    required String userId,
    required String password,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repository = await ref.read(nissayRepositoryProvider.future);
      await repository.login(userId: userId, password: password);
      await ref
          .read(authStorageProvider.notifier)
          .save(
            userId: userId,
            password: password,
          );
      ref.invalidate(nissayRepositoryProvider);
      ref.invalidate(nissayCurrentAssetsProvider);
      return AuthState(userId: userId, password: password);
    });
  }

  Future<void> logout() async {
    final cookieJar = await ref.read(nissayCookieJarProvider.future);
    await cookieJar.deleteAll();
    await ref.read(authStorageProvider.notifier).clear();
    ref.invalidate(nissayRepositoryProvider);
    ref.invalidate(nissayCurrentAssetsProvider);
    state = const AsyncData(null);
  }

  Future<void> refresh() async {
    final cookieJar = await ref.read(nissayCookieJarProvider.future);
    await cookieJar.deleteAll();
    ref.invalidate(nissayRepositoryProvider);
    ref.invalidate(nissayCurrentAssetsProvider);
    state = await AsyncValue.guard(() => ref.read(authStorageProvider.future));
  }
}
