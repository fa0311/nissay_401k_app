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
    r'dce335d859b8dd0aedcf81fff6efdf76d32d5e67';

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

String _$nissaySessionHash() => r'85c35ab07755bec4d27832e8d5628f97f7856e59';

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
