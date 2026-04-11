import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:dio_redirect_interceptor/dio_redirect_interceptor.dart';
import 'package:nissay_401k/app/interceptors/chrome_like_headers_interceptor.dart';
import 'package:nissay_401k/app/services/nissay_models.dart';
import 'package:nissay_401k/app/services/nissay_repository.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nissay_repository_provider.g.dart';

@riverpod
Future<CookieJar> nissayCookieJar(Ref ref) async {
  final directory = await getApplicationSupportDirectory();
  return PersistCookieJar(storage: FileStorage('${directory.path}/nissay_cookies'));
}

@riverpod
Future<NissayRepository> nissayRepository(Ref ref) async {
  final cookieJar = await ref.watch(nissayCookieJarProvider.future);
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://401k.nissay.co.jp',
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      validateStatus: (status) => status != null && status < 400,
      followRedirects: false,
    ),
  );

  dio.interceptors.add(ChromeLikeHeadersInterceptor());
  dio.interceptors.add(CookieManager(cookieJar));
  dio.interceptors.add(RedirectInterceptor(() => dio));

  return NissayRepository(dio: dio);
}

@riverpod
Future<NissayCurrentAssetsModel> nissayCurrentAssets(Ref ref) async {
  final repository = await ref.watch(nissayRepositoryProvider.future);
  return repository.fetchCurrentAssets();
}
