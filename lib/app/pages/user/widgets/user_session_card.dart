import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nissay_401k/app/hooks/single_action_guard.dart';
import 'package:nissay_401k/app/providers/logger.dart';
import 'package:nissay_401k/app/providers/nissay_session_provider.dart';
import 'package:nissay_401k/app/ui/components/app_icon_badge.dart';
import 'package:nissay_401k/app/ui/components/app_surface_card.dart';
import 'package:nissay_401k/app/ui/theme/app_palette.dart';
import 'package:nissay_401k/app/utils/scaffold_messenger.dart';

class UserSessionCard extends ConsumerWidget {
  const UserSessionCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return AppSurfaceCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ログイン状態',
            style: theme.textTheme.titleMedium?.copyWith(
              color: AppPalette.ink,
              fontWeight: FontWeight.w800,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Divider(height: 1),
          ),
          _UserSessionActionRow(
            icon: Icons.refresh_rounded,
            iconColor: AppPalette.teal,
            title: '認証状態を更新',
            description: 'Cookie を更新して、接続状態をあらためて整えます。',
            actionLabel: '更新',
            actionColor: AppPalette.teal,
            onPressed: () async {
              final logger = ref.read(loggerProvider);
              try {
                await ref.read(nissaySessionProvider.notifier).refresh();
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showMessage('セッションを更新しました。');
                }
                return OnCompleted.release;
              } on Exception catch (error, stackTrace) {
                logger.error('Failed to refresh session', error, stackTrace);
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showMessage('セッション更新に失敗しました: $error');
                }
                return OnCompleted.release;
              }
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Divider(height: 1),
          ),
          _UserSessionActionRow(
            icon: Icons.logout_rounded,
            iconColor: AppPalette.coral,
            title: 'ログアウト',
            description: 'この端末に保存しているログイン情報と Cookie を削除します。',
            actionLabel: '実行',
            actionColor: AppPalette.coral,
            onPressed: () async {
              final logger = ref.read(loggerProvider);
              try {
                await ref.read(nissaySessionProvider.notifier).logout();
                return OnCompleted.keep;
              } on Exception catch (error, stackTrace) {
                logger.error('Failed to log out', error, stackTrace);
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showMessage('ログアウトに失敗しました: $error');
                }
                return OnCompleted.release;
              }
            },
          ),
        ],
      ),
    );
  }
}

class _UserSessionActionRow extends HookWidget {
  const _UserSessionActionRow({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.description,
    required this.actionLabel,
    required this.actionColor,
    required this.onPressed,
  });

  final IconData icon;
  final Color iconColor;
  final String title;
  final String description;
  final String actionLabel;
  final Color actionColor;
  final Future<OnCompleted> Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lock = useSingleActionLock();

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(22),
        onTap: lock(callback: onPressed),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppIconBadge(icon: icon, color: iconColor),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: AppPalette.ink,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: AppPalette.ink.withValues(alpha: 0.72),
                        height: 1.45,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              _UserSessionActionHint(
                label: actionLabel,
                color: actionColor,
                isLoading: lock.isLocked,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _UserSessionActionHint extends StatelessWidget {
  const _UserSessionActionHint({
    required this.label,
    required this.color,
    required this.isLoading,
  });

  final String label;
  final Color color;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (isLoading) {
      return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        child: SizedBox(
          width: 18,
          height: 18,
          child: CircularProgressIndicator.adaptive(strokeWidth: 2.2),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: theme.textTheme.labelLarge?.copyWith(
              color: color,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(width: 2),
          Icon(
            Icons.chevron_right_rounded,
            color: color.withValues(alpha: 0.82),
            size: 20,
          ),
        ],
      ),
    );
  }
}
