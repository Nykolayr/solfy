import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';

class FloatModalPinFL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 32.h),
          Container(child: theme.icons.pinFL),
          SizedBox(height: 16.h),
          Text(
            "pin_fl".tr(),
            style: theme.textStyles.mainModalText,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            "14 цифр в нижней части паспорта",
            style: theme.textStyles.descriptionModalText,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4.h),
          Text(
            "2 цифры справа в него не входят",
            style: theme.textStyles.descriptionText,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.h),
          LongButtonWithText(
            text: "understand".tr(),
            onTap: () => Navigator.pop(context),
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
