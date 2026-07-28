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

String _$authStorageHash() => r'dcaa7c5a560afd377379318fc163ac8cb10d76b3';

abstract class _$AuthStorage extends $AsyncNotifier<AuthState?> {
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
