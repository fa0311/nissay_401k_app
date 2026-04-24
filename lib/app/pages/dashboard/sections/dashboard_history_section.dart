import 'package:flutter/material.dart';
import 'package:nissay_401k/app/models/nissay_dashboard_model.dart';
import 'package:nissay_401k/app/ui/components/app_metric_chip.dart';
import 'package:nissay_401k/app/ui/components/app_section_header.dart';
import 'package:nissay_401k/app/ui/components/app_status_card.dart';
import 'package:nissay_401k/app/ui/components/app_surface_card.dart';
import 'package:nissay_401k/app/ui/nissay_formatters.dart';
import 'package:nissay_401k/app/ui/theme/app_palette.dart';

class DashboardHistorySection extends StatelessWidget {
  const DashboardHistorySection({
    required this.entries,
    super.key,
  });

  final List<NissayDashboardHistoryEntry> entries;

  @override
  Widget build(BuildContext context) {
    final recentHistory = [...entries]..sort((a, b) => b.date.compareTo(a.date));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppSectionHeader(
          eyebrow: 'HISTORY',
          title: '資産推移',
        ),
        const SizedBox(height: 14),
        _DashboardHistoryCard(entries: recentHistory),
      ],
    );
  }
}

class _DashboardHistoryCard extends StatelessWidget {
  const _DashboardHistoryCard({
    required this.entries,
  });

  final List<NissayDashboardHistoryEntry> entries;

  @override
  Widget build(BuildContext context) {
    if (entries.isEmpty) {
      return const AppStatusCard(
        title: '履歴はまだありません',
        message: '資産推移が取得できると、ここに時系列で表示されます。',
      );
    }

    return AppSurfaceCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final entry in entries) ...[
            _DashboardHistoryRow(entry: entry),
            if (entry != entries.last)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Divider(height: 1),
              ),
          ],
        ],
      ),
    );
  }
}

class _DashboardHistoryRow extends StatelessWidget {
  const _DashboardHistoryRow({required this.entry});

  final NissayDashboardHistoryEntry entry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final formatter = DashboardFormatter();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          formatter.toMonth(entry.date),
          style: theme.textTheme.titleMedium?.copyWith(
            color: AppPalette.ink,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 12),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 12,
            children: [
              AppMetricChip(
                icon: Icons.account_balance_wallet_outlined,
                label: '総資産',
                value: formatter.toCurrency(entry.totalAsset),
                color: AppPalette.teal,
              ),
              AppMetricChip(
                icon: Icons.trending_up_rounded,
                label: '評価損益',
                value: formatter.toSignedCurrency(entry.totalProfitLoss),
                color: appValueColor(entry.totalProfitLoss),
              ),
              AppMetricChip(
                icon: Icons.savings_outlined,
                label: '拠出累計',
                value: formatter.toCurrency(entry.totalContribution),
                color: AppPalette.sky,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
