import 'package:flutter/material.dart';
import 'package:nissay_401k/app/ui/theme/app_palette.dart';

ThemeData buildAppTheme() {
  final base = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppPalette.teal,
    ).copyWith(
      primary: AppPalette.teal,
      secondary: AppPalette.sky,
      error: AppPalette.coral,
      surface: AppPalette.background,
      onSurface: AppPalette.ink,
    ),
    scaffoldBackgroundColor: AppPalette.background,
  );
  final textTheme = base.textTheme.apply(
    bodyColor: AppPalette.ink,
    displayColor: AppPalette.ink,
  );

  return base.copyWith(
    textTheme: textTheme,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: AppPalette.ink,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: textTheme.labelLarge?.copyWith(
        color: AppPalette.ink.withValues(alpha: 0.68),
        fontWeight: FontWeight.w700,
        letterSpacing: 1.1,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white.withValues(alpha: 0.76),
      contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      labelStyle: TextStyle(color: AppPalette.ink.withValues(alpha: 0.72)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(22),
        borderSide: BorderSide(
          color: AppPalette.teal.withValues(alpha: 0.12),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(22),
        borderSide: BorderSide(
          color: AppPalette.teal.withValues(alpha: 0.14),
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(22)),
        borderSide: BorderSide(
          color: AppPalette.teal,
          width: 1.4,
        ),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        minimumSize: const Size(0, 54),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        backgroundColor: AppPalette.teal,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        textStyle: textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(0, 54),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        foregroundColor: AppPalette.ink,
        side: BorderSide(color: AppPalette.teal.withValues(alpha: 0.24)),
        backgroundColor: Colors.white.withValues(alpha: 0.38),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        textStyle: textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: Colors.white.withValues(alpha: 0.86),
      surfaceTintColor: Colors.transparent,
      indicatorColor: AppPalette.teal.withValues(alpha: 0.16),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        final baseStyle = textTheme.labelMedium?.copyWith(
          fontWeight: FontWeight.w700,
        );
        if (states.contains(WidgetState.selected)) {
          return baseStyle?.copyWith(color: AppPalette.ink);
        }
        return baseStyle?.copyWith(
          color: AppPalette.ink.withValues(alpha: 0.56),
        );
      }),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const IconThemeData(color: AppPalette.teal);
        }
        return IconThemeData(
          color: AppPalette.ink.withValues(alpha: 0.56),
        );
      }),
    ),
    dividerTheme: DividerThemeData(
      color: AppPalette.ink.withValues(alpha: 0.08),
      thickness: 1,
    ),
    snackBarTheme: const SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppPalette.teal,
    ),
  );
}
