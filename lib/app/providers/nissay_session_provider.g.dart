// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nissay_session_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NissaySessionCheck)
final nissaySessionCheckProvider = NissaySessionCheckProvider._();

final class NissaySessionCheckProvider
    extends $AsyncNotifierProvider<NissaySessionCheck, DateTime> {
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
  NissaySessionCheck create() => NissaySessionCheck();
}

String _$nissaySessionCheckHash() =>
    r'2611b27f7f216448ca1231a5308f547746982690';

abstract class _$NissaySessionCheck extends $AsyncNotifier<DateTime> {
  FutureOr<DateTime> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<DateTime>, DateTime>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<DateTime>, DateTime>,
              AsyncValue<DateTime>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
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

String _$nissaySessionHash() => r'c98c70280ffc3d4beaccdbb2e536eb390df3304b';

abstract class _$NissaySession extends $AsyncNotifier<AuthState?> {
  FutureOr<AuthState?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<AuthState?>, AuthState?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AuthState?>, AuthState?>,
              AsyncValue<AuthState?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
