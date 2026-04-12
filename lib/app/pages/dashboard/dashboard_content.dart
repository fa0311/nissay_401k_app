import 'package:flutter/material.dart';
import 'package:nissay_401k/app/models/nissay_dashboard_model.dart';
import 'package:nissay_401k/app/pages/dashboard/dashboard_style.dart';

class DashboardLoadedView extends StatelessWidget {
  const DashboardLoadedView({required this.data, super.key});

  final NissayDashboard data;

  @override
  Widget build(BuildContext context) {
    final sortedHoldings = [...data.holdings]..sort((a, b) => b.assetRatio.compareTo(a.assetRatio));
    final recentHistory = [...data.historyEntries]..sort((a, b) => b.date.compareTo(a.date));

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DashboardHeroCard(data: data),
          const SizedBox(height: 24),
          DashboardSummarySection(data: data),
          const SizedBox(height: 32),
          const DashboardSectionHeader(
            eyebrow: 'HOLDINGS',
            title: '現在の資産',
          ),
          const SizedBox(height: 14),
          if (sortedHoldings.isEmpty)
            const DashboardEmptyCard(
              message: '保有商品の情報はまだありません。',
            ),
          for (final holding in sortedHoldings)
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: DashboardHoldingCard(
                holding: holding,
                color: dashboardAllocationColor(sortedHoldings.indexOf(holding)),
              ),
            ),
          const SizedBox(height: 32),
          const DashboardSectionHeader(
            eyebrow: 'HISTORY',
            title: '資産推移',
          ),
          const SizedBox(height: 14),
          DashboardHistoryCard(
            entries: recentHistory.toList(),
          ),
        ],
      ),
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
        borderRadius: BorderRadius.circular(32),
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
              'ASSET OVERVIEW',
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
          ],
        ),
      ),
    );
  }
}

class DashboardSummarySection extends StatelessWidget {
  const DashboardSummarySection({required this.data, super.key});

  final NissayDashboard data;

  @override
  Widget build(BuildContext context) {
    final summaryTiles = [
      DashboardSummaryTile(
        icon: Icons.account_balance_wallet_outlined,
        label: '拠出金額累計',
        value: formatDashboardCurrency(data.totalContribution),
      ),
      DashboardSummaryTile(
        icon: Icons.savings_outlined,
        label: '次回掛金額',
        value: formatDashboardCurrency(data.contributionAmount),
      ),
      DashboardSummaryTile(
        icon: Icons.event_outlined,
        label: '次回拠出日',
        value: formatDashboardDate(data.contributionDate),
      ),
      DashboardSummaryTile(
        icon: Icons.schedule_outlined,
        label: '照会日時',
        value: formatDashboardDateTime(data.date),
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DashboardSectionHeader(
          eyebrow: 'SUMMARY',
          title: 'サマリー',
        ),
        const SizedBox(height: 14),
        LayoutBuilder(
          builder: (context, constraints) {
            const spacing = 12.0;
            final columns = switch (constraints.maxWidth) {
              >= 980 => 4,
              >= 560 => 2,
              _ => 1,
            };
            final tileWidth = columns == 1
                ? constraints.maxWidth
                : (constraints.maxWidth - (spacing * (columns - 1))) / columns;

            return Wrap(
              spacing: spacing,
              runSpacing: spacing,
              children: [
                for (final tile in summaryTiles)
                  SizedBox(
                    width: tileWidth,
                    child: tile,
                  ),
              ],
            );
          },
        ),
      ],
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

class DashboardHistoryCard extends StatelessWidget {
  const DashboardHistoryCard({
    required this.entries,
    super.key,
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

class DashboardSummaryTile extends StatelessWidget {
  const DashboardSummaryTile({
    required this.icon,
    required this.label,
    required this.value,
    super.key,
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

class DashboardEmptyCard extends StatelessWidget {
  const DashboardEmptyCard({
    required this.message,
    super.key,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DashboardGlassCard(
      child: Text(
        message,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: DashboardPalette.ink.withValues(alpha: 0.64),
        ),
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
