// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nissay_session_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(nissaySessionCheck)
final nissaySessionCheckProvider = NissaySessionCheckProvider._();

final class NissaySessionCheckProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  NissaySessionCheckProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'nissaySessionCheckProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$nissaySessionCheckHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return nissaySessionCheck(ref);
  }
}

String _$nissaySessionCheckHash() =>
    r'81a782af0929f327d0d07f3cd14be3f9d0ece462';

@ProviderFor(SessionRouteStatus)
final sessionRouteStatusProvider = SessionRouteStatusProvider._();

final class SessionRouteStatusProvider
    extends $NotifierProvider<SessionRouteStatus, SessionRouteState> {
  SessionRouteStatusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sessionRouteStatusProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sessionRouteStatusHash();

  @$internal
  @override
  SessionRouteStatus create() => SessionRouteStatus();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SessionRouteState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SessionRouteState>(value),
    );
  }
}

String _$sessionRouteStatusHash() =>
    r'145d297de72f23140f5bb3c8175245ecd69808f6';

abstract class _$SessionRouteStatus extends $Notifier<SessionRouteState> {
  SessionRouteState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SessionRouteState, SessionRouteState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SessionRouteState, SessionRouteState>,
              SessionRouteState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(NissaySession)
final nissaySessionProvider = NissaySessionProvider._();

final class NissaySessionProvider
    extends $AsyncNotifierProvider<NissaySession, AuthState?> {
  NissaySessionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'nissaySessionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$nissaySessionHash();

  @$internal
  @override
  NissaySession create() => NissaySession();
}

String _$nissaySessionHash() => r'8b033209b522ea0fe90f838c59ae827b1865816d';

abstract class _$NissaySession extends $AsyncNotifier<AuthState?> {
  FutureOr<AuthState?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<AuthState?>, AuthState?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AuthState?>, AuthState?>,
              AsyncValue<AuthState?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
