import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nissay_401k/app/constants/github_links.dart';
import 'package:nissay_401k/app/providers/github_release_provider.dart';
import 'package:nissay_401k/app/providers/package_info.dart';
import 'package:nissay_401k/app/ui/components/app_surface_card.dart';
import 'package:nissay_401k/app/ui/theme/app_palette.dart';
import 'package:nissay_401k/app/utils/launch_url.dart';
import 'package:nissay_401k/app/utils/package_info.dart';
import 'package:pub_semver/pub_semver.dart';

class AppReleaseNotice extends ConsumerWidget {
  const AppReleaseNotice({
    super.key,
    this.bottomSpacing = 24,
  });

  final double bottomSpacing;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final packageInfo = ref.watch(packageInfoProvider);
    final latestVersion = ref.watch(githubLatestVersionProvider);

    return switch (latestVersion) {
      AsyncData(:final value) when value > packageInfo.releaseVersion => Padding(
        padding: EdgeInsets.only(bottom: bottomSpacing),
        child: AppSurfaceCard(
          child: _ReleaseNoticeContent(latestVersion: value),
        ),
      ),
      _ => const SizedBox.shrink(),
    };
  }
}

class _ReleaseNoticeContent extends StatelessWidget {
  const _ReleaseNoticeContent({
    required this.latestVersion,
  });

  final Version latestVersion;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '新しいバージョン $latestVersion が利用できます',
          style: theme.textTheme.titleLarge?.copyWith(
            color: AppPalette.ink,
            fontWeight: FontWeight.w800,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          'リリースページから更新内容を確認できます。',
          style: theme.textTheme.bodyMedium?.copyWith(
            color: AppPalette.ink.withValues(alpha: 0.72),
            height: 1.5,
          ),
        ),
        const SizedBox(height: 18),
        _ReleaseNoticeAction(latestVersion: latestVersion),
      ],
    );
  }
}

class _ReleaseNoticeAction extends StatelessWidget {
  const _ReleaseNoticeAction({
    required this.latestVersion,
  });

  final Version latestVersion;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(22),
        onTap: () async {
          await UrlLauncher.of(context).safeLaunch(appGithubReleasesUri);
        },
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppPalette.coral.withValues(alpha: 0.08),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: AppPalette.coral.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Icon(
                    Icons.new_releases_outlined,
                    color: AppPalette.coral,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '更新内容を見る',
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: AppPalette.ink,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '$latestVersion の変更点と配布情報を確認できます。',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppPalette.ink.withValues(alpha: 0.60),
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Icon(
                  Icons.chevron_right_rounded,
                  color: AppPalette.ink.withValues(alpha: 0.42),
                  size: 28,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
