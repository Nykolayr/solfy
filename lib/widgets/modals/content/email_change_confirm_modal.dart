import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';

class FloatModalEmailResetConfirm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 40.h),
          Text(
            "we_sent_email".tr(),
            style: theme.textStyles.mainModalText,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            "go_to_link_to_confirm_your_email".tr(),
            style: theme.textStyles.descriptionModalText,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12.h),
          LongButtonWithText(
            text: "understand".tr(),
            onTap: () async {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
