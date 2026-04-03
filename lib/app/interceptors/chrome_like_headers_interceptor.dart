import 'package:dio/dio.dart';

class ChromeLikeHeadersInterceptor extends Interceptor {
  ChromeLikeHeadersInterceptor();

  static const _defaultHeaders = <String, String>{
    'accept':
        'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7',
    'accept-language': 'ja,en;q=0.9,zh-CN;q=0.8,zh;q=0.7',
    'cache-control': 'no-cache',
    'pragma': 'no-cache',
    'sec-ch-ua':
        '"Chromium";v="146", "Not-A.Brand";v="24", "Google Chrome";v="146"',
    'sec-ch-ua-mobile': '?0',
    'sec-ch-ua-platform': '"macOS"',
    'sec-fetch-dest': 'document',
    'sec-fetch-mode': 'navigate',
    'sec-fetch-site': 'same-origin',
    'sec-fetch-user': '?1',
    'upgrade-insecure-requests': '1',
    'user-agent':
        'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36',
  };

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    for (final entry in _defaultHeaders.entries) {
      if (!_hasHeader(options, entry.key)) {
        options.headers[entry.key] = entry.value;
      }
    }

    handler.next(options);
  }

  bool _hasHeader(RequestOptions options, String key) {
    return options.headers.keys.any(
      (existingKey) => existingKey.toLowerCase() == key.toLowerCase(),
    );
  }
}
