import 'package:intl/intl.dart';

class CurrencyUtils {
  static String covertToIdr(dynamic number, int decimalDigit) {
    return NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: decimalDigit,
    ).format(number);
  }

  static String covertToCurrency(dynamic number, int decimalDigit) {
    return NumberFormat.currency(
      locale: 'id',
      symbol: '',
      decimalDigits: decimalDigit,
    ).format(number);
  }
}
