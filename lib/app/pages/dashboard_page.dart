import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:nissay_401k/app/providers/nissay_repository_provider.dart';
import 'package:nissay_401k/app/providers/nissay_session_provider.dart';
import 'package:nissay_401k/app/router/app_router.dart';
import 'package:nissay_401k/app/services/webview_cookie_sync.dart';

final _currencyFormat = NumberFormat.currency(
  locale: 'ja_JP',
  symbol: '¥',
  decimalDigits: 0,
);
final _percentFormat = NumberFormat('0.##', 'ja_JP');
final _dateTimeFormat = DateFormat('yyyy/MM/dd HH:mm');

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  Future<void> _openWeb(BuildContext context, WidgetRef ref) async {
    await syncCookieJarToWebView(await ref.read(nissayCookieJarProvider.future));
    if (context.mounted) {
      await const WebViewRoute().push<void>(context);
    }
  }

  Future<void> _refreshData(WidgetRef ref) async {
    ref.invalidate(nissayRepositoryProvider);
    await ref.read(nissayAllAssetsProvider.future);
  }

  Future<void> _refreshSession(WidgetRef ref) async {
    await ref.read(nissaySessionProvider.notifier).refresh();
    ref.invalidate(nissaySessionCheckProvider);
    await ref.read(nissaySessionCheckProvider.future);
  }

  Future<void> _logout(WidgetRef ref) async {
    await ref.read(nissaySessionProvider.notifier).logout();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nissayData = ref.watch(nissayAllAssetsProvider);
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: _DashboardPalette.background,
      appBar: AppBar(
        title: Text(
          'NISSAY 401k',
          style: theme.textTheme.labelLarge?.copyWith(
            color: _DashboardPalette.ink.withValues(alpha: 0.68),
            fontWeight: FontWeight.w700,
            letterSpacing: 1.1,
          ),
        ),
      ),
      body: switch (nissayData) {
        AsyncData(:final value) => DecoratedBox(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFF7F1E4),
                Color(0xFFE8F0F1),
              ],
            ),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                _HeroCard(data: value),
                _DashboardLoadedView(data: value),
              ],
            ),
          ),
        ),
        AsyncError(:final error, :final stackTrace) => Text('Error: $error\n$stackTrace'),
        AsyncLoading() => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}

class _DashboardLoadedView extends StatelessWidget {
  const _DashboardLoadedView({required this.data});

  final NissayModel data;

  @override
  Widget build(BuildContext context) {
    final sortedDetails = [...data.details]..sort((a, b) => b.assetRatio.compareTo(a.assetRatio));

    return Column(
      children: [
        const SizedBox(height: 28),
        const _SectionHeader(
          eyebrow: 'HOLDINGS',
          title: '保有商品のスナップショット',
        ),
        const SizedBox(height: 14),
        for (var index = 0; index < sortedDetails.length; index++)
          Padding(
            padding: const EdgeInsets.all(16),
            child: _HoldingCard(
              detail: sortedDetails[index],
              color: _allocationColor(index),
            ),
          ),
      ],
    );
  }
}

class _HeroCard extends StatelessWidget {
  const _HeroCard({required this.data});

  final NissayModel data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            _DashboardPalette.navy,
            _DashboardPalette.teal,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: _DashboardPalette.navy.withValues(alpha: 0.22),
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
                _formatCurrency(data.totalAsset),
                style: theme.textTheme.displaySmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -1.4,
                ),
              ),
            ),
            const SizedBox(height: 18),
            _HeroMetaTile(
              icon: Icons.trending_up_rounded,
              label: '評価損益',
              value: _formatSignedCurrency(data.totalProfitLoss),
              accent: _valueColor(data.totalProfitLoss),
            ),
            const SizedBox(height: 12),
            _HeroMetaTile(
              icon: Icons.show_chart_rounded,
              label: '利回り',
              value: '${_formatPercent(data.roi)}%',
              accent: _DashboardPalette.gold,
            ),
            const SizedBox(height: 12),
            _HeroMetaTile(
              icon: Icons.schedule_rounded,
              label: '最終ログイン',
              value: _dateTimeFormat.format(data.lastLogin),
              accent: _DashboardPalette.sky,
            ),
          ],
        ),
      ),
    );
  }
}

class _HoldingCard extends StatelessWidget {
  const _HoldingCard({
    required this.detail,
    required this.color,
  });

  final NissayDetailsModel detail;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return _GlassCard(
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
                  detail.operationType,
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: color,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Text(
                  detail.productName,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: _DashboardPalette.ink,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                _formatCurrency(detail.totalAsset),
                style: theme.textTheme.titleMedium?.copyWith(
                  color: _DashboardPalette.ink,
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
                _InfoChip(
                  icon: Icons.donut_small_rounded,
                  label: '資産比率',
                  value: '${_formatPercent(detail.assetRatio)}%',
                  color: color,
                ),
                _InfoChip(
                  icon: Icons.trending_up_rounded,
                  label: '評価損益',
                  value: _formatSignedCurrency(detail.profitLoss),
                  color: _valueColor(detail.profitLoss),
                ),
                _InfoChip(
                  icon: Icons.show_chart_rounded,
                  label: '利回り',
                  value:
                      '${_formatPercent(
                        detail.assetRatio == 0 ? 0 : (detail.profitLoss / detail.totalAsset) * 100,
                      )}%',
                  color: _DashboardPalette.gold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _GlassCard extends StatelessWidget {
  const _GlassCard({
    required this.child,
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

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({
    required this.eyebrow,
    required this.title,
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
            color: _DashboardPalette.ink.withValues(alpha: 0.52),
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: theme.textTheme.headlineSmall?.copyWith(
            color: _DashboardPalette.ink,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.5,
          ),
        ),
      ],
    );
  }
}

class _HeroMetaTile extends StatelessWidget {
  const _HeroMetaTile({
    required this.icon,
    required this.label,
    required this.value,
    required this.accent,
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

class _InfoChip extends StatelessWidget {
  const _InfoChip({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
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
              color: _DashboardPalette.ink.withValues(alpha: 0.64),
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            value,
            style: theme.textTheme.labelLarge?.copyWith(
              color: _DashboardPalette.ink,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

class _DashboardPalette {
  static const background = Color(0xFFF3EEE3);
  static const ink = Color(0xFF102334);
  static const navy = Color(0xFF18314A);
  static const teal = Color(0xFF226D72);
  static const gold = Color(0xFFE0AE5D);
  static const coral = Color(0xFFD16D5F);
  static const sky = Color(0xFF5B92B1);
}

Color _valueColor(int value) {
  if (value > 0) {
    return const Color(0xFF11835F);
  }
  if (value < 0) {
    return const Color(0xFFC25548);
  }
  return _DashboardPalette.ink.withValues(alpha: 0.52);
}

String _formatCurrency(int value) => _currencyFormat.format(value);

String _formatSignedCurrency(int value) {
  final sign = value > 0 ? '+' : '';
  return '$sign${_currencyFormat.format(value)}';
}

String _formatPercent(double value) => _percentFormat.format(value);

Color _allocationColor(int index) {
  const colors = [
    _DashboardPalette.gold,
    _DashboardPalette.teal,
    _DashboardPalette.sky,
    _DashboardPalette.coral,
    Color(0xFF6C8C7C),
    Color(0xFF8B7AA8),
  ];
  return colors[index % colors.length];
}
