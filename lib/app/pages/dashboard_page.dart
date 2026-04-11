import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nissay_401k/app/providers/nissay_repository_provider.dart';
import 'package:nissay_401k/app/providers/nissay_session_provider.dart';
import 'package:nissay_401k/app/router/app_router.dart';
import 'package:nissay_401k/app/services/webview_cookie_sync.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nissayData = ref.watch(nissayCurrentAssetsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('NISSAY 401k Dashboard'),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                leading: const Icon(Icons.web),
                title: const Text('Web'),
                onTap: () async {
                  await syncCookieJarToWebView(await ref.read(nissayCookieJarProvider.future));
                  if (context.mounted) {
                    await const WebViewRoute().push<void>(context);
                  }
                },
              ),
              ListTile(
                leading: const Icon(Icons.refresh),
                title: const Text('Refresh Token'),
                onTap: () async {
                  await ref.read(nissaySessionProvider.notifier).refresh();
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () async {
                  await ref.read(nissaySessionProvider.notifier).logout();
                },
              ),
            ],
          ),
        ),
      ),

      body: _Body(
        child: switch (nissayData) {
          AsyncData(:final value) => ListView(
            padding: const EdgeInsets.all(16),
            children: [
              ListTile(
                title: const Text('総資産評価額'),
                trailing: Text('${value.totalAsset}円'),
              ),
              ListTile(
                title: const Text('拠出金額累計'),
                trailing: Text('${value.totalContribution}円'),
              ),
              ListTile(
                title: const Text('評価損益'),
                trailing: Text('${value.totalProfitLoss}円'),
              ),
              ListTile(
                title: const Text('利回り'),
                trailing: Text('${value.roi}%'),
              ),
              ListTile(
                title: const Text('照会日時'),
                trailing: Text('${value.date}'),
              ),
              for (final detail in value.details)
                ListTile(
                  title: Text('${detail.operationType} - ${detail.productName}'),
                  subtitle: Text('資産比率: ${detail.assetRatio}%'),
                ),
            ],
          ),
          AsyncError(:final error) => Center(
            child: Text('エラーが発生しました: $error'),
          ),
          AsyncLoading() => const Center(
            child: CircularProgressIndicator(),
          ),
        },
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 600),
        child: child,
      ),
    );
  }
}
