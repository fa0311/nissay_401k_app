import 'package:flutter/material.dart';
import 'package:nissay_401k/app/models/nissay_dashboard_model.dart';
import 'package:nissay_401k/app/ui/components/app_surface_card.dart';
import 'package:nissay_401k/app/ui/nissay_formatters.dart';
import 'package:nissay_401k/app/ui/theme/app_palette.dart';

class UserAccountCard extends StatelessWidget {
  const UserAccountCard({
    required this.data,
    super.key,
  });

  final NissayDashboard data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppSurfaceCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '加入者情報',
            style: theme.textTheme.labelLarge?.copyWith(
              color: AppPalette.ink.withValues(alpha: 0.52),
              fontWeight: FontWeight.w700,
              letterSpacing: 1.1,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            data.userName,
            style: theme.textTheme.headlineSmall?.copyWith(
              color: AppPalette.ink,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            data.planName,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: AppPalette.ink.withValues(alpha: 0.72),
              height: 1.45,
            ),
          ),
          const SizedBox(height: 18),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppPalette.sky.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: AppPalette.sky.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Icon(
                    Icons.schedule_rounded,
                    color: AppPalette.sky,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '前回ログイン',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppPalette.ink.withValues(alpha: 0.64),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        formatDashboardDateTime(data.lastLogin),
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: AppPalette.ink,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '最後にログインした日時です。',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppPalette.ink.withValues(alpha: 0.6),
                          height: 1.4,
                        ),
                      ),
                    ],
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
