import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';

class FloatModalText extends StatefulWidget {
  final String text;
  FloatModalText(this.text);
  @override
  State<FloatModalText> createState() => _FloatModalTextState();
}

class _FloatModalTextState extends State<FloatModalText> {
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
            widget.text,
            style: theme.textStyles.descriptionModalText,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12.h),
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
