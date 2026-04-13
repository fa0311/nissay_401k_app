import 'package:flutter/material.dart';
import 'package:nissay_401k/app/pages/dashboard/dashboard_style.dart';

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
