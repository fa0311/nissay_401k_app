import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nissay_401k/app/pages/dashboard/dashboard_content.dart';
import 'package:nissay_401k/app/providers/nissay_dashboard_provider.dart';
import 'package:nissay_401k/app/providers/nissay_session_provider.dart';
import 'package:nissay_401k/app/ui/components/app_release_notice.dart';
import 'package:nissay_401k/app/ui/layout/app_page_scaffold.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboard = ref.watch(nissayDashboardProvider);

    return switch (dashboard) {
      AsyncData(:final value) => RefreshIndicator(
        onRefresh: () async {
          await ref.read(nissaySessionCheckProvider.notifier).orRefresh();
          final _ = await ref.refresh(nissayDashboardProvider.future);
        },
        child: AppPageScaffold(
          appBar: const AppPageAppBar(
            title: 'Dashboard',
          ),
          body: Column(
            children: [
              const AppReleaseNotice(),
              DashboardLoadedView(
                data: value,
              ),
            ],
          ),
        ),
      ),
      AsyncError(:final error, :final stackTrace) => AppPageScaffold(
        appBar: const AppPageAppBar(title: 'Dashboard'),
        body: AppPageError(
          error: error,
          stackTrace: stackTrace,
        ),
      ),
      AsyncLoading() => const AppPageScaffold(
        appBar: AppPageAppBar(title: 'Dashboard'),
        body: AppPageLoading(
          title: 'ダッシュボードを読み込んでいます',
          message: '資産情報を取得しています。',
        ),
      ),
    };
  }
}
