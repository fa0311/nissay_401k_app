// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webview_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(_webInit)
final _webInitProvider = _WebInitProvider._();

final class _WebInitProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  _WebInitProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'_webInitProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$_webInitHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return _webInit(ref);
  }
}

String _$_webInitHash() => r'0f7f602c4663c6ee0d0982721a4bd30deb60a3b5';
