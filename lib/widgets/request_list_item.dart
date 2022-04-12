import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Строка в списке шагов анкеты и меню профиля
///
/// [text] - заголовок
///
/// [isCompleted] - рисовать ли галочку в конце строки
///
/// [isArrowAtEnd] - рисовать ли стрелочку в конце строки
///
/// [defaultIconColor] - цвет иконки
///
/// [onTap] - действие по клику на строку
///
/// [defaultIcon] - иконка в начале строки
///
/// [subTitle] - подзаголовок
///
/// [defaultIconSize] - размер иконки (по дефолту 20)
///
/// [suffix] - виджет в конце строки
///
/// [isCircleAtTextEnd] - кружок в конце заголовка (для неподтвержденного email'а)
class RequestListItem extends StatelessWidget {
  RequestListItem({
    required this.text,
    this.isCompleted = false,
    this.isArrowAtEnd = false,
    this.defaultIconColor,
    this.onTap,
    this.defaultIcon,
    this.subTitle,
    this.defaultIconSize = 20,
    this.suffix,
    this.isCircleAtTextEnd = false,
  });

  final String text;
  final bool isCompleted;
  final bool isArrowAtEnd;
  final bool isCircleAtTextEnd;
  final Color? defaultIconColor;
  final IconData? defaultIcon;
  final double defaultIconSize;
  final String? subTitle;
  final Widget? suffix;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 14.r),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => onTap?.call(),
        child: Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment:
                      subTitle != null ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 20.h,
                      child: isCompleted
                          ? Icon(SolfyIcons.checkmark,
                              size: 16.sp, color: theme.colors.secondaryItemsColor)
                          : Icon(defaultIcon != null ? defaultIcon : SolfyIcons.document,
                              size: defaultIconSize,
                              color:
                                  defaultIconColor != null ? defaultIconColor : theme.colors.gray1),
                    ),
                    SizedBox(width: 16.w),
                    Column(
                      crossAxisAlignment:
                          subTitle != null ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                      mainAxisAlignment:
                          subTitle != null ? MainAxisAlignment.start : MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              text,
                              style: theme.textStyles.descriptionModalText.copyWith(
                                  color: isCompleted
                                      ? theme.colors.secondaryItemsColor
                                      : theme.colors.smsCodeColor),
                            ),
                            isCircleAtTextEnd
                                ? Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 8.w),
                                      Container(
                                        width: 6.r,
                                        height: 6.r,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: theme.colors.buttonPrimary,
                                        ),
                                      ),
                                    ],
                                  )
                                : SizedBox(),
                          ],
                        ),
                        subTitle != null
                            ? Column(
                                children: [
                                  SizedBox(height: 4.h),
                                  Text(subTitle!, style: theme.textStyles.inputHintText),
                                ],
                              )
                            : SizedBox()
                      ],
                    ),
                  ],
                ),
              ),
              (isCompleted || isArrowAtEnd) && suffix == null
                  ? Icon(SolfyIcons.arrow, size: 12.r, color: theme.colors.virtualKeyboardNumbers)
                  : suffix != null
                      ? suffix!
                      : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
