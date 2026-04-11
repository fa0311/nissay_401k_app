// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nissay_repository_provider.dart';

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
          AsyncValue<NissayRepository>,
          NissayRepository,
          FutureOr<NissayRepository>
        >
    with $FutureModifier<NissayRepository>, $FutureProvider<NissayRepository> {
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
  $FutureProviderElement<NissayRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<NissayRepository> create(Ref ref) {
    return nissayRepository(ref);
  }
}

String _$nissayRepositoryHash() => r'ae929e27f7d58aa2fab968ebf347ddc838c90f8f';

@ProviderFor(nissayCurrentAssets)
final nissayCurrentAssetsProvider = NissayCurrentAssetsProvider._();

final class NissayCurrentAssetsProvider
    extends
        $FunctionalProvider<
          AsyncValue<NissayCurrentAssetsModel>,
          NissayCurrentAssetsModel,
          FutureOr<NissayCurrentAssetsModel>
        >
    with
        $FutureModifier<NissayCurrentAssetsModel>,
        $FutureProvider<NissayCurrentAssetsModel> {
  NissayCurrentAssetsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'nissayCurrentAssetsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$nissayCurrentAssetsHash();

  @$internal
  @override
  $FutureProviderElement<NissayCurrentAssetsModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<NissayCurrentAssetsModel> create(Ref ref) {
    return nissayCurrentAssets(ref);
  }
}

String _$nissayCurrentAssetsHash() =>
    r'2fe582cf48c5e0b21fd55c82f9b8ae86bdecc327';
