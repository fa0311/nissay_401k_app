// This file intentionally uses a compile-time flag to show the current app mode.

import 'package:flutter/material.dart';
import 'package:nissay_401k/app/pages/dashboard/dashboard_style.dart';

class ApplicationBadge extends StatelessWidget {
  const ApplicationBadge({
    super.key,
    this.size = 44,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size * 0.28),
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
            color: DashboardPalette.navy.withValues(alpha: 0.18),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Icon(
        Icons.account_balance_wallet_rounded,
        color: Colors.white,
        size: size * 0.48,
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
