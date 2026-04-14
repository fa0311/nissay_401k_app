import 'package:intl/intl.dart';

class DashboardFormatter {
  DashboardFormatter();

  final _currencyFormat = NumberFormat.currency(
    locale: 'ja_JP',
    symbol: '¥',
    decimalDigits: 0,
  );
  final _percentFormat = NumberFormat('0.##', 'ja_JP');
  final _dateTimeFormat = DateFormat('yyyy/MM/dd HH:mm');
  final _dateFormat = DateFormat('yyyy/MM/dd', 'ja_JP');
  final _monthFormat = DateFormat('yyyy/MM', 'ja_JP');

  String toCurrency(int value) => _currencyFormat.format(value);
  String toSignedCurrency(int value) {
    final sign = value > 0 ? '+' : '';
    return '$sign${_currencyFormat.format(value)}';
  }

  String toPercent(double value) => '${_percentFormat.format(value)}%';
  String toDate(DateTime value) => _dateFormat.format(value);
  String toDateTime(DateTime value) => _dateTimeFormat.format(value);
  String toMonth(DateTime value) => _monthFormat.format(value);
}
