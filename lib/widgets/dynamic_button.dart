import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';

/// Длинная кнопка с текстом
///
/// [text] - текст кнопки
/// [onTap] - действие при нажатии на кнопку
class DynamicButton extends StatelessWidget {
  const DynamicButton({
    required this.text,
    required this.onTap,
    this.width,
    this.isEnabled = true,
  });

  final String text;
  final Function onTap;
  final bool isEnabled;
  final double? width;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return GestureDetector(
        onTap: () => onTap(),
        child: Container(
          width: width != null ? width : 41.w,
          height: 34.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: Colors.black.withOpacity(0.05),
            ),
            color: isEnabled ? theme.colors.buttonPrimary : theme.colors.white1,
          ),
          child: Center(
            child: Text(
              text,
              style: isEnabled
                  ? theme.textStyles.textInsideButton.copyWith(fontSize: 14.sp)
                  : theme.textStyles.aboutAppButtonText,
            ),
          ),
        ));
  }
}
