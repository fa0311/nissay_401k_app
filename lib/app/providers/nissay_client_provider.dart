import 'package:cookie_jar/cookie_jar.dart';
import 'package:nissay_401k/app/providers/logger.dart';
import 'package:nissay_client/nissay_client.dart' as api;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

part 'nissay_client_provider.g.dart';

@riverpod
Future<CookieJar> nissayCookieJar(Ref ref) async {
  final directory = await getApplicationSupportDirectory();
  return PersistCookieJar(storage: FileStorage('${directory.path}/nissay_cookies'));
}

@riverpod
Future<api.NissayRepository> nissayRepository(Ref ref) async {
  final cookieJar = await ref.watch(nissayCookieJarProvider.future);
  final logger = ref.watch(loggerProvider);
  return api.NissayRepository.create(
    cookieJar: cookieJar,
    interceptors: [
      TalkerDioLogger(
        talker: logger,
        settings: TalkerDioLoggerSettings(
          printRequestData: false,
          printResponseData: false,
          printErrorData: false,
          printErrorHeaders: false,
          printResponseTime: true,
          // responseDataConverter: (response) => switch (response.data) {
          //   final List<int> bytes => api.safeParseDocument(bytes, response.headers.map).outerHtml,
          //   _ => response.data.toString(),
          // },
          responseDataConverter: (response) => switch (response.data) {
            final List<int> bytes => '[${bytes.length} bytes]',
            _ => response.data.toString(),
          },
        ),
      ),
    ],
  );
}
