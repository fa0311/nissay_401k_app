import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nissay_401k/app/constants/github_links.dart';
import 'package:nissay_401k/app/hooks/single_action_guard.dart';
import 'package:nissay_401k/app/providers/package_info.dart';
import 'package:nissay_401k/app/ui/components/app_surface_card.dart';
import 'package:nissay_401k/app/ui/theme/app_palette.dart';
import 'package:nissay_401k/app/utils/launch_url.dart';
import 'package:nissay_401k/app/utils/package_info.dart';
import 'package:nissay_401k/app/utils/scaffold_messenger.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppPageError extends ConsumerWidget {
  const AppPageError({
    required this.error,
    required this.stackTrace,
    required this.onRetry,
    super.key,
  });

  final Object error;
  final StackTrace stackTrace;
  final Future<OnCompleted> Function() onRetry;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final packageInfo = ref.watch(packageInfoProvider);
    final report = _buildErrorReport(
      error: error,
      stackTrace: stackTrace,
      packageInfo: packageInfo,
    );

    final lock = useSingleActionLock();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppSurfaceCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: AppPalette.coral.withValues(alpha: 0.14),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Icon(
                  Icons.bug_report_outlined,
                  color: AppPalette.coral,
                  size: 28,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                'エラーが発生しました',
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: AppPalette.ink,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _ErrorFactChip(
                    icon: Icons.label_outline_rounded,
                    label: error.runtimeType.toString(),
                  ),
                  if (packageInfo case final packageInfo)
                    _ErrorFactChip(
                      icon: Icons.info_outline_rounded,
                      label: '${packageInfo.version}+${packageInfo.buildNumber}',
                    ),
                ],
              ),
              const SizedBox(height: 16),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: AppPalette.coral.withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppPalette.coral.withValues(alpha: 0.18),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: SelectableText(
                    error.toString(),
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: AppPalette.ink,
                      height: 1.55,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  FilledButton.icon(
                    onPressed: lock(callback: onRetry),
                    icon: const Icon(Icons.refresh_rounded),
                    label: const Text('再試行'),
                  ),
                  OutlinedButton.icon(
                    onPressed: () async {
                      ScaffoldMessenger.of(context).showMessage('エラー内容をクリップボードにコピーしました。');
                      await Clipboard.setData(ClipboardData(text: report));
                    },
                    icon: const Icon(Icons.content_copy_rounded),
                    label: const Text('コピー'),
                  ),
                  OutlinedButton.icon(
                    onPressed: () async {
                      await UrlLauncher.of(context).safeLaunch(appGithubIssueBaseUri);
                    },
                    icon: const Icon(Icons.open_in_new_rounded),
                    label: const Text('GitHub'),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        AppSurfaceCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Developer Details',
                style: theme.textTheme.titleMedium?.copyWith(
                  color: AppPalette.ink,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 14),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: AppPalette.navy.withValues(alpha: 0.94),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: SelectableText(
                      report,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: Colors.white.withValues(alpha: 0.9),
                        height: 1.55,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ErrorFactChip extends StatelessWidget {
  const _ErrorFactChip({
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.72),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: AppPalette.teal.withValues(alpha: 0.18)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 16,
              color: AppPalette.teal,
            ),
            const SizedBox(width: 6),
            Text(
              label,
              style: theme.textTheme.labelLarge?.copyWith(
                color: AppPalette.ink,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String _buildErrorReport({
  required Object error,
  required StackTrace stackTrace,
  required PackageInfo packageInfo,
}) {
  final stackTraceText = stackTrace.toString();

  return [
    'timestamp_utc: ${DateTime.now().toUtc().toIso8601String()}',
    'app_version: ${packageInfo.packageLine}',
    'error_type: ${error.runtimeType}',
    'error: $error',
    'stack_trace: $stackTraceText',
  ].join('\n');
}
