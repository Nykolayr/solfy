import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseIconGesturesWrapper extends StatelessWidget {
  const BaseIconGesturesWrapper({required this.child, required this.onTap, this.iconSize = 23});

  final void Function() onTap;
  final Widget child;
  final int iconSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        // HapticFeedback.lightImpact();
        onTap();
      },
      child: Container(
        height: 48.sp,
        width: 48.sp,
        child: child,
      ),
    );
  }
}
