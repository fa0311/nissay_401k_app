// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $splashRoute,
  $loginRoute,
  $dashboardRoute,
  $webViewRoute,
];

RouteBase get $splashRoute =>
    GoRouteData.$route(path: '/splash', factory: $SplashRoute._fromState);

mixin $SplashRoute on GoRouteData {
  static SplashRoute _fromState(GoRouterState state) => SplashRoute();

  @override
  String get location => GoRouteData.$location('/splash');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginRoute =>
    GoRouteData.$route(path: '/login', factory: $LoginRoute._fromState);

mixin $LoginRoute on GoRouteData {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  @override
  String get location => GoRouteData.$location('/login');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $dashboardRoute =>
    GoRouteData.$route(path: '/dashboard', factory: $DashboardRoute._fromState);

mixin $DashboardRoute on GoRouteData {
  static DashboardRoute _fromState(GoRouterState state) =>
      const DashboardRoute();

  @override
  String get location => GoRouteData.$location('/dashboard');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $webViewRoute =>
    GoRouteData.$route(path: '/webview', factory: $WebViewRoute._fromState);

mixin $WebViewRoute on GoRouteData {
  static WebViewRoute _fromState(GoRouterState state) => const WebViewRoute();

  @override
  String get location => GoRouteData.$location('/webview');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(loginCheck)
final loginCheckProvider = LoginCheckProvider._();

final class LoginCheckProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  LoginCheckProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginCheckProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginCheckHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return loginCheck(ref);
  }
}

String _$loginCheckHash() => r'd6240b19eb14ad8882b2e0b5e530e333ef98ec17';

@ProviderFor(RootStatus)
final rootStatusProvider = RootStatusProvider._();

final class RootStatusProvider
    extends $NotifierProvider<RootStatus, RouterStatusValue> {
  RootStatusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'rootStatusProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$rootStatusHash();

  @$internal
  @override
  RootStatus create() => RootStatus();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RouterStatusValue value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RouterStatusValue>(value),
    );
  }
}

String _$rootStatusHash() => r'4a1b8f0b01e8ad757cd9c3e7c9b32c28c5168432';

abstract class _$RootStatus extends $Notifier<RouterStatusValue> {
  RouterStatusValue build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<RouterStatusValue, RouterStatusValue>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RouterStatusValue, RouterStatusValue>,
              RouterStatusValue,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(appRouter)
final appRouterProvider = AppRouterProvider._();

final class AppRouterProvider
    extends $FunctionalProvider<GoRouter, GoRouter, GoRouter>
    with $Provider<GoRouter> {
  AppRouterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appRouterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appRouterHash();

  @$internal
  @override
  $ProviderElement<GoRouter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GoRouter create(Ref ref) {
    return appRouter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoRouter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoRouter>(value),
    );
  }
}

String _$appRouterHash() => r'807d5dda1fe9e41f105baef118c05c89bf356048';
