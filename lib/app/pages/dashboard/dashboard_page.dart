import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nissay_401k/app/pages/dashboard/dashboard_content.dart';
import 'package:nissay_401k/app/pages/dashboard/dashboard_style.dart';
import 'package:nissay_401k/app/providers/nissay_dashboard_provider.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboard = ref.watch(nissayDashboardProvider);
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: DashboardPalette.background,
      appBar: AppBar(
        title: Text(
          'Dashboard',
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
        child: switch (dashboard) {
          AsyncData(:final value) => SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: DashboardLoadedView(data: value),
          ),
          AsyncError() => Center(
            child: FilledButton(
              onPressed: () => ref.invalidate(nissayDashboardProvider),
              child: const Text('ダッシュボードを再読み込み'),
            ),
          ),
          AsyncLoading() => const Center(
            child: CircularProgressIndicator(),
          ),
        },
      ),
    );
  }
}
