// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthStorage)
final authStorageProvider = AuthStorageProvider._();

final class AuthStorageProvider
    extends $AsyncNotifierProvider<AuthStorage, AuthState?> {
  AuthStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authStorageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authStorageHash();

  @$internal
  @override
  AuthStorage create() => AuthStorage();
}

String _$authStorageHash() => r'e32fda46abd202a19bf5e9f4b7d508608271c245';

abstract class _$AuthStorage extends $AsyncNotifier<AuthState?> {
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
