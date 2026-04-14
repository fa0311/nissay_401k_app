// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_release_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(githubApp)
final githubAppProvider = GithubAppProvider._();

final class GithubAppProvider
    extends $FunctionalProvider<GitHub, GitHub, GitHub>
    with $Provider<GitHub> {
  GithubAppProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'githubAppProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$githubAppHash();

  @$internal
  @override
  $ProviderElement<GitHub> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GitHub create(Ref ref) {
    return githubApp(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GitHub value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GitHub>(value),
    );
  }
}

String _$githubAppHash() => r'a975a5e7f244073f15d137451ddb3bb8795ed0ae';

@ProviderFor(githubLatestVersion)
final githubLatestVersionProvider = GithubLatestVersionProvider._();

final class GithubLatestVersionProvider
    extends $FunctionalProvider<AsyncValue<Version>, Version, FutureOr<Version>>
    with $FutureModifier<Version>, $FutureProvider<Version> {
  GithubLatestVersionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'githubLatestVersionProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$githubLatestVersionHash();

  @$internal
  @override
  $FutureProviderElement<Version> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Version> create(Ref ref) {
    return githubLatestVersion(ref);
  }
}

String _$githubLatestVersionHash() =>
    r'dd93f554e695ac923cd31a8857880879a1c3d1e7';
