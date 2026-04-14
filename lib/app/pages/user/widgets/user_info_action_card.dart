import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nissay_401k/app/pages/debug_log/debug_log_page.dart';
import 'package:nissay_401k/app/pages/user/widgets/user_leading_badge.dart';
import 'package:nissay_401k/app/providers/package_info.dart';
import 'package:nissay_401k/app/ui/app_information.dart';
import 'package:nissay_401k/app/ui/components/app_surface_card.dart';
import 'package:nissay_401k/app/ui/theme/app_palette.dart';

class UserInfoActionCard extends ConsumerWidget {
  const UserInfoActionCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final packageInfo = ref.watch(packageInfoProvider);

    return AppSurfaceCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'アプリの詳細',
            style: theme.textTheme.titleMedium?.copyWith(
              color: AppPalette.ink,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'バージョン情報、ライセンス、デバッグログを確認できます。',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: AppPalette.ink.withValues(alpha: 0.72),
              height: 1.5,
            ),
          ),
          const SizedBox(height: 18),
          _UserMenuRow(
            icon: Icons.info_outline_rounded,
            iconColor: AppPalette.sky,
            title: 'アプリ情報',
            description: 'バージョンやパッケージ情報を表示します。',
            onTap: () async {
              await showDialog<void>(
                context: context,
                builder: (context) => AboutDialog(
                  applicationName: packageInfo.appName,
                  applicationVersion: packageInfo.version,
                  applicationIcon: const ApplicationBadge(size: 52),
                  children: [
                    const SizedBox(height: 12),
                    AppInfoLine(
                      label: 'パッケージ',
                      value: packageInfo.packageName,
                    ),
                    AppInfoLine(
                      label: 'ビルド番号',
                      value: packageInfo.buildNumber,
                    ),
                    AppInfoLine(
                      label: 'インストーラ',
                      value: packageInfo.installerStore ?? '不明',
                    ),
                  ],
                ),
              );
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Divider(height: 1),
          ),
          _UserMenuRow(
            icon: Icons.gavel_rounded,
            iconColor: AppPalette.gold,
            title: 'ライセンス',
            description: 'このアプリで利用しているライブラリ情報を確認できます。',
            onTap: () {
              showLicensePage(
                context: context,
                applicationName: packageInfo.appName,
                applicationVersion: packageInfo.version,
                applicationIcon: const ApplicationBadge(size: 52),
                useRootNavigator: true,
              );
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Divider(height: 1),
          ),
          _UserMenuRow(
            icon: Icons.bug_report_outlined,
            iconColor: AppPalette.navy,
            title: 'デバッグログ',
            description: '動作確認やトラブルシュートに使うログ画面を開きます。',
            onTap: () {
              unawaited(
                Navigator.of(context, rootNavigator: true).push<void>(
                  MaterialPageRoute<void>(
                    builder: (_) => const DebugLogPage(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _UserMenuRow extends StatelessWidget {
  const _UserMenuRow({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.description,
    required this.onTap,
  });

  final IconData icon;
  final Color iconColor;
  final String title;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(22),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserLeadingBadge(icon: icon, color: iconColor),
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
              Icon(
                Icons.chevron_right_rounded,
                color: AppPalette.ink.withValues(alpha: 0.42),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
