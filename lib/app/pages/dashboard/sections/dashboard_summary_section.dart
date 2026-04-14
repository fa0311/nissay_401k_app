import 'package:flutter/material.dart';
import 'package:nissay_401k/app/models/nissay_dashboard_model.dart';
import 'package:nissay_401k/app/ui/components/app_overview_tile.dart';
import 'package:nissay_401k/app/ui/components/app_section_header.dart';
import 'package:nissay_401k/app/ui/nissay_formatters.dart';

class DashboardSummarySection extends StatelessWidget {
  const DashboardSummarySection({required this.data, super.key});

  final NissayDashboard data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppSectionHeader(
          eyebrow: 'SUMMARY',
          title: 'サマリー',
        ),
        const SizedBox(height: 14),
        AppOverviewTile(
          icon: Icons.account_balance_wallet_outlined,
          label: '拠出金額累計',
          value: formatDashboardCurrency(data.totalContribution),
        ),
        const SizedBox(height: 14),
        AppOverviewTile(
          icon: Icons.savings_outlined,
          label: '次回掛金額',
          value: formatDashboardCurrency(data.contributionAmount),
        ),
        const SizedBox(height: 14),
        AppOverviewTile(
          icon: Icons.event_outlined,
          label: '次回拠出日',
          value: formatDashboardDate(data.contributionDate),
        ),
        const SizedBox(height: 14),
        AppOverviewTile(
          icon: Icons.schedule_outlined,
          label: '照会日時',
          value: formatDashboardDateTime(data.date),
        ),
      ],
    );
  }
}
