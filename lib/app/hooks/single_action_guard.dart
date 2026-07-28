import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

enum OnCompleted {
  /// ロックを維持する
  ///
  /// goでの遷移など実行後すぐにstateが破棄される場合にはこちらを使用する
  keep,

  /// ロックを解除する
  release,
}

/// 同じアクションの多重実行を防ぐ Hook です。
///
/// `call()` は、ロック中または `enabled: false` のとき `null` を返します。
/// そのまま `onPressed` に渡すことで、実行中の二重タップを抑止できます。
///
/// 挙動:
/// - 実行開始時にロックし、完了までは再実行できません
/// - `callback()` が `OnCompleted.keep` を返した場合はロックを維持します
/// - `callback()` が `OnCompleted.release` を返した場合はロックを解除します
/// - `callback()` が例外を投げた場合はロックを解除して例外を再スローします
///
/// ```dart
/// final singleAction = useSingleActionLock();
///
/// return TextButton(
///   onPressed: singleAction(
///     callback: () async {
///       await Future.delayed(const Duration(seconds: 1));
///       return OnCompleted.release;
///     },
///   ),
///   child: const Text('action'),
/// );
/// ```
SingleActionGuard useSingleActionLock() {
  final isLocked = useState(false);
  final context = useContext();

  return SingleActionGuard(context: context, isLocked: isLocked);
}

class SingleActionGuard {
  SingleActionGuard({
    required this._context,
    required this._isLocked,
  });

  final BuildContext _context;
  final ValueNotifier<bool> _isLocked;

  bool get isLocked => _isLocked.value;

  Future<void> Function()? call({
    required Future<OnCompleted> Function() callback,
    bool enabled = true,
  }) {
    if (_isLocked.value || !enabled) {
      return null;
    }
    return () async {
      if (_isLocked.value) {
        return;
      }
      _isLocked.value = true;
      try {
        final shouldLock = await callback();
        if (!_context.mounted) {
          return;
        }
        if (shouldLock == OnCompleted.release) {
          _isLocked.value = false;
        }
      } catch (_) {
        if (!_context.mounted) {
          return;
        }
        _isLocked.value = false;
        rethrow;
      }
    };
  }
}
