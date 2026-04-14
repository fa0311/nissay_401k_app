import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nissay_401k/app/hooks/single_action_guard.dart';
import 'package:nissay_401k/app/providers/nissay_client_provider.dart';
import 'package:nissay_401k/app/services/webview_cookie_sync.dart';
import 'package:nissay_401k/app/ui/layout/app_page_scaffold.dart';
import 'package:nissay_401k/app/ui/theme/app_palette.dart';

final _initialUrl = WebUri(
  'https://401k.nissay.co.jp/dmckanyusha/transactions/menu_init',
);

final webViewInitProvider = FutureProvider<void>((ref) async {
  final cookieJar = await ref.read(nissayCookieJarProvider.future);
  await syncCookieJarToWebView(cookieJar);
});

typedef WebViewPageContentBuilder = Widget Function();

class WebViewPage extends ConsumerWidget {
  const WebViewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final webInit = ref.watch(webViewInitProvider);

    return switch (webInit) {
      AsyncData() => const WebViewBrowserPage(),
      AsyncLoading() => const AppPageScaffold(
        appBar: AppPageAppBar(title: 'Web'),
        body: AppPageLoading(
          title: 'Webページを準備しています',
          message: 'ログインセッションを同期しています。',
        ),
      ),
      AsyncError(:final error, :final stackTrace) => AppPageScaffold(
        appBar: const AppPageAppBar(title: 'Web'),
        body: AppPageError(
          error: error,
          stackTrace: stackTrace,
          onRetry: () async {
            final _ = await ref.refresh(webViewInitProvider.future);
            return OnCompleted.release;
          },
        ),
      ),
    };
  }
}

class WebViewBrowserPage extends HookConsumerWidget {
  const WebViewBrowserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = useState('');
    final canGoBackWebView = useState(false);
    final progress = useState<int>(0);
    final webviewController = useRef<InAppWebViewController?>(null);

    return AppPageScaffold(
      scrollable: false,
      appBar: AppPageAppBar(
        title: title.value,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
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
        actions: [
          if (progress.value > 0 && progress.value < 100)
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Center(
                child: SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator.adaptive(strokeWidth: 2),
                ),
              ),
            )
          else
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: IconButton(
                icon: const Icon(Icons.refresh_rounded),
                onPressed: () async {
                  if (webviewController.value case final controller?) {
                    await controller.reload();
                    return;
                  }
                  ref.invalidate(webViewInitProvider, asReload: true);
                },
              ),
            ),
        ],
      ),
      body: PopScope(
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
        child: Stack(
          children: [
            Positioned.fill(
              child: InAppWebView(
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
                onLoadStart: (controller, url) {
                  progress.value = 0;
                },
                onLoadStop: (controller, _) async {
                  progress.value = 100;
                  canGoBackWebView.value = await controller.canGoBack();
                },
                onProgressChanged: (_, newProgress) {
                  progress.value = newProgress;
                },
              ),
            ),
            if (progress.value > 0 && progress.value < 100)
              Align(
                alignment: Alignment.topCenter,
                child: LinearProgressIndicator(
                  value: progress.value / 100,
                  color: AppPalette.teal,
                  backgroundColor: AppPalette.teal.withValues(alpha: 0.14),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
