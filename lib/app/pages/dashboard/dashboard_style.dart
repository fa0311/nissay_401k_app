import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final _currencyFormat = NumberFormat.currency(
  locale: 'ja_JP',
  symbol: '¥',
  decimalDigits: 0,
);
final _percentFormat = NumberFormat('0.##', 'ja_JP');
final dashboardDateTimeFormat = DateFormat('yyyy/MM/dd HH:mm');
final dashboardDateFormat = DateFormat('yyyy/MM/dd', 'ja_JP');
final dashboardMonthFormat = DateFormat('yyyy/MM', 'ja_JP');

const dashboardBodyGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFFF7F1E4),
    Color(0xFFE8F0F1),
  ],
);

abstract final class DashboardPalette {
  static const background = Color(0xFFF3EEE3);
  static const ink = Color(0xFF102334);
  static const navy = Color(0xFF18314A);
  static const teal = Color(0xFF226D72);
  static const gold = Color(0xFFE0AE5D);
  static const coral = Color(0xFFD16D5F);
  static const sky = Color(0xFF5B92B1);
}

Color dashboardValueColor(int value) {
  if (value > 0) {
    return const Color(0xFF11835F);
  }
  if (value < 0) {
    return const Color(0xFFC25548);
  }
  return DashboardPalette.ink;
}

String formatDashboardCurrency(int value) => _currencyFormat.format(value);

String formatDashboardSignedCurrency(int value) {
  final sign = value > 0 ? '+' : '';
  return '$sign${_currencyFormat.format(value)}';
}

String formatDashboardPercent(double value) => _percentFormat.format(value);

String formatDashboardDate(DateTime value) => dashboardDateFormat.format(value);

String formatDashboardDateTime(DateTime value) => dashboardDateTimeFormat.format(value);

String formatDashboardMonth(DateTime value) => dashboardMonthFormat.format(value);
