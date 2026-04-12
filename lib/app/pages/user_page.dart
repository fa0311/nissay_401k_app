import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nissay_401k/app/hooks/single_action_guard.dart';
import 'package:nissay_401k/app/pages/dashboard/dashboard_style.dart';
import 'package:nissay_401k/app/providers/logger.dart';
import 'package:nissay_401k/app/providers/nissay_dashboard_provider.dart';
import 'package:nissay_401k/app/providers/nissay_session_provider.dart';
import 'package:nissay_401k/app/ui/future_button.dart';

class UserPage extends ConsumerWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboard = ref.watch(nissayDashboardProvider);
    final session = ref.watch(nissaySessionProvider);
    final userId = session.asData?.value?.userId ?? '';
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: DashboardPalette.background,
      appBar: AppBar(
        title: Text(
          'User',
          style: theme.textTheme.labelLarge?.copyWith(
            color: DashboardPalette.ink.withValues(alpha: 0.68),
            fontWeight: FontWeight.w700,
            letterSpacing: 1.1,
          ),
        ),
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: dashboardBodyGradient,
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              switch (dashboard) {
                AsyncData(:final value) => _UserOverviewCard(
                  userName: value.userName,
                  userId: _maskUserId(userId),
                  planName: value.planName,
                  lastLogin: formatDashboardDateTime(value.lastLogin),
                  latestUpdatedAt: formatDashboardDateTime(value.date),
                ),
                AsyncError() => _UserErrorCard(
                  onRetry: () => ref.invalidate(nissayDashboardProvider),
                ),
                AsyncLoading() => const _UserLoadingCard(),
              },
              const SizedBox(height: 24),
              _UserActionCard(
                onRefresh: () async {
                  final logger = ref.read(loggerProvider);

                  try {
                    await ref.read(nissaySessionProvider.notifier).refresh();
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('セッションを更新しました。')),
                      );
                    }
                    return OnCompleted.release;
                  } on Exception catch (error, stackTrace) {
                    logger.error('Failed to refresh session', error, stackTrace);
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('セッション更新に失敗しました: $error')),
                      );
                    }
                    return OnCompleted.release;
                  }
                },
                onLogout: () async {
                  final logger = ref.read(loggerProvider);

                  try {
                    await ref.read(nissaySessionProvider.notifier).logout();
                    return OnCompleted.keep;
                  } on Exception catch (error, stackTrace) {
                    logger.error('Failed to log out', error, stackTrace);
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('ログアウトに失敗しました: $error')),
                      );
                    }
                    return OnCompleted.release;
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String _maskUserId(String value) {
  if (value.isEmpty) {
    return '未取得';
  }
  if (value.length <= 2) {
    return '*' * value.length;
  }
  return '${'*' * (value.length - 2)}${value.substring(value.length - 2)}';
}

class _UserOverviewCard extends StatelessWidget {
  const _UserOverviewCard({
    required this.userName,
    required this.userId,
    required this.planName,
    required this.lastLogin,
    required this.latestUpdatedAt,
  });

  final String userName;
  final String userId;
  final String planName;
  final String lastLogin;
  final String latestUpdatedAt;

  @override
  Widget build(BuildContext context) {
    return _UserCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'アカウント',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: DashboardPalette.ink,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 18),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              _UserInfoChip(label: '加入者名', value: userName),
              _UserInfoChip(label: 'ユーザーID', value: userId),
              _UserInfoChip(label: 'プラン名', value: planName),
              _UserInfoChip(label: '前回ログイン', value: lastLogin),
              _UserInfoChip(label: '最新照会日時', value: latestUpdatedAt),
            ],
          ),
        ],
      ),
    );
  }
}

class _UserActionCard extends StatelessWidget {
  const _UserActionCard({
    required this.onRefresh,
    required this.onLogout,
  });

  final Future<OnCompleted> Function() onRefresh;
  final Future<OnCompleted> Function() onLogout;

  @override
  Widget build(BuildContext context) {
    return _UserCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'セッション',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: DashboardPalette.ink,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'ログアウトとセッション更新はここから操作できます。',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: DashboardPalette.ink.withValues(alpha: 0.72),
            ),
          ),
          const SizedBox(height: 18),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              FutureButton(
                onPressed: onRefresh,
                child: const Text('セッション更新'),
              ),
              FutureButton(
                onPressed: onLogout,
                child: const Text('ログアウト'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _UserLoadingCard extends StatelessWidget {
  const _UserLoadingCard();

  @override
  Widget build(BuildContext context) {
    return const _UserCard(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class _UserErrorCard extends StatelessWidget {
  const _UserErrorCard({required this.onRetry});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return _UserCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ユーザー情報の取得に失敗しました。',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: DashboardPalette.ink,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: onRetry,
            child: const Text('再読み込み'),
          ),
        ],
      ),
    );
  }
}

class _UserCard extends StatelessWidget {
  const _UserCard({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.74),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: Colors.white.withValues(alpha: 0.56)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 18,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: child,
      ),
    );
  }
}

class _UserInfoChip extends StatelessWidget {
  const _UserInfoChip({
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 180),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: DashboardPalette.teal.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: DashboardPalette.ink.withValues(alpha: 0.64),
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            value,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: DashboardPalette.ink,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
