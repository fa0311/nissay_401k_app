import 'package:flutter/material.dart';
import 'package:nissay_401k/app/models/nissay_dashboard_model.dart';
import 'package:nissay_401k/app/pages/dashboard/dashboard_style.dart';

class DashboardLoadedView extends StatelessWidget {
  const DashboardLoadedView({required this.data, super.key});

  final NissayDashboard data;

  @override
  Widget build(BuildContext context) {
    final sortedHoldings = [...data.holdings]..sort((a, b) => b.assetRatio.compareTo(a.assetRatio));

    return Column(
      children: [
        DashboardHeroCard(data: data),
        const SizedBox(height: 28),
        const DashboardSectionHeader(
          eyebrow: 'HOLDINGS',
          title: '保有商品のスナップショット',
        ),
        const SizedBox(height: 14),
        for (var index = 0; index < sortedHoldings.length; index++)
          Padding(
            padding: const EdgeInsets.all(16),
            child: DashboardHoldingCard(
              holding: sortedHoldings[index],
              color: dashboardAllocationColor(index),
            ),
          ),
      ],
    );
  }
}

class DashboardHeroCard extends StatelessWidget {
  const DashboardHeroCard({required this.data, super.key});

  final NissayDashboard data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            DashboardPalette.navy,
            DashboardPalette.teal,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: DashboardPalette.navy.withValues(alpha: 0.22),
            blurRadius: 32,
            offset: const Offset(0, 18),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CURRENT ASSET',
              style: theme.textTheme.labelLarge?.copyWith(
                color: Colors.white.withValues(alpha: 0.72),
                fontWeight: FontWeight.w700,
                letterSpacing: 1.4,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              data.planName,
              style: theme.textTheme.titleLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 28),
            Text(
              '総資産評価額',
              style: theme.textTheme.titleMedium?.copyWith(
                color: Colors.white.withValues(alpha: 0.76),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                formatDashboardCurrency(data.totalAsset),
                style: theme.textTheme.displaySmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -1.4,
                ),
              ),
            ),
            const SizedBox(height: 18),
            DashboardHeroMetaTile(
              icon: Icons.trending_up_rounded,
              label: '評価損益',
              value: formatDashboardSignedCurrency(data.totalProfitLoss),
              accent: dashboardValueColor(data.totalProfitLoss),
            ),
            const SizedBox(height: 12),
            DashboardHeroMetaTile(
              icon: Icons.show_chart_rounded,
              label: '利回り',
              value: '${formatDashboardPercent(data.roi)}%',
              accent: DashboardPalette.gold,
            ),
            const SizedBox(height: 12),
            DashboardHeroMetaTile(
              icon: Icons.schedule_rounded,
              label: '最終ログイン',
              value: dashboardDateTimeFormat.format(data.lastLogin),
              accent: DashboardPalette.sky,
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardHoldingCard extends StatelessWidget {
  const DashboardHoldingCard({
    required this.holding,
    required this.color,
    super.key,
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
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
          const SizedBox(height: 14),
          SingleChildScrollView(
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
                  icon: Icons.show_chart_rounded,
                  label: '利回り',
                  value:
                      '${formatDashboardPercent(
                        holding.assetRatio == 0 ? 0 : (holding.profitLoss / holding.totalAsset) * 100,
                      )}%',
                  color: DashboardPalette.gold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardGlassCard extends StatelessWidget {
  const DashboardGlassCard({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.72),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: Colors.white.withValues(alpha: 0.56)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 18,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: child,
      ),
    );
  }
}

class DashboardSectionHeader extends StatelessWidget {
  const DashboardSectionHeader({
    required this.eyebrow,
    required this.title,
    super.key,
  });

  final String eyebrow;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          eyebrow,
          style: theme.textTheme.labelLarge?.copyWith(
            color: DashboardPalette.ink.withValues(alpha: 0.52),
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: theme.textTheme.headlineSmall?.copyWith(
            color: DashboardPalette.ink,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.5,
          ),
        ),
      ],
    );
  }
}

class DashboardHeroMetaTile extends StatelessWidget {
  const DashboardHeroMetaTile({
    required this.icon,
    required this.label,
    required this.value,
    required this.accent,
    super.key,
  });

  final IconData icon;
  final String label;
  final String value;
  final Color accent;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: Colors.white.withValues(alpha: 0.12)),
      ),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: accent.withValues(alpha: 0.18),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: Colors.white),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Colors.white.withValues(alpha: 0.72),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: Colors.white,
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

class DashboardInfoChip extends StatelessWidget {
  const DashboardInfoChip({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
    super.key,
  });

  final IconData icon;
  final String label;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: color),
          const SizedBox(width: 8),
          Text(
            '$label  ',
            style: theme.textTheme.labelMedium?.copyWith(
              color: DashboardPalette.ink.withValues(alpha: 0.64),
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            value,
            style: theme.textTheme.labelLarge?.copyWith(
              color: DashboardPalette.ink,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
