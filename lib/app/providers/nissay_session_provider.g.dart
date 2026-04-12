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
    r'3fe9b3a699721b38d270a067ed88357e4f9b4b1c';

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

String _$nissaySessionHash() => r'f3f318c360dfa60801e3e0e65603aa1e47b9103c';

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
