import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_lifecycle_provider.g.dart';

enum AppLifecycleState {
  resumed,
  inactive,
  paused,
  detached,
}

@Riverpod(keepAlive: true)
class AppLifecycle extends _$AppLifecycle {
  @override
  AppLifecycleState build() {
    final observer = AppLifecycleListener(
      onResume: () => state = AppLifecycleState.resumed,
      onInactive: () => state = AppLifecycleState.inactive,
      onPause: () => state = AppLifecycleState.paused,
      onDetach: () => state = AppLifecycleState.detached,
    );
    WidgetsBinding.instance.addObserver(observer);
    ref.onDispose(() => WidgetsBinding.instance.removeObserver(observer));
    return AppLifecycleState.resumed;
  }
}
