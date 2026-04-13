import 'package:flutter/material.dart';
import 'package:nissay_401k/app/models/nissay_dashboard_model.dart';
import 'package:nissay_401k/app/pages/dashboard/sections/dashboard_hero_card.dart';
import 'package:nissay_401k/app/pages/dashboard/sections/dashboard_history_section.dart';
import 'package:nissay_401k/app/pages/dashboard/sections/dashboard_holdings_section.dart';
import 'package:nissay_401k/app/pages/dashboard/sections/dashboard_summary_section.dart';

class DashboardLoadedView extends StatelessWidget {
  const DashboardLoadedView({required this.data, super.key});

  final NissayDashboard data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DashboardHeroCard(data: data),
          const SizedBox(height: 24),
          DashboardSummarySection(data: data),
          const SizedBox(height: 32),
          DashboardHoldingsSection(holdings: data.holdings),
          const SizedBox(height: 32),
          DashboardHistorySection(entries: data.historyEntries),
        ],
      ),
    );
  }
}
