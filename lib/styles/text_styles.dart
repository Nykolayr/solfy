import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

/// Базовый класс стилей текстов приложения
/// [_textStyle] - базовый стиль текста приложения
/// [_colors] - цвета приложения
class AppTextStyles {
  final TextStyle _textStyle;
  final AppColors _colors;

  AppTextStyles(BuildContext context, AppColors appColors)
      : _textStyle = CupertinoTheme.of(context).textTheme.textStyle,
        _colors = appColors;

  /// Текст внутри кнопки
  TextStyle get textInsideButton => this._textStyle.copyWith(
        color: Colors.white,
        fontSize: 16.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        letterSpacing: Platform.isAndroid ? 0.25.w : null,
      );

  /// Текст заголовков
  TextStyle get mainText => this._textStyle.copyWith(
        color: _colors.smsCodeColor,
        fontSize: 20.sp,
        fontFamily: 'Rubik',
        height: 1.4,
        fontWeight: FontWeight.w500,
      );

  /// Текст невыбранных элементов в карусели комфортного платежа
  TextStyle get unselectedPaymentText => this._textStyle.copyWith(
        color: _colors.gray1,
        fontSize: 50.sp,
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w500,
      );

  /// Текст выбранных элементов в карусели комфортного платежа
  TextStyle get selectedPaymentText => this._textStyle.copyWith(
        color: _colors.smsCodeColor,
        fontSize: 50.sp,
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w500,
      );

  /// Подпись к инпуту в карусели комфортного платежа
  TextStyle get captionPaymentText => this._textStyle.copyWith(
        color: _colors.gray1,
        fontSize: 30.sp,
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w500,
      );

  /// Текст валюты на экране баланса
  TextStyle get valueText => this._textStyle.copyWith(
        color: _colors.gray1,
        fontSize: 20.sp,
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w700,
      );

  /// Большой текст заголовков
  TextStyle get mainBigText => this._textStyle.copyWith(
        color: _colors.smsCodeColor,
        fontSize: 28.sp,
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w500,
      );

  /// Текст заголовков в модалках
  TextStyle get mainModalText => this._textStyle.copyWith(
        color: _colors.smsCodeColor,
        fontSize: 20.sp,
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w500,
      );

  /// Текст описания в модалках
  TextStyle get descriptionModalText => this._textStyle.copyWith(
        color: _colors.virtualKeyboardNumbers,
        fontSize: 16.sp,
        fontFamily: "Roboto",
        fontWeight: FontWeight.normal,
        letterSpacing: Platform.isAndroid ? 0.44.w : null,
      );

  /// Текст описания
  TextStyle get descriptionText => this._textStyle.copyWith(
        color: _colors.virtualKeyboardNumbers,
        fontSize: 12.sp,
        fontFamily: "Roboto",
        fontWeight: FontWeight.w400,
        letterSpacing: Platform.isAndroid ? 0.4.w : null,
      );

  /// Текст описания
  TextStyle get descriptionTextClickable => this._textStyle.copyWith(
        color: _colors.buttonPrimary,
        fontSize: 12.sp,
        fontFamily: "Roboto",
        fontWeight: FontWeight.normal,
        letterSpacing: Platform.isAndroid ? 0.4.w : null,
      );

  /// Кликабельный текст в формах
  TextStyle get formTextClickable => this._textStyle.copyWith(
        color: _colors.buttonPrimary,
        fontSize: 16.sp,
        fontFamily: "Roboto",
        fontWeight: FontWeight.normal,
      );

  /// Активный текст под иконками флагов
  TextStyle get flagIconsTextActive => this._textStyle.copyWith(
        color: _colors.buttonPrimary,
        fontSize: 16.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w600,
      );

  /// Неактивный текст под иконками флагов
  TextStyle get flagIconsTextInactive => this._textStyle.copyWith(
        color: Colors.grey,
        fontSize: 16.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w600,
      );

