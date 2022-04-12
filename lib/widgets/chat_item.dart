import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';

/// Элемент чата
class ChatItem extends StatelessWidget {
  const ChatItem(this.text, {this.radius, this.width, this.height});

  final String text;
  final BorderRadiusGeometry? radius;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Container(
      alignment: Alignment.centerLeft,
      width: width ?? 274.w,
      //height: height ?? 100,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          text,
          style: theme.textStyles.textInputStyle,
          textAlign: TextAlign.left,
        ),
      ),
      decoration: BoxDecoration(
        color: theme.colors.inputFillColor,
        borderRadius: radius,
        border: Border.all(
          color: theme.colors.inputFillColor,
          style: BorderStyle.solid,
        ),
      ),
    );
  }
}
