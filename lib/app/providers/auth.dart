import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nissay_401k/app/providers/secure_storage_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

const _userIdStorageKey = 'userid';
const _passwordStorageKey = 'password';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    required String userId,
    required String password,
  }) = _AuthState;
}

@riverpod
class AuthStorage extends _$AuthStorage {
  @override
  Future<AuthState?> build() async {
    final storage = ref.watch(secureStorageProvider);
    final userId = await storage.read(key: _userIdStorageKey);
    final password = await storage.read(key: _passwordStorageKey);
    if (userId != null && password != null) {
      return AuthState(userId: userId, password: password);
    }
    return null;
  }

  Future<void> save({
    required String userId,
    required String password,
  }) async {
    state = await AsyncValue.guard(() async {
      final storage = ref.read(secureStorageProvider);
      await storage.write(key: _userIdStorageKey, value: userId);
      await storage.write(key: _passwordStorageKey, value: password);
      return AuthState(userId: userId, password: password);
    });
  }

  Future<void> clear() async {
    final storage = ref.read(secureStorageProvider);
    await storage.delete(key: _userIdStorageKey);
    await storage.delete(key: _passwordStorageKey);
    state = const AsyncData(null);
  }
}
