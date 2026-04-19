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

String _$githubAppHash() => r'2067c470fab18788c0c423615552040329a96504';

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
    r'ba5d0a98629504fd24dea05f2775d999abc7a651';
