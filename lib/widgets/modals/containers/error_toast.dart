import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

class ErrorToast extends StatelessWidget {
  const ErrorToast(this.title, {this.extraBottomPadding = 0});

  final String title;
  final double extraBottomPadding;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Padding(
      padding: EdgeInsets.only(
          bottom: 20.h + extraBottomPadding + MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        width: 344.w,
        height: 68,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              spreadRadius: 0,
              blurRadius: 8,
              offset: Offset(0, 8),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(width: 14.w),
            Icon(
              SolfyIcons.info_thick,
              color: theme.colors.errorInputBorderColor,
              size: 20.r,
            ),
            SizedBox(width: 12.w),
            Container(
              width: 292.w,
              child: Text(
                title,
                style: theme.textStyles.descriptionModalText.copyWith(
                  color: theme.colors.errorInputBorderColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
