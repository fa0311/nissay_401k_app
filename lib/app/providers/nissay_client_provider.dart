import 'package:cookie_jar/cookie_jar.dart';
import 'package:nissay_client/nissay_client.dart' as api;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nissay_client_provider.g.dart';

@riverpod
Future<CookieJar> nissayCookieJar(Ref ref) async {
  final directory = await getApplicationSupportDirectory();
  return PersistCookieJar(storage: FileStorage('${directory.path}/nissay_cookies'));
}

@riverpod
Future<api.NissayRepository> nissayRepository(Ref ref) async {
  final cookieJar = await ref.watch(nissayCookieJarProvider.future);
  return api.NissayRepository.create(cookieJar: cookieJar);
}

@riverpod
Future<api.NissayHeader> nissayHeader(Ref ref) async {
  final repository = await ref.watch(nissayRepositoryProvider.future);
  return repository.fetchHeader();
}

@riverpod
Future<api.NissayCurrentAssets> nissayCurrentAssets(Ref ref) async {
  final repository = await ref.watch(nissayRepositoryProvider.future);
  return repository.fetchCurrentAssets();
}

@riverpod
Future<api.NissayContribution> nissayContribution(Ref ref) async {
  final repository = await ref.watch(nissayRepositoryProvider.future);
  return repository.fetchContribution();
}

@riverpod
Future<api.NissayHistoricalAssets> nissayHistoricalAssets(Ref ref) async {
  final repository = await ref.watch(nissayRepositoryProvider.future);
  return repository.fetchHistoricalAssets();
}
