import 'dart:async';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:dio_redirect_interceptor/dio_redirect_interceptor.dart';
import 'package:nissay_401k/app/interceptors/chrome_like_headers_interceptor.dart';
import 'package:nissay_401k/app/providers/auth.dart';
import 'package:nissay_401k/app/services/nissay_login_service.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_request_provider.g.dart';

@riverpod
Future<CookieJar> loginCookieJar(Ref ref) async {
  final directory = await getApplicationSupportDirectory();
  return PersistCookieJar(storage: FileStorage('${directory.path}/cookies'));
}

@riverpod
Future<NissayRepositoryModel> nissayRepository(Ref ref) async {
  final cookieJar = await ref.watch(loginCookieJarProvider.future);
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
  return NissayRepositoryModel(
    repository: NissayRepository(dio: dio),
    cookieJar: cookieJar,
  );
}

class NissayRepositoryModel {
  NissayRepositoryModel({required this.repository, required this.cookieJar});

  final NissayRepository repository;
  final CookieJar cookieJar;
}

@riverpod
class NissayAuth extends _$NissayAuth {
  @override
  Future<AuthState?> build() async {
    return await ref.watch(authStorageProvider.future);
  }

  Future<void> login({
    required String userid,
    required String password,
  }) async {
    final nissay = await ref.read(nissayRepositoryProvider.future);
    await nissay.repository.login(userid: userid, password: password);
    final storage = ref.read(authStorageProvider.notifier);
    await storage.save(userid: userid, password: password);
    ref.invalidate(nissayRepositoryProvider);
  }

  Future<void> logout() async {
    final nissay = await ref.read(nissayRepositoryProvider.future);
    await nissay.cookieJar.deleteAll();
    final storage = ref.read(authStorageProvider.notifier);
    await storage.clear();
    ref.invalidate(nissayRepositoryProvider);
  }

  Future<void> refresh() async {
    final nissay = await ref.read(nissayRepositoryProvider.future);
    await nissay.cookieJar.deleteAll();
    ref.invalidate(nissayRepositoryProvider);
  }
}

@riverpod
Future<NissayCurrentAssetsModel> getNissayData(Ref ref) async {
  final nissay = await ref.watch(nissayRepositoryProvider.future);
  return nissay.repository.fetchCurrentAsset();
}
