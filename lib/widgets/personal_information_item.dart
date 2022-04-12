import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Элемент на экране "Персональная информация"
class PersonalInformationItem extends StatelessWidget {
  const PersonalInformationItem({
    this.title,
    this.secondTitle,
    this.subTitleColor,
    this.subTitle,
    this.subTitleCaption,
    this.editIcon = false,
    this.isHidden = false,
    this.onEditIconTap,
  });

  final String? title;
  final String? subTitle;
  final String? secondTitle;
  final Color? subTitleColor;
  final String? subTitleCaption;
  final bool editIcon;
  final bool isHidden;
  final void Function()? onEditIconTap;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return isHidden
        ? SizedBox()
        : Padding(
            padding: EdgeInsets.symmetric(vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title ?? "",
                          overflow: TextOverflow.ellipsis,
                          style: theme.textStyles.textInputStyle,
                        ),
                        secondTitle != null
                            ? Row(
                                children: [
                                  SizedBox(width: 6.w),
                                  Text(
                                    secondTitle ?? "",
                                    style: theme.textStyles.inputStyle,
                                  ),
                                ],
                              )
                            : SizedBox(),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        Text(
                          subTitle ?? "",
                          style: theme.textStyles.inputHintText.copyWith(color: subTitleColor),
                        ),
                        subTitleCaption != null
                            ? Row(
                                children: [
                                  Text(
                                    " · ",
                                    style: theme.textStyles.inputHintText,
                                  ),
                                  Text(
                                    subTitleCaption!,
                                    style: theme.textStyles.inputHintText.copyWith(
                                      color: theme.colors.subTitleCaptionColor,
                                    ),
                                  ),
                                ],
                              )
                            : SizedBox(),
                      ],
                    ),
                  ],
                ),
                editIcon
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: onEditIconTap,
                            child: Container(
                              width: 40,
                              height: 40,
                              child: Icon(
                                SolfyIcons.pen,
                                color: theme.colors.secondaryItemsColor,
                                size: 18.r,
                              ),
                            ),
                          ),
                        ],
                      )
                    : SizedBox(),
              ],
            ),
          );
  }
}
