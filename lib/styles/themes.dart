import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solfy_flutter/styles/icons.dart';
import 'package:solfy_flutter/styles/text_styles.dart';

import 'colors.dart';

/// Базовый класс темы приложения
/// [context] - [BuildContext] приложения
class AppTheme {
  late final AppColors _colors;
  late final AppTextStyles _textStyles;
  late final AppIcons _appIcons;

  AppTheme(BuildContext context) {
    _colors = AppColors(context);
    _textStyles = AppTextStyles(context, _colors);
    _appIcons = AppIcons();
  }

  /// Текстовый стиль приложения
  AppTextStyles get textStyles => _textStyles;

  /// Иконки приложения
  AppIcons get icons => _appIcons;

  /// Основной шрифт приложения
  String get fontFamily => "Rubik";

  /// Цветовая схема приложения
  AppColors get colors => _colors;
}
