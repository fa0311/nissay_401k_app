import 'package:flutter/material.dart';
import 'package:nissay_401k/app/models/nissay_dashboard_model.dart';
import 'package:nissay_401k/app/pages/dashboard/dashboard_style.dart';
import 'package:nissay_401k/app/pages/dashboard/widgets/dashboard_shared_widgets.dart';

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
        const DashboardSectionHeader(
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
    final theme = Theme.of(context);

    return DashboardGlassCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (entries.isEmpty)
            Text(
              '履歴はまだありません。',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: DashboardPalette.ink.withValues(alpha: 0.64),
              ),
            )
          else
            Column(
              children: [
                for (var index = 0; index < entries.length; index++) ...[
                  _DashboardHistoryRow(entry: entries[index]),
                  if (index != entries.length - 1)
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Divider(height: 1),
                    ),
                ],
              ],
            ),
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          formatDashboardMonth(entry.date),
          style: theme.textTheme.titleMedium?.copyWith(
            color: DashboardPalette.ink,
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
              DashboardInfoChip(
                icon: Icons.account_balance_wallet_outlined,
                label: '総資産',
                value: formatDashboardCurrency(entry.totalAsset),
                color: DashboardPalette.teal,
              ),
              DashboardInfoChip(
                icon: Icons.savings_outlined,
                label: '拠出累計',
                value: formatDashboardCurrency(entry.totalContribution),
                color: DashboardPalette.sky,
              ),
              DashboardInfoChip(
                icon: Icons.trending_up_rounded,
                label: '評価損益',
                value: formatDashboardSignedCurrency(entry.totalProfitLoss),
                color: dashboardValueColor(entry.totalProfitLoss),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
