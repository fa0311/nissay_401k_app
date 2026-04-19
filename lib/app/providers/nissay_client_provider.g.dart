// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nissay_client_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(nissayCookieJar)
final nissayCookieJarProvider = NissayCookieJarProvider._();

final class NissayCookieJarProvider
    extends
        $FunctionalProvider<
          AsyncValue<CookieJar>,
          CookieJar,
          FutureOr<CookieJar>
        >
    with $FutureModifier<CookieJar>, $FutureProvider<CookieJar> {
  NissayCookieJarProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'nissayCookieJarProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$nissayCookieJarHash();

  @$internal
  @override
  $FutureProviderElement<CookieJar> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<CookieJar> create(Ref ref) {
    return nissayCookieJar(ref);
  }
}

String _$nissayCookieJarHash() => r'a78968952cb6c784083f9c2e63acaff608106214';

@ProviderFor(nissayRepository)
final nissayRepositoryProvider = NissayRepositoryProvider._();

final class NissayRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<api.NissayRepository>,
          api.NissayRepository,
          FutureOr<api.NissayRepository>
        >
    with
        $FutureModifier<api.NissayRepository>,
        $FutureProvider<api.NissayRepository> {
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
  $FutureProviderElement<api.NissayRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<api.NissayRepository> create(Ref ref) {
    return nissayRepository(ref);
  }
}

String _$nissayRepositoryHash() => r'9bdf0f3f9fa1770b0b9489d6603d564b63b74145';
