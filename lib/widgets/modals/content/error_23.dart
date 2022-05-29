import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

class FloatModalError23 extends StatelessWidget {
  FloatModalError23({
    this.message,
    this.subTitle,
    this.onErrorSubmit,
  });

  final String? message;
  final String? subTitle;
  final void Function()? onErrorSubmit;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 40.h),
            Icon(
              SolfyIcons.info_thick,
              color: theme.colors.errorInputBorderColor,
              size: 44.r,
            ),
            SizedBox(height: 18.h),
            Text(
              tr('not_pay'),
              style: theme.textStyles.mainModalText,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 18.h),
            Text(
              tr('summa_pay'),
              style: theme.textStyles.descriptionModalText,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 2.h),
            Text(
              subTitle!,
              style: theme.textStyles.descriptionModalText.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colors.smsCodeColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 18.h),
            RichText(
              text: TextSpan(
                text: tr('error_23_part1'),
                style: theme.textStyles.descriptionModalText,
                children: <TextSpan>[
                  TextSpan(
                    text: subTitle!,
                    style: theme.textStyles.descriptionModalText.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colors.smsCodeColor,
                    ),
                  ),
                  TextSpan(
                    text: tr('error_23_part2'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            LongButtonWithText(
              text: tr('understand'),
              onTap: () async {
                Navigator.pop(context);
                onErrorSubmit?.call();
              },
            ),
            SizedBox(height: 14.h),
          ],
        ),
      ),
    );
  }
}
