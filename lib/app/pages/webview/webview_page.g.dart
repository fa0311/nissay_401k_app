// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webview_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(webViewInit)
final webViewInitProvider = WebViewInitProvider._();

final class WebViewInitProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  WebViewInitProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'webViewInitProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$webViewInitHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return webViewInit(ref);
  }
}

String _$webViewInitHash() => r'296bb2845d31cb54934029c94f60d36c451f9546';
