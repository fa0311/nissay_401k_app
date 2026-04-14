import 'package:flutter/material.dart';
import 'package:nissay_401k/app/ui/theme/app_palette.dart';

class AppSectionHeader extends StatelessWidget {
  const AppSectionHeader({
    required this.eyebrow,
    required this.title,

    super.key,
  });

  final String eyebrow;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            eyebrow,
            style: theme.textTheme.labelLarge?.copyWith(
              color: AppPalette.ink.withValues(alpha: 0.52),
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: theme.textTheme.headlineSmall?.copyWith(
              color: AppPalette.ink,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.5,
            ),
          ),
        ],
      ),
    );
  }
}
