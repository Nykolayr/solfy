import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';

/// Длинная кнопка с текстом
///
/// [text] - текст кнопки
/// [onTap] - действие при нажатии на кнопку
class LongButtonWithText extends StatelessWidget {
  const LongButtonWithText({
    required this.text,
    required this.onTap,
    this.width,
    this.height,
    this.isEnabled = true,
    this.isLoadingMode = false,
    this.fontSize,
  });

  final String text;
  final Function onTap;
  final bool isEnabled;
  final bool isLoadingMode;
  final double? width;
  final double? height;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return GestureDetector(
      onTap: () {
        HapticFeedback.lightImpact();
        if (isEnabled) {
          onTap();
        }
      },
      child: !isLoadingMode
          ? Container(
              width: width != null ? width : 328.w,
              height: height != null ? height : 44.r,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: isEnabled ? theme.colors.buttonPrimary : theme.colors.buttonDisabled,
              ),
              child: Center(
                child: Text(
                  text,
                  style: theme.textStyles.textInsideButton.copyWith(fontSize: fontSize),
                ),
              ),
            )
          : Container(
              width: 328.w,
              height: 44,
              child: LoadingRingAnimation(),
            ),
    );
  }
}
