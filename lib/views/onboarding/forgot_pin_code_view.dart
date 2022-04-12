import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Экран сброса пин-кода
class ForgotPinCodeView extends StatelessWidget {
  const ForgotPinCodeView(this.message);

  final String message;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Scaffold(
      appBar: AppBar(
        leading: BaseIconGesturesWrapper(
          onTap: () => Navigator.pop(context),
          child: Icon(
            SolfyIcons.arrow2,
            color: theme.colors.secondaryItemsColor,
            size: 15.4.sp,
          ),
          iconSize: 15,
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 32.h),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 56.r,
                        height: 56.r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          border: Border.all(
                            width: 28.r,
                            color: theme.colors.secondaryItemsColor,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Icon(SolfyIcons.mail, size: 16.r, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    message,
                    style: theme.textStyles.smsCodeText,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    "Если у вас нет доступа к этой электронной\nпочте, то восстановить доступ к Solfy вы\nможете в филиале банка или позвонив в\nконтакт-центр",
                    style: theme.textStyles.inputStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Позвонить в службу поддержки",
                    style: theme.textStyles.clickableForgotCodeText,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 24.h),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