  /// Стиль цифр на виртуальной клавиатуре
  TextStyle get virtualKeyboardText => this._textStyle.copyWith(
        color: _colors.virtualKeyboardNumbers,
        fontSize: 22.sp,
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w600,
      );

  /// Стиль цифр на инпутах смс-кодов
  TextStyle get smsCodeText => this._textStyle.copyWith(
        color: _colors.smsCodeColor,
        fontSize: 22.sp,
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w500,
      );

  /// Стиль префикса в инпутах
  TextStyle get inputStyle => this._textStyle.copyWith(
        color: _colors.virtualKeyboardNumbers,
        fontSize: 16.sp,
        fontFamily: 'Roboto',
        textBaseline: TextBaseline.alphabetic,
        fontWeight: FontWeight.w400,
        letterSpacing: Platform.isAndroid ? 0.2.w : null,
      );

  /// Стиль префикса в инпутах
  TextStyle get textInputStyle => this._textStyle.copyWith(
        color: _colors.smsCodeColor,
        fontSize: 16.sp,
        textBaseline: TextBaseline.alphabetic,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        letterSpacing: Platform.isAndroid ? 0.2.w : null,
      );

  /// Дополнительный стиль
  TextStyle get blackRoboto1 => this._textStyle.copyWith(
        color: _colors.smsCodeColor,
        fontSize: 16.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w700,
        letterSpacing: Platform.isAndroid ? 0.2.w : null,
      );

  /// Дополнительный стиль
  TextStyle get blackRoboto2 => this._textStyle.copyWith(
        color: _colors.smsCodeColor,
        fontSize: 14.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w700,
        letterSpacing: Platform.isAndroid ? 0.2.w : null,
      );

  /// Серый дополнительный стиль
  TextStyle get mediumMainText => this._textStyle.copyWith(
        color: _colors.gray1,
        fontSize: 16.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        letterSpacing: Platform.isAndroid ? 0.15.w : null,
      );

  /// Черный дополнительный стиль
  TextStyle get carouselText => this._textStyle.copyWith(
        color: _colors.smsCodeColor,
        fontSize: 16.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        letterSpacing: Platform.isAndroid ? 0.15.w : null,
      );

  /// Серый дополнительный стиль
  TextStyle get lightCaptionText => this._textStyle.copyWith(
        color: _colors.gray1,
        fontSize: 12.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        letterSpacing: Platform.isAndroid ? 0.2.w : null,
      );

  /// Серый дополнительный стиль
  TextStyle get mediumMainText1 => this._textStyle.copyWith(
        color: _colors.virtualKeyboardNumbers,
        fontSize: 14.sp,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        letterSpacing: Platform.isAndroid ? 0.2.w : null,
      );

  /// Текст заголовков инпутов
  TextStyle get inputHeaderText => this._textStyle.copyWith(
        color: _colors.virtualKeyboardNumbers,
        fontSize: 14.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        letterSpacing: Platform.isAndroid ? 0.2.w : null,
      );

  /// Текст подзаголовков в хедере
  TextStyle get headerSubtitleText => this._textStyle.copyWith(
        color: _colors.smsCodeColor,
        fontSize: 14.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        letterSpacing: Platform.isAndroid ? 0.25.w : null,
      );

  /// Текст заголовков на форме
  TextStyle get formTitleText => this._textStyle.copyWith(
        color: _colors.smsCodeColor,
        fontSize: 16.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        letterSpacing: Platform.isAndroid ? 0.44.w : null,
      );

  /// Текст подзаголовков на форме
  TextStyle get formSubtitleText => this._textStyle.copyWith(
        color: _colors.smsCodeColor,
        fontSize: 12.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        letterSpacing: Platform.isAndroid ? 0.44.w : null,
      );

  /// Текст подсказок под формой
  TextStyle get inputHintText => this._textStyle.copyWith(
        color: _colors.virtualKeyboardNumbers,
        fontSize: 12.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        letterSpacing: Platform.isAndroid ? 0.44.w : null,
      );

