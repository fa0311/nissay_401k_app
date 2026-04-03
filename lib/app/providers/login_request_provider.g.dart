// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(loginCookieJar)
final loginCookieJarProvider = LoginCookieJarProvider._();

final class LoginCookieJarProvider
    extends
        $FunctionalProvider<
          AsyncValue<CookieJar>,
          CookieJar,
          FutureOr<CookieJar>
        >
    with $FutureModifier<CookieJar>, $FutureProvider<CookieJar> {
  LoginCookieJarProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginCookieJarProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginCookieJarHash();

  @$internal
  @override
  $FutureProviderElement<CookieJar> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<CookieJar> create(Ref ref) {
    return loginCookieJar(ref);
  }
}

String _$loginCookieJarHash() => r'28fe2ed60471110a8825c3e538421e995f61f929';

@ProviderFor(nissayRepository)
final nissayRepositoryProvider = NissayRepositoryProvider._();

final class NissayRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<NissayRepositoryModel>,
          NissayRepositoryModel,
          FutureOr<NissayRepositoryModel>
        >
    with
        $FutureModifier<NissayRepositoryModel>,
        $FutureProvider<NissayRepositoryModel> {
  NissayRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'nissayRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$nissayRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<NissayRepositoryModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<NissayRepositoryModel> create(Ref ref) {
    return nissayRepository(ref);
  }
}

String _$nissayRepositoryHash() => r'd6fcaa8b0ac0ad27f85092e5aea569fdf1e4a8ab';

@ProviderFor(NissayAuth)
final nissayAuthProvider = NissayAuthProvider._();

final class NissayAuthProvider
    extends $AsyncNotifierProvider<NissayAuth, AuthState?> {
  NissayAuthProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'nissayAuthProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$nissayAuthHash();

  @$internal
  @override
  NissayAuth create() => NissayAuth();
}

String _$nissayAuthHash() => r'a875928af71dfbd31715fa0a5bc9c51146ebcd7b';

abstract class _$NissayAuth extends $AsyncNotifier<AuthState?> {
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

@ProviderFor(getNissayData)
final getNissayDataProvider = GetNissayDataProvider._();

final class GetNissayDataProvider
    extends
        $FunctionalProvider<
          AsyncValue<NissayDataModel>,
          NissayDataModel,
          FutureOr<NissayDataModel>
        >
    with $FutureModifier<NissayDataModel>, $FutureProvider<NissayDataModel> {
  GetNissayDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getNissayDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getNissayDataHash();

  @$internal
  @override
  $FutureProviderElement<NissayDataModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<NissayDataModel> create(Ref ref) {
    return getNissayData(ref);
  }
}

String _$getNissayDataHash() => r'6dd750ee528231aec871b8686b0bed0a51e4f42a';
