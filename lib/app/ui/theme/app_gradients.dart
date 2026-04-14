import 'package:flutter/material.dart';
import 'package:nissay_401k/app/ui/theme/app_palette.dart';

abstract final class AppGradients {
  static const pageBackground = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFF7F1E4),
      Color(0xFFE8F0F1),
    ],
  );

  static const hero = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppPalette.navy,
      AppPalette.teal,
    ],
  );
}
