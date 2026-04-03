import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nissay_401k/app/hooks/single_action_guard.dart';

class FutureButton extends HookWidget {
  const FutureButton({
    required this.onPressed,
    required this.child,
    this.enabled = true,
    super.key,
  });

  final Future<OnCompleted> Function() onPressed;
  final Widget child;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final lock = useSingleActionLock();

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 150),
      child: FilledButton(
        key: ValueKey(lock.isLocked),
        onPressed: lock(
          callback: onPressed,
          enabled: enabled,
        ),
        child: lock.isLocked
            ? const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator.adaptive(),
              )
            : child,
      ),
    );
  }
}
