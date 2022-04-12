import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

class FloatModalUneditableValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 40.h),
            Icon(SolfyIcons.info_thick, color: Colors.red, size: 48.r),
            SizedBox(height: 16.h),
            Text(
              "this_data_is_not_editable".tr(),
              style: theme.textStyles.mainText,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              "this_data_is_not_editable_caption".tr(),
              style: theme.textStyles.descriptionModalText,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            LongButtonWithText(
              text: "understand".tr(),
              onTap: () => Navigator.pop(context),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
