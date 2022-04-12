import 'package:flutter_multi_formatter/formatters/money_input_enums.dart';
import 'package:flutter_multi_formatter/formatters/money_input_formatter.dart';

/// Форматирование валют
class MoneyFormatter {
  static String format(int amount) {
    return toCurrencyString(
      amount.toString(),
      thousandSeparator: ThousandSeparator.SpaceAndCommaMantissa,
    );
  }

  static String shortFormat(int amount) {
    final formattedString = toCurrencyString(
      amount.toString(),
      shorteningPolicy: ShorteningPolicy.RoundToMillions,
      thousandSeparator: ThousandSeparator.SpaceAndCommaMantissa,
    );
    return formattedString.replaceAll("M", " млн");
  }
}
