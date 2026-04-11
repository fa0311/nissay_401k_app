import 'package:cookie_jar/cookie_jar.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

Future<void> syncCookieJarToWebView(CookieJar cookieJar) async {
  final cookieManager = CookieManager.instance();
  await cookieManager.deleteAllCookies();

  final uri = Uri.https('401k.nissay.co.jp');
  final cookies = await cookieJar.loadForRequest(uri);
  for (final cookie in cookies) {
    await cookieManager.setCookie(
      url: WebUri.uri(uri),
      name: cookie.name,
      value: cookie.value,
      domain: cookie.domain,
    );
  }
}
