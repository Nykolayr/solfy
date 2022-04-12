import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/styles/themes.dart';

/// Элемент загрузки для чата
class ChatLoadingItem extends StatelessWidget {
  const ChatLoadingItem({this.radius});

  final BorderRadiusGeometry? radius;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Container(
      alignment: Alignment.centerLeft,
      width: 64,
      height: 52,
      child: SpinKitThreeBounce(
        color: theme.colors.gray1,
        size: 20,
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
