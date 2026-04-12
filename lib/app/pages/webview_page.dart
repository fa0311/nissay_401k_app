import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nissay_401k/app/providers/nissay_client_provider.dart';
import 'package:nissay_401k/app/services/webview_cookie_sync.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'webview_page.g.dart';

final _initialUrl = WebUri(
  'https://401k.nissay.co.jp/dmckanyusha/transactions/menu_init',
);

@riverpod
Future<void> _webInit(Ref ref) async {
  final cookieJar = await ref.read(nissayCookieJarProvider.future);
  await syncCookieJarToWebView(cookieJar);
}

class WebViewPage extends HookConsumerWidget {
  const WebViewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final webInit = ref.watch(_webInitProvider);
    return webInit.when(
      data: (_) => const _WebViewPageContent(),
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (error, stackTrace) => Scaffold(
        body: Center(
          child: Text('エラーが発生しました\n$error'),
        ),
      ),
    );
  }
}

class _WebViewPageContent extends HookWidget {
  const _WebViewPageContent();

  @override
  Widget build(BuildContext context) {
    final title = useState('');
    final canGoBackWebView = useState(false);
    final webviewController = useRef<InAppWebViewController?>(null);

    return PopScope(
      canPop: !canGoBackWebView.value,
      onPopInvokedWithResult: (didPop, _) async {
        if (didPop) {
          return;
        }
        final controller = webviewController.value;
        if (controller != null) {
          await controller.goBack();
          canGoBackWebView.value = await controller.canGoBack();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: switch (canGoBackWebView.value) {
              true => () async {
                final controller = webviewController.value;
                if (controller != null) {
                  await controller.goBack();
                  canGoBackWebView.value = await controller.canGoBack();
                }
              },
              false => null,
            },
          ),
          title: Text(title.value),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () async {
                final controller = webviewController.value;
                if (controller != null) {
                  await controller.reload();
                }
              },
            ),
          ],
        ),
        body: InAppWebView(
          initialUrlRequest: URLRequest(url: _initialUrl),
          onWebViewCreated: (controller) {
            webviewController.value = controller;
          },
          onTitleChanged: (controller, newTitle) {
            title.value = newTitle ?? '';
          },
          onUpdateVisitedHistory: (controller, uri, _) async {
            canGoBackWebView.value = await controller.canGoBack();
          },
        ),
      ),
    );
  }
}
