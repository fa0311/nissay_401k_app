import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nissay_401k/app/hooks/single_action_guard.dart';
import 'package:nissay_401k/app/ui/theme/app_palette.dart';

class LoginSubmitButton extends HookWidget {
  const LoginSubmitButton({
    required this.label,
    required this.onPressed,
    super.key,
  });

  final String label;
  final Future<OnCompleted> Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final lock = useSingleActionLock();
    final theme = Theme.of(context);

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 180),
      child: Material(
        key: ValueKey(lock.isLocked),
        color: Colors.transparent,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.72),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              color: AppPalette.teal.withValues(alpha: 0.22),
            ),
            boxShadow: [
              BoxShadow(
                color: AppPalette.navy.withValues(alpha: 0.06),
                blurRadius: 14,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(22),
            onTap: lock(callback: onPressed),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
              child: lock.isLocked
                  ? const Center(
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator.adaptive(strokeWidth: 2.4),
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 12),
                        Text(
                          label,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: AppPalette.ink,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
