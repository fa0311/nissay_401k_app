import 'package:flutter/material.dart';

abstract final class AppPalette {
  static const background = Color(0xFFF3EEE3);
  static const surface = Color(0xFFFFFFFF);
  static const ink = Color(0xFF102334);
  static const navy = Color(0xFF18314A);
  static const teal = Color(0xFF226D72);
  static const gold = Color(0xFFE0AE5D);
  static const coral = Color(0xFFD16D5F);
  static const sky = Color(0xFF5B92B1);
}

Color appValueColor(num value) {
  if (value > 0) {
    return const Color(0xFF11835F);
  }
  if (value < 0) {
    return const Color(0xFFC25548);
  }
  return AppPalette.ink;
}
