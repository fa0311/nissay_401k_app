import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:talker_flutter/talker_flutter.dart';

extension AsyncValueExtension<T> on AsyncValue<T> {
  void throwIfError(Talker talker) {
    if (this case AsyncData()) {
      return;
    }
    if (this case AsyncError(:final Exception error, :final stackTrace)) {
      talker.error('AsyncValue is error', error, stackTrace);
      throw error;
    }
  }
}
