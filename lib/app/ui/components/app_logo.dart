import 'package:flutter/material.dart';
import 'package:nissay_401k/app/ui/app_information.dart';
import 'package:nissay_401k/app/ui/theme/app_palette.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    this.size = 72,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        Center(child: ApplicationBadge(size: size)),
        const SizedBox(height: 20),
        Text(
          'NISSAY 401k',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: AppPalette.ink,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.8,
          ),
        ),
        const SizedBox(height: 28),
      ],
    );
  }
}
