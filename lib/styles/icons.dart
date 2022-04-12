import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Базовый класс с иконками приложения
class AppIcons {
  /// Маленький логотип приложения
  Image get logoSmall => Image.asset("assets/logo.png", width: 40, height: 40);

  /// Маленький логотип приложения для чата
  Image get logoSmallChat => Image.asset("assets/logo.png", width: 32, height: 32);

  /// Маленький логотип приложения
  Image get welcomeLogo => Image.asset("assets/welcomeLogo.png", width: 56, height: 56);

  /// Маленький логотип приложения
  Image get aboutScreenLogo => Image.asset("assets/AboutScreenLogo.png", width: 149, height: 34);

  /// Карта Solfy
  Image get solfyCard => Image.asset("assets/Bitmap.png", width: 105.63, height: 65.05);

  /// Серый логотип для профиля
  Image get welcomeLogoProfile => Image.asset(
        "assets/welcomeLogo.png",
        width: 56,
        height: 56,
        color: Color(int.parse("0xffE3E5E8")),
      );

  /// Пин ФЛ
  Image get pinFL => Image.asset("assets/modalCard.png", width: 312, height: 220);

  /// Большой логотип приложения
  Image get logoLarge => Image.asset("assets/logo.png", width: 190, height: 190);

  /// Логотип России
  Image get ruLogo => Image.asset("assets/ru.png", width: 48, height: 48);

  /// Логотип Узбекистана
  Image get uzLogo => Image.asset("assets/uz.png", width: 48, height: 48);
}
