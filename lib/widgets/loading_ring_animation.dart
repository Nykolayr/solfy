import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';

/// Анимация загрузки
class LoadingRingAnimation extends StatelessWidget {
  const LoadingRingAnimation({
    this.lineWidth,
    this.ringSize,
  });

  final double? ringSize;
  final double? lineWidth;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return SpinKitRing(
      color: theme.colors.gray1,
      size: ringSize ?? 24.w,
      lineWidth: lineWidth ?? 2,
    );
  }
}
