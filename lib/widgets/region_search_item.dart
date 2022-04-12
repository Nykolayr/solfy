import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Элемент региона в поиске регионов
///
/// [name] - название региона
///
/// [caption] - подзаголовок
///
/// [customIcon] - иконка в начале строки
///
/// [isSelected] - выбран ли элемент (галочка в конце строки)
class RegionSearchItem extends StatelessWidget {
  const RegionSearchItem({
    required this.name,
    this.caption,
    this.customIcon,
    this.isSelected = false,
  });

  final String name;
  final String? caption;
  final IconData? customIcon;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              customIcon != null ? customIcon : SolfyIcons.geolocation,
              color: theme.colors.virtualKeyboardNumbers,
              size: 20.r,
            ),
            SizedBox(width: 12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: theme.textStyles.chooseFormText,
                ),
                caption != null
                    ? Column(
                        children: [
                          SizedBox(height: 4),
                          Text(
                            caption!,
                            style: theme.textStyles.descriptionText,
                          ),
                        ],
                      )
                    : SizedBox(),
              ],
            )
          ],
        ),
        isSelected
            ? Row(
                children: [
                  Icon(SolfyIcons.checkmark, size: 16, color: theme.colors.secondaryItemsColor),
                  SizedBox(width: 8.w),
                ],
              )
            : SizedBox(),
      ],
    );
  }
}
