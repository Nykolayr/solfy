import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Базовый класс цветовой темы приложения
/// [_context] - [BuildContext] приложения, нужен для определения какие цвета предоставлять( для светлой или темной темы)
class AppColors {
  final BuildContext _context;

  AppColors(this._context);

  /// Основной цвет фона - [Colors.white]
  Color get backgroundPrimary {
    return CupertinoDynamicColor.resolve(
      CupertinoDynamicColor.withBrightness(
        color: Colors.white,
        darkColor: Colors.white,
      ),
      _context,
    );
  }

  /// Основной цвет кнопок
  Color get buttonPrimary {
    String hexString = "4E36C4";
    return CupertinoDynamicColor.resolve(
      CupertinoDynamicColor.withBrightness(
        color: Color(int.parse("0xff$hexString")),
        darkColor: Colors.white,
      ),
      _context,
    );
  }

  /// Цвет задизейбленных кнопок
  Color get buttonDisabled {
    String hexString = "B8AFE7";
    return CupertinoDynamicColor.resolve(
      CupertinoDynamicColor.withBrightness(
        color: Color(int.parse("0xff$hexString")),
        darkColor: Colors.white,
      ),
      _context,
    );
  }

  /// Цвет цифр на виртуальной клавиатуре
  Color get virtualKeyboardNumbers {
    String hexString = "818692";
    return CupertinoDynamicColor.resolve(
      CupertinoDynamicColor.withBrightness(
        color: Color(int.parse("0xff$hexString")),
        darkColor: Colors.white,
      ),
      _context,
    );
  }

  /// Цвет заливки инпутов
  Color get inputFillColor {
    String hexString = "F2F3F5";
    return CupertinoDynamicColor.resolve(
      CupertinoDynamicColor.withBrightness(
        color: Color(int.parse("0xff$hexString")),
        darkColor: Colors.white,
      ),
      _context,
    );
  }

  /// Цвет заливки инпутов
  Color get secondaryItemsColor {
    String hexString = "00B798";
    return CupertinoDynamicColor.resolve(
      CupertinoDynamicColor.withBrightness(
        color: Color(int.parse("0xff$hexString")),
        darkColor: Colors.white,
      ),
      _context,
    );
  }

  /// Серый цвет второстепенных элементов
  Color get gray1 {
    String hexString = "ACB0B9";
    return CupertinoDynamicColor.resolve(
      CupertinoDynamicColor.withBrightness(
        color: Color(int.parse("0xff$hexString")),
        darkColor: Colors.white,
      ),
      _context,
    );
  }

  /// Черный цвет текста для инпутов смс-кодов
  Color get smsCodeColor {
    String hexString = "030D25";
    return CupertinoDynamicColor.resolve(
      CupertinoDynamicColor.withBrightness(
        color: Color(int.parse("0xff$hexString")),
        darkColor: Colors.white,
      ),
      _context,
    );
  }

  /// Красный цвет заливки инпутов при ошибке
  Color get errorInputFillColor {
    String hexString = "F6EEEE";
    return CupertinoDynamicColor.resolve(
      CupertinoDynamicColor.withBrightness(
        color: Color(int.parse("0xff$hexString")),
        darkColor: Colors.white,
      ),
      _context,
    );
  }

  /// Красный цвет бордера инпутов при ошибке
  Color get errorInputBorderColor {
    String hexString = "E50505";
    return CupertinoDynamicColor.resolve(
      CupertinoDynamicColor.withBrightness(
        color: Color(int.parse("0xff$hexString")),
        darkColor: Colors.white,
      ),
      _context,
    );
  }

  /// Цвет полоски-индикатора в статусе карты
  Color get gray2 {
    String hexString = "E3E5E8";
    return CupertinoDynamicColor.resolve(
      CupertinoDynamicColor.withBrightness(
        color: Color(int.parse("0xff$hexString")),
        darkColor: Colors.white,
      ),
      _context,
    );
  }

  /// Цвет заливки кнопки на экране "О приложении"
  Color get white1 {
    String hexString = "FAFAFA";
    return CupertinoDynamicColor.resolve(
      CupertinoDynamicColor.withBrightness(
        color: Color(int.parse("0xff$hexString")),
        darkColor: Colors.white,
      ),
      _context,
    );
  }

  /// Цвет заливки сроков кредита
  Color get lightSecondaryItemsColor {
    String hexString = "F0F7F6";
    return CupertinoDynamicColor.resolve(
      CupertinoDynamicColor.withBrightness(
        color: Color(int.parse("0xff$hexString")),
        darkColor: Colors.white,
      ),
      _context,
    );
  }

  /// Цвет подписи к сабтайтлу элемента Персональной информации
  Color get subTitleCaptionColor {
    String hexString = "F29130";
    return CupertinoDynamicColor.resolve(
      CupertinoDynamicColor.withBrightness(
        color: Color(int.parse("0xff$hexString")),
        darkColor: Colors.white,
      ),
      _context,
    );
  }

  /// Цвет открытого магазина
  Color get openStoreColor {
    String hexString = "109A2A";
    return CupertinoDynamicColor.resolve(
      CupertinoDynamicColor.withBrightness(
        color: Color(int.parse("0xff$hexString")),
        darkColor: Colors.white,
      ),
      _context,
    );
  }
}
