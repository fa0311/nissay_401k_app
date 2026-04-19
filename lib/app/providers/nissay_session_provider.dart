import 'dart:async';

import 'package:nissay_401k/app/providers/auth.dart';
import 'package:nissay_401k/app/providers/logger.dart';
import 'package:nissay_401k/app/providers/nissay_client_provider.dart';
import 'package:nissay_401k/app/utils/async_value.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nissay_session_provider.g.dart';

@Riverpod(keepAlive: true)
class NissaySessionCheck extends _$NissaySessionCheck {
  @override
  Future<DateTime> build() async {
    final session = ref.watch(nissaySessionProvider.notifier);
    final savedAuth = await ref.watch(authStorageProvider.future);
    final logger = ref.watch(loggerProvider);
    final repository = await ref.watch(nissayRepositoryProvider.future);

    if (savedAuth case final AuthState _) {
      try {
        logger.info('Checking persisted Nissay session');
        await repository.fetchHeader();
        logger.info('Persisted Nissay session is available');
      } on Exception catch (error, stackTrace) {
        logger.error('Failed to fetch Nissay data', error, stackTrace);
        await session.login();
        await repository.fetchHeader();
      }
      return DateTime.now();
    } else {
      throw Exception('No stored credentials');
    }
  }

  Future<void> orRefresh() async {
    final before = DateTime.now().subtract(const Duration(minutes: 30));
    if (state.requireValue.isBefore(before)) {
      state = await AsyncValue.guard(build);
      state.throwIfError(ref.read(loggerProvider));
    }
  }
}

@riverpod
class NissaySession extends _$NissaySession {
  @override
  Future<AuthState?> build() {
    return ref.watch(authStorageProvider.future);
  }

  Future<void> save({
    required String userId,
    required String password,
  }) async {
    state = await AsyncValue.guard(() async {
      await ref
          .read(authStorageProvider.notifier)
          .save(
            userId: userId,
            password: password,
          );
      return AuthState(userId: userId, password: password);
    });
    state.throwIfError(ref.read(loggerProvider));
  }

  Future<void> login() async {
    state = const AsyncLoading();
    final repository = await ref.read(nissayRepositoryProvider.future);
    await repository.login(userId: state.value!.userId, password: state.value!.password);
    ref.invalidate(nissayRepositoryProvider);
  }

  Future<void> logout() async {
    state = await AsyncValue.guard(() async {
      final repository = await ref.read(nissayRepositoryProvider.future);
      await repository.logout();
      final cookieJar = await ref.read(nissayCookieJarProvider.future);
      await cookieJar.deleteAll();
      await ref.read(authStorageProvider.notifier).clear();
      ref.invalidate(nissayRepositoryProvider);
      return null;
    });
    state.throwIfError(ref.read(loggerProvider));
  }

  Future<void> refresh() async {
    state = await AsyncValue.guard(() async {
      final repository = await ref.read(nissayRepositoryProvider.future);
      await repository.logout();
      final cookieJar = await ref.read(nissayCookieJarProvider.future);
      await cookieJar.deleteAll();
      ref.invalidate(nissayRepositoryProvider);
      return ref.read(authStorageProvider.future);
    });
    state.throwIfError(ref.read(loggerProvider));
  }
}
