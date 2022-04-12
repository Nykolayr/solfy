import 'package:flutter/material.dart';

/// Утилиты для работы с цветом бренда, прилетающим с сервера
class ColorUtils {
  /// Получить цвет [Color] из hex строки
  static Color getColorFromHex(String hex) => Color(int.parse("0xff$hex"));

  /// Проверяет, цвет относится к светлым тонам или к темным
  static bool isLighten(Color color) {
    final grayScale = (0.299 * color.red) + (0.587 * color.green) + (0.114 * color.blue);
    return grayScale > 90;
  }
}
