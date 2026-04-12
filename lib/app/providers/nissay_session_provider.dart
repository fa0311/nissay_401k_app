import 'package:nissay_401k/app/providers/auth.dart';
import 'package:nissay_401k/app/providers/logger.dart';
import 'package:nissay_401k/app/providers/nissay_client_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nissay_session_provider.g.dart';

@Riverpod(keepAlive: true)
Future<void> nissaySessionCheck(Ref ref) async {
  final session = ref.watch(nissaySessionProvider.notifier);
  final savedAuth = await ref.watch(authStorageProvider.future);
  final log = ref.watch(loggerProvider);

  try {
    await ref.watch(nissayHeaderProvider.future);
  } on Exception catch (error, stackTrace) {
    log.error('Failed to fetch Nissay data', error, stackTrace);

    if (savedAuth case final AuthState auth) {
      await session.login(
        userId: auth.userId,
        password: auth.password,
      );
      await ref.watch(nissayHeaderProvider.future);
    } else {
      rethrow;
    }
  }
}

@riverpod
class NissaySession extends _$NissaySession {
  @override
  Future<AuthState?> build() {
    return ref.watch(authStorageProvider.future);
  }

  Future<void> login({
    required String userId,
    required String password,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repository = await ref.read(nissayRepositoryProvider.future);
      await repository.login(userId: userId, password: password);
      await ref
          .read(authStorageProvider.notifier)
          .save(
            userId: userId,
            password: password,
          );
      ref.invalidate(nissayRepositoryProvider);
      return AuthState(userId: userId, password: password);
    });
    if (state case AsyncError(:final Exception error)) {
      throw error;
    }
  }

  Future<void> logout() async {
    final cookieJar = await ref.read(nissayCookieJarProvider.future);
    await cookieJar.deleteAll();
    await ref.read(authStorageProvider.notifier).clear();
    ref.invalidate(nissayRepositoryProvider);
    state = const AsyncData(null);
  }

  Future<void> refresh() async {
    final cookieJar = await ref.read(nissayCookieJarProvider.future);
    await cookieJar.deleteAll();
    ref.invalidate(nissayRepositoryProvider);
    state = await AsyncValue.guard(() => ref.read(authStorageProvider.future));
    if (state case AsyncError(:final Exception error)) {
      throw error;
    }
  }
}
