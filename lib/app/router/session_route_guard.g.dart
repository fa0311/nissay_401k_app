// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_route_guard.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<SessionRouteState, SessionRouteState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SessionRouteState, SessionRouteState>,
              SessionRouteState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
