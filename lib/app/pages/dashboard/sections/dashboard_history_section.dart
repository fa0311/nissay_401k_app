import 'dart:math' as math;

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:nissay_401k/app/models/nissay_dashboard_model.dart';
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
    final history = [...entries]..sort((a, b) => a.date.compareTo(b.date));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppSectionHeader(
          eyebrow: 'HISTORY',
          title: '資産推移',
        ),
        const SizedBox(height: 14),
        _DashboardHistoryCard(entries: history),
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

    final latest = entries.last;
    final assetChange = entries.length > 1 ? latest.totalAsset - entries[entries.length - 2].totalAsset : null;

    return AppSurfaceCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _HistorySummary(
            latest: latest,
            assetChange: assetChange,
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 292,
            child: _AssetHistoryChart(entries: entries),
          ),
          const SizedBox(height: 18),
          const Wrap(
            spacing: 18,
            runSpacing: 8,
            children: [
              _ChartLegend(
                color: AppPalette.teal,
                label: '総資産',
              ),
              _ChartLegend(
                color: AppPalette.sky,
                label: '拠出累計',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _HistorySummary extends StatelessWidget {
  const _HistorySummary({
    required this.latest,
    required this.assetChange,
  });

  final NissayDashboardHistoryEntry latest;
  final int? assetChange;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final formatter = DashboardFormatter();
    final change = assetChange;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${formatter.toMonth(latest.date)} 時点',
                style: theme.textTheme.labelMedium?.copyWith(
                  color: AppPalette.ink.withValues(alpha: 0.56),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 4),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  formatter.toCurrency(latest.totalAsset),
                  style: theme.textTheme.headlineMedium?.copyWith(
                    color: AppPalette.ink,
                    fontWeight: FontWeight.w900,
                    letterSpacing: -1,
                  ),
                ),
              ),
            ],
          ),
        ),
        if (change != null) ...[
          const SizedBox(width: 12),
          DecoratedBox(
            decoration: BoxDecoration(
              color: appValueColor(change).withValues(alpha: 0.10),
              borderRadius: BorderRadius.circular(999),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 7),
              child: Text(
                '前月比 ${formatter.toSignedCurrency(change)}',
                style: theme.textTheme.labelMedium?.copyWith(
                  color: appValueColor(change),
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class _AssetHistoryChart extends StatefulWidget {
  const _AssetHistoryChart({required this.entries});

  final List<NissayDashboardHistoryEntry> entries;

  @override
  State<_AssetHistoryChart> createState() => _AssetHistoryChartState();
}

class _AssetHistoryChartState extends State<_AssetHistoryChart> {
  _HistoryRange _selectedRange = _HistoryRange.year;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: _HistoryRangeSelector(
            selectedRange: _selectedRange,
            onChanged: (value) {
              setState(() => _selectedRange = value);
            },
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: LineChart(
            _chartData,
            duration: const Duration(milliseconds: 450),
            curve: Curves.easeOutCubic,
          ),
        ),
      ],
    );
  }

  List<NissayDashboardHistoryEntry> get _entries {
    if (_selectedRange == _HistoryRange.year && widget.entries.length > 12) {
      return widget.entries.sublist(widget.entries.length - 12);
    }
    return widget.entries;
  }

  LineChartData get _chartData {
    final entries = _entries;
    final range = _ChartRange.fromEntries(entries);
    final theme = Theme.of(context);
    final formatter = DashboardFormatter();

    return LineChartData(
      minX: 0,
      maxX: math.max(1, entries.length - 1).toDouble(),
      minY: 0,
      maxY: range.max,
      clipData: const FlClipData.all(),
      borderData: FlBorderData(show: false),
      gridData: FlGridData(
        drawVerticalLine: false,
        horizontalInterval: range.interval,
        getDrawingHorizontalLine: (_) => FlLine(
          color: AppPalette.ink.withValues(alpha: 0.07),
          strokeWidth: 1,
          dashArray: [5, 5],
        ),
      ),
      titlesData: FlTitlesData(
        topTitles: const AxisTitles(),
        rightTitles: const AxisTitles(),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 42,
            interval: range.interval,
            getTitlesWidget: (value, meta) => SideTitleWidget(
              meta: meta,
              child: Text(
                _compactCurrency(value),
                style: theme.textTheme.labelSmall?.copyWith(
                  color: AppPalette.ink.withValues(alpha: 0.46),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 40,
            interval: 1,
            getTitlesWidget: (value, meta) {
              final index = value.round();
              if (index < 0 || index >= entries.length) {
                return const SizedBox.shrink();
              }
              final step = math.max(1, (entries.length / 5).ceil());
              final shouldShow = index == 0 || index == entries.length - 1 || index % step == 0;
              if (!shouldShow) {
                return const SizedBox.shrink();
              }
              final date = entries[index].date;
              return SideTitleWidget(
                meta: meta,
                space: 10,
                child: Text(
                  _selectedRange == _HistoryRange.all ? '${date.year}\n${date.month}月' : '${date.month}月',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: AppPalette.ink.withValues(alpha: 0.52),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              );
            },
          ),
        ),
      ),
      lineTouchData: LineTouchData(
        touchSpotThreshold: double.infinity,
        getTouchedSpotIndicator: _touchedIndicators,
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (_) => AppPalette.navy,
          tooltipBorderRadius: BorderRadius.circular(14),
          tooltipPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          fitInsideHorizontally: true,
          fitInsideVertically: true,
          getTooltipItems: (spots) {
            final entry = entries[spots.first.x.round()];
            final text = [
              formatter.toMonth(entry.date),
              '総資産 ${formatter.toCurrency(entry.totalAsset)}',
              '拠出累計 ${formatter.toCurrency(entry.totalContribution)}',
            ].join('\n');

            return [
              LineTooltipItem(
                text,
                theme.textTheme.labelMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  height: 1.45,
                ),
                textAlign: TextAlign.left,
              ),
              for (var index = 1; index < spots.length; index++) null,
            ];
          },
        ),
      ),
      lineBarsData: [
        _lineData(
          entries.indexed
              .map(
                (item) => FlSpot(
                  item.$1.toDouble(),
                  item.$2.totalAsset.toDouble(),
                ),
              )
              .toList(),
          color: AppPalette.teal,
          showArea: true,
        ),
        _lineData(
          entries.indexed
              .map(
                (item) => FlSpot(
                  item.$1.toDouble(),
                  item.$2.totalContribution.toDouble(),
                ),
              )
              .toList(),
          color: AppPalette.sky,
          showArea: false,
        ),
      ],
    );
  }

  List<TouchedSpotIndicatorData> _touchedIndicators(
    LineChartBarData bar,
    List<int> indexes,
  ) {
    final color = bar.color ?? AppPalette.teal;
    return [
      for (final _ in indexes)
        TouchedSpotIndicatorData(
          FlLine(
            color: color.withValues(alpha: 0.35),
            strokeWidth: 0.8,
          ),
          FlDotData(
            getDotPainter: (_, _, _, _) => FlDotCirclePainter(
              radius: 2.5,
              color: Colors.white,
              strokeWidth: 1.5,
              strokeColor: color,
            ),
          ),
        ),
    ];
  }

  LineChartBarData _lineData(
    List<FlSpot> spots, {
    required Color color,
    required bool showArea,
  }) {
    return LineChartBarData(
      spots: spots,
      color: color,
      isStrokeCapRound: true,
      dotData: const FlDotData(show: false),
      belowBarData: BarAreaData(
        show: showArea,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            color.withValues(alpha: 0.20),
            color.withValues(alpha: 0.01),
          ],
        ),
      ),
    );
  }
}

