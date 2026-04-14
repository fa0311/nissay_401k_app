import 'package:intl/intl.dart';

final _currencyFormat = NumberFormat.currency(
  locale: 'ja_JP',
  symbol: '¥',
  decimalDigits: 0,
);
final _percentFormat = NumberFormat('0.##', 'ja_JP');
final _dateTimeFormat = DateFormat('yyyy/MM/dd HH:mm');
final _dateFormat = DateFormat('yyyy/MM/dd', 'ja_JP');
final _monthFormat = DateFormat('yyyy/MM', 'ja_JP');

String formatDashboardCurrency(int value) => _currencyFormat.format(value);

String formatDashboardSignedCurrency(int value) {
  final sign = value > 0 ? '+' : '';
  return '$sign${_currencyFormat.format(value)}';
}

String formatDashboardPercent(double value) => _percentFormat.format(value);

String formatDashboardDate(DateTime value) => _dateFormat.format(value);

String formatDashboardDateTime(DateTime value) => _dateTimeFormat.format(value);

String formatDashboardMonth(DateTime value) => _monthFormat.format(value);
