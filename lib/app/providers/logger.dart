import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'logger.g.dart';

@riverpod
Talker logger(Ref ref) {
  return Talker();
}
