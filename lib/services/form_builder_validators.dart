import 'package:flutter/material.dart';

class FormBuilderValidatorsUser {
  static FormFieldValidator<String> validCard(BuildContext context,
      {required String errorText}) {
    return (valueCandidate) {
      return (valueCandidate![0] != '9' && valueCandidate[0] != '8')
          ? errorText
          : null;
    };
  }

  static FormFieldValidator<String> validPeriod(BuildContext context,
      {required String errorText}) {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day);

    return (valueCandidate) {
      if (valueCandidate!.length < 5) return null;
      String month = valueCandidate.split('/')[0];
      String year = '20' + valueCandidate.split('/')[1];
      return ((int.parse(year) < date.year) ||
              (int.parse(year) == date.year && int.parse(month) < date.month))
          ? errorText
          : null;
    };
  }

  static FormFieldValidator<String> trueMonth(BuildContext context,
      {required String errorText}) {
    return (valueCandidate) {
      String month = valueCandidate!.split('/')[0];
      return (int.parse(month) > 12) ? errorText : null;
    };
  }
}