  /// Текст вариантов в форме выбора
  TextStyle get chooseFormText => this._textStyle.copyWith(
        color: _colors.smsCodeColor,
        fontSize: 16.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        letterSpacing: Platform.isAndroid ? 0.44.w : null,
      );

  /// Кликабельный текст на странице отправки писем
  TextStyle get clickableLetterSendText => this._textStyle.copyWith(
        color: _colors.buttonPrimary,
        fontSize: 16.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
      );

  /// Кликабельный текст "Забыли код доступа"
  TextStyle get clickableForgotCodeText => this._textStyle.copyWith(
        color: _colors.buttonPrimary,
        fontSize: 16.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        letterSpacing: Platform.isAndroid ? 0.15.w : null,
      );

  /// Текст подсказок под формой
  TextStyle get bottomBarActiveLabelText => this._textStyle.copyWith(
        color: _colors.buttonPrimary,
        fontSize: 12.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        letterSpacing: Platform.isAndroid ? 0.2.w : null,
      );

  /// Текст ошибок под формой
  TextStyle get errorMessageTextField => this._textStyle.copyWith(
        color: _colors.errorInputBorderColor,
        fontSize: 12.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        letterSpacing: Platform.isAndroid ? 0.4.w : null,
      );

  /// Текст подсказок под формой
  TextStyle get bottomBarInactiveLabelText => this._textStyle.copyWith(
        color: _colors.secondaryItemsColor,
        fontSize: 12.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        letterSpacing: Platform.isAndroid ? 0.2.w : null,
      );

  /// Текст подсказок под формой
  TextStyle get profileClickableText => this._textStyle.copyWith(
        color: _colors.secondaryItemsColor,
        fontSize: 14.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        letterSpacing: Platform.isAndroid ? 0.2.w : null,
      );

  /// Текст маркеров на карте
  TextStyle get numberMarkerText => this._textStyle.copyWith(
        color: _colors.virtualKeyboardNumbers,
        fontSize: 14.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        letterSpacing: Platform.isAndroid ? 0.2.w : null,
      );

  /// Текст комфортного платежа под графиком
  TextStyle get comfortablePaymentText => this._textStyle.copyWith(
        color: _colors.buttonPrimary,
        fontSize: 14.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        letterSpacing: Platform.isAndroid ? 0.25.w : null,
      );

  /// Текст подсказок под формой
  TextStyle get creditRangeText => this._textStyle.copyWith(
        color: _colors.secondaryItemsColor,
        fontSize: 12.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        letterSpacing: Platform.isAndroid ? 0.44.w : null,
      );

  /// Текст заголовка с днем в модалке магазина
  TextStyle get shopDayOfTheWeek => this._textStyle.copyWith(
        color: _colors.smsCodeColor,
        fontSize: 12.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        letterSpacing: Platform.isAndroid ? 0.4.w : null,
      );

  /// Текст заголовков в профиле
  TextStyle get profileTitleText => this._textStyle.copyWith(
        color: _colors.virtualKeyboardNumbers,
        fontSize: 14.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        letterSpacing: Platform.isAndroid ? 0.25.w : null,
      );

  /// Текст ответов в faq
  TextStyle get faqAnswerText => this._textStyle.copyWith(
        color: _colors.smsCodeColor,
        fontSize: 14.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        letterSpacing: Platform.isAndroid ? 0.25.w : null,
      );

  /// Текст внутри кнопки на экране "О приложении"
  TextStyle get aboutAppButtonText => this._textStyle.copyWith(
        color: _colors.buttonPrimary,
        fontSize: 14.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
      );

  /// Кликабельный текст на экране "О приложении"
  TextStyle get aboutAppClickableText => this._textStyle.copyWith(
        color: _colors.buttonPrimary,
        fontSize: 14.sp,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        letterSpacing: Platform.isAndroid ? 0.25.w : null,
      );
}
