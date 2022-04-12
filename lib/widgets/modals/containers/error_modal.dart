import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Контент модалки с ошибкой
class ErrorModal extends StatelessWidget {
  ErrorModal({
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
              message != null ? message! : "Ой! Что-то пошло не так,\nпопробуйте еще раз",
              style: theme.textStyles.mainModalText,
              textAlign: TextAlign.center,
            ),
            subTitle != null
                ? Column(
                    children: [
                      SizedBox(height: 8.h),
                      Text(
                        subTitle!,
                        style: theme.textStyles.descriptionModalText,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
                : SizedBox(),
            SizedBox(height: 20.h),
            LongButtonWithText(
              text: "Хорошо",
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
