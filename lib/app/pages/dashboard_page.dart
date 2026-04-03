import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nissay_401k/app/providers/login_request_provider.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nissayData = ref.watch(getNissayDataProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('NISSAY 401k Dashboard'),
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
