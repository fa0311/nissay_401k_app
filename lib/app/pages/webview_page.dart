import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewPage extends StatelessWidget {
  const WebViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _WebView(
      initialUrl: WebUri(
        'https://401k.nissay.co.jp/dmckanyusha/transactions/menu_init',
      ),
    );
  }
}

class _WebView extends HookWidget {
  const _WebView({
    required this.initialUrl,
  });

  final WebUri initialUrl;

  @override
  Widget build(BuildContext context) {
    final title = useState('');
    final url = useState<WebUri>(initialUrl);
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
        }
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: canGoBackWebView.value || Navigator.of(context).canPop()
                ? () async {
                    final controller = webviewController.value;
                    if (controller != null && canGoBackWebView.value) {
                      await controller.goBack();
                    } else if (Navigator.of(context).canPop()) {
                      Navigator.of(context).pop();
                    }
                  }
                : null,
          ),
          title: Text(title.value),
        ),
        body: InAppWebView(
          initialUrlRequest: URLRequest(url: url.value),
          onWebViewCreated: (controller) {
            webviewController.value = controller;
          },
          onLoadStart: (controller, uri) {
            if (uri != null) {
              url.value = uri;
            }
          },
          onTitleChanged: (controller, newTitle) {
            if (newTitle != null) {
              if (!newTitle.startsWith(url.value.host)) {
                title.value = newTitle;
              }
            }
          },
          onUpdateVisitedHistory: (controller, uri, _) async {
            if (uri != null) {
              url.value = uri;
              canGoBackWebView.value = await controller.canGoBack();
            }
          },
        ),
      ),
    );
  }
}
