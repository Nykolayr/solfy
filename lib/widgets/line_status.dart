import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/card_circle_container.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

class LineStatus extends StatelessWidget {
  const LineStatus(
    this.title,
    this.caption, {
    this.marked = 1,
    this.lines = 0,
    this.checkmark,
    this.time,
    this.bottom = '',
    this.buttonGo,
  });

  final int marked;
  final int lines;
  final int? checkmark;
  final String? time;
  final String title;
  final String caption;
  final String bottom;
  final Function? buttonGo;

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Container(
                width: 220.w,
                height: 3.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.r),
                  color: theme.colors.gray2,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Container(
                width: 220.w / 3 * lines,
                height: 3.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.r),
                  color: theme.colors.secondaryItemsColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 3.h),
              child: Container(
                width: 220.w,
                height: 16.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardCircleContainer(
                      isEnabled: marked > 0,
                      isCheckmark: checkmark != null && checkmark! > 0,
                    ),
                    CardCircleContainer(
                      isEnabled: marked > 1,
                      isCheckmark: checkmark != null && checkmark! > 1,
                    ),
                    CardCircleContainer(
                      isEnabled: marked > 2,
                      isCheckmark: checkmark != null && checkmark! > 2,
                    ),
                    CardCircleContainer(
                      isEnabled: marked > 3,
                      isCheckmark: checkmark != null && checkmark! > 3,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 12.h),
        Text(
          title,
          style: theme.textStyles.blackRoboto1,
        ),
        SizedBox(height: 4.h),
        time != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    SolfyIcons.time,
                    size: 14.r,
                    color: theme.colors.gray1,
                  ),
                  SizedBox(width: 5.h),
                  Text(
                    time!,
                    style: theme.textStyles.profileTitleText,
                  ),
                ],
              )
            : SizedBox(),
        SizedBox(height: 8.h),
        Text(
          caption,
          style: theme.textStyles.mediumMainText1,
          textAlign: TextAlign.center,
        ),
        (buttonGo != null)
            ? Column(
                children: [
                  SizedBox(height: 16.h),
                  LongButtonWithText(
                    text: tr('continue_label'),
                    onTap: buttonGo!,
                    width: 111,
                    fontSize: 14,
                    height: 34,
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    bottom,
                    style: theme.textStyles.lightCaptionText10,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
