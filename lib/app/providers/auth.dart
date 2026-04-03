import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nissay_401k/app/providers/storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    required String userid,
    required String password,
  }) = _AuthState;
}

@riverpod
class AuthStorage extends _$AuthStorage {
  @override
  Future<AuthState?> build() async {
    final storage = ref.watch(flutterSecureStorageProvider);
    final userid = await storage.read(key: 'userid');
    final password = await storage.read(key: 'password');
    if (userid != null && password != null) {
      return AuthState(userid: userid, password: password);
    }
    return null;
  }

  Future<void> save({
    required String userid,
    required String password,
  }) async {
    state = await AsyncValue.guard(() async {
      final storage = ref.read(flutterSecureStorageProvider);
      await storage.write(key: 'userid', value: userid);
      await storage.write(key: 'password', value: password);
      return AuthState(userid: userid, password: password);
    });
  }

  Future<void> clear() async {
    final storage = ref.read(flutterSecureStorageProvider);
    await storage.delete(key: 'userid');
    await storage.delete(key: 'password');
    state = const AsyncData(null);
  }
}
