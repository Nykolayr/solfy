import 'package:easy_localization/easy_localization.dart';

/// Кастомные валидаторы
class CustomValidators {
  static String? checkIsValidDate(String? text) {
    try {
      final dateTime = DateFormat("dd.MM.yyyy").parseLoose(text ?? "");
      if (dateTime.year < 1900 || dateTime.year > 2030) {
        return "Введите валидную дату";
      }
    } catch (e) {
      print(e);
      return "Введите валидную дату";
    }
  }

  static String? checkIsBeforeCurrentDate(String? date) {
    try {
      final dateTime = DateFormat("dd.MM.yyyy").parseLoose(date ?? "");
      if (dateTime.isBefore(DateTime.now()))
        return "Срок окончания не может быть раньше текущей даты";
    } catch (e) {
      return "Введите валидную дату";
    }
  }
}
