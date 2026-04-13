import 'package:flutter/material.dart';
import 'package:nissay_401k/app/models/nissay_dashboard_model.dart';
import 'package:nissay_401k/app/pages/dashboard/dashboard_style.dart';
import 'package:nissay_401k/app/pages/dashboard/widgets/dashboard_shared_widgets.dart';

class DashboardSummarySection extends StatelessWidget {
  const DashboardSummarySection({required this.data, super.key});

  final NissayDashboard data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DashboardSectionHeader(
          eyebrow: 'SUMMARY',
          title: 'サマリー',
        ),
        const SizedBox(height: 14),
        _DashboardSummaryTile(
          icon: Icons.account_balance_wallet_outlined,
          label: '拠出金額累計',
          value: formatDashboardCurrency(data.totalContribution),
        ),
        const SizedBox(height: 14),
        _DashboardSummaryTile(
          icon: Icons.savings_outlined,
          label: '次回掛金額',
          value: formatDashboardCurrency(data.contributionAmount),
        ),
        const SizedBox(height: 14),
        _DashboardSummaryTile(
          icon: Icons.event_outlined,
          label: '次回拠出日',
          value: formatDashboardDate(data.contributionDate),
        ),
        const SizedBox(height: 14),
        _DashboardSummaryTile(
          icon: Icons.schedule_outlined,
          label: '照会日時',
          value: formatDashboardDateTime(data.date),
        ),
      ],
    );
  }
}

class _DashboardSummaryTile extends StatelessWidget {
  const _DashboardSummaryTile({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DashboardGlassCard(
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: DashboardPalette.teal.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: DashboardPalette.teal),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: DashboardPalette.ink.withValues(alpha: 0.64),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: DashboardPalette.ink,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
