// This file intentionally uses a compile-time flag to show the current app mode.

import 'package:flutter/material.dart';
import 'package:nissay_401k/app/ui/theme/app_palette.dart';

const _applicationIconAssetPath = 'assets/branding/app_icon_foreground.png';

class ApplicationBadge extends StatelessWidget {
  const ApplicationBadge({
    super.key,
    this.size = 44,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(size * 0.28);

    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(size * 0.08),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadius,
        border: Border.all(
          color: AppPalette.ink.withValues(alpha: 0.08),
        ),
        boxShadow: [
          BoxShadow(
            color: AppPalette.navy.withValues(alpha: 0.12),
            blurRadius: size * 0.24,
            offset: Offset(0, size * 0.1),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Image.asset(
          _applicationIconAssetPath,
          fit: BoxFit.contain,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}

class AppInfoLine extends StatelessWidget {
  const AppInfoLine({
    required this.label,
    required this.value,
    super.key,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyMedium,
          children: [
            TextSpan(
              text: '$label: ',
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
            TextSpan(text: value),
          ],
        ),
      ),
    );
  }
}
