import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chrome_like_headers_interceptor.freezed.dart';
part 'chrome_like_headers_interceptor.g.dart';

class ChromeLikeHeadersInterceptor extends Interceptor {
  ChromeLikeHeadersInterceptor._(this._headers);

  static const latestHeadersUrl =
      'https://raw.githubusercontent.com/fa0311/latest-user-agent/refs/heads/main/header.json';

  static const _ignoredRemoteHeaders = <String>{
    'accept-encoding',
    'connection',
    'host',
  };

  final Map<String, String> _headers;

  static Future<ChromeLikeHeadersInterceptor> create(Dio dio) async {
    final response = await dio.getUri<String>(
      Uri.parse(latestHeadersUrl),
      options: Options(responseType: ResponseType.plain),
    );

    if (response.data case final String data) {
      final json = jsonDecode(data) as Map<String, dynamic>;
      final latestHeaders = LatestHeadersResponse.fromJson(json);
      return ChromeLikeHeadersInterceptor._({
        for (final entry in latestHeaders.chrome.entries)
          if (!_ignoredRemoteHeaders.contains(entry.key)) entry.key: entry.value,
      });
    }

    throw const FormatException('Remote header response body was empty.');
  }

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    for (final entry in _headers.entries) {
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

@freezed
abstract class LatestHeadersResponse with _$LatestHeadersResponse {
  const factory LatestHeadersResponse({
    required Map<String, String> chrome,
  }) = _LatestHeadersResponse;

  factory LatestHeadersResponse.fromJson(Map<String, dynamic> json) => _$LatestHeadersResponseFromJson(json);
}