enum _HistoryRange {
  year(),
  all();

  const _HistoryRange();
}

class _HistoryRangeSelector extends StatelessWidget {
  const _HistoryRangeSelector({
    required this.selectedRange,
    required this.onChanged,
  });

  final _HistoryRange selectedRange;
  final ValueChanged<_HistoryRange> onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        final nextIndex = (selectedRange.index + 1) % _HistoryRange.values.length;
        onChanged(_HistoryRange.values[nextIndex]);
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppPalette.teal.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(999),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: AnimatedAlign(
                  duration: const Duration(milliseconds: 180),
                  curve: Curves.easeOut,
                  alignment: selectedRange == _HistoryRange.year ? Alignment.centerLeft : Alignment.centerRight,
                  child: FractionallySizedBox(
                    widthFactor: 0.5,
                    heightFactor: 1,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(999),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.08),
                            blurRadius: 8,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (final range in _HistoryRange.values)
                    _HistoryRangeButton(
                      label: switch (range) {
                        _HistoryRange.year => '1年',
                        _HistoryRange.all => '全期間',
                      },
                      isSelected: range == selectedRange,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HistoryRangeButton extends StatelessWidget {
  const _HistoryRangeButton({
    required this.label,
    required this.isSelected,
  });

  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: 64,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOut,
          style:
              theme.textTheme.labelMedium?.copyWith(
                color: isSelected ? AppPalette.teal : AppPalette.ink.withValues(alpha: 0.48),
                fontWeight: FontWeight.w800,
              ) ??
              const TextStyle(),
          child: Text(
            label,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class _ChartLegend extends StatelessWidget {
  const _ChartLegend({
    required this.color,
    required this.label,
  });

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 18,
          height: 4,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(999),
          ),
        ),
        const SizedBox(width: 7),
        Text(
          label,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: AppPalette.ink.withValues(alpha: 0.64),
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

class _ChartRange {
  const _ChartRange({
    required this.min,
    required this.max,
    required this.interval,
  });

  factory _ChartRange.fromEntries(List<NissayDashboardHistoryEntry> entries) {
    final values = [
      for (final entry in entries) ...[
        entry.totalAsset.toDouble(),
        entry.totalContribution.toDouble(),
      ],
    ];
    final lowest = values.reduce(math.min);
    final highest = values.reduce(math.max);
    final rawSpan = math.max(100000, highest - lowest);
    final interval = _niceInterval(rawSpan / 3);
    final min = math.max(0, (lowest / interval).floor() * interval - interval);
    final max = (highest / interval).ceil() * interval + interval;

    return _ChartRange(
      min: min.toDouble(),
      max: max,
      interval: interval,
    );
  }

  final double min;
  final double max;
  final double interval;
}

double _niceInterval(double value) {
  final magnitude = math.pow(10, (math.log(value) / math.ln10).floor());
  final normalized = value / magnitude;
  final step = switch (normalized) {
    <= 1 => 1,
    <= 2 => 2,
    <= 5 => 5,
    _ => 10,
  };
  return step * magnitude.toDouble();
}

String _compactCurrency(double value) {
  if (value >= 100000000) {
    return '${(value / 100000000).toStringAsFixed(1)}億';
  }
  if (value >= 10000) {
    return '${(value / 10000).round()}万';
  }
  return value.round().toString();
}
