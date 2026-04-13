import 'package:flutter/material.dart';
import 'package:nissay_401k/app/models/nissay_dashboard_model.dart';
import 'package:nissay_401k/app/pages/dashboard/dashboard_style.dart';
import 'package:nissay_401k/app/pages/dashboard/widgets/dashboard_shared_widgets.dart';

class DashboardHoldingsSection extends StatelessWidget {
  const DashboardHoldingsSection({
    required this.holdings,
    super.key,
  });

  final List<NissayDashboardHolding> holdings;

  @override
  Widget build(BuildContext context) {
    final sortedHoldings = [...holdings]..sort((a, b) => b.assetRatio.compareTo(a.assetRatio));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DashboardSectionHeader(
          eyebrow: 'HOLDINGS',
          title: '現在の資産',
        ),
        const SizedBox(height: 14),
        if (sortedHoldings.isEmpty)
          const DashboardEmptyCard(
            message: '保有商品の情報はまだありません。',
          ),
        for (var index = 0; index < sortedHoldings.length; index++)
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: _DashboardHoldingCard(
              holding: sortedHoldings[index],
              color: dashboardAllocationColor(index),
            ),
          ),
      ],
    );
  }
}

class _DashboardHoldingCard extends StatelessWidget {
  const _DashboardHoldingCard({
    required this.holding,
    required this.color,
  });

  final NissayDashboardHolding holding;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DashboardGlassCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Text(
                  holding.operationType,
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: color,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Text(
                  holding.productName,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: DashboardPalette.ink,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                formatDashboardCurrency(holding.totalAsset),
                style: theme.textTheme.titleMedium?.copyWith(
                  color: DashboardPalette.ink,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 12,
              children: [
                DashboardInfoChip(
                  icon: Icons.donut_small_rounded,
                  label: '資産比率',
                  value: '${formatDashboardPercent(holding.assetRatio)}%',
                  color: color,
                ),
                DashboardInfoChip(
                  icon: Icons.trending_up_rounded,
                  label: '評価損益',
                  value: formatDashboardSignedCurrency(holding.profitLoss),
                  color: dashboardValueColor(holding.profitLoss),
                ),
                DashboardInfoChip(
                  icon: Icons.savings_outlined,
                  label: '次回掛金配分',
                  value: '${formatDashboardPercent(holding.nextContributionRatio ?? 0)}%',
                  color: DashboardPalette.sky,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
