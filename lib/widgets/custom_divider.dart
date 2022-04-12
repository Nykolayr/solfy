import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Кастомный разделитель
class CustomDivider extends StatelessWidget {
  const CustomDivider(this.height);

  final double height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: (height / 2).h),
        Divider(),
        SizedBox(height: (height / 2).h),
      ],
    );
  }
}
