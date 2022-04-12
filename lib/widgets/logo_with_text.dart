import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/styles/themes.dart';

class LogoWithText extends StatelessWidget {
  const LogoWithText(this.logo, this.text, this.isFirstActive);

  final Image logo;
  final String text;
  final bool isFirstActive;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(7),
          child: logo,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: isFirstActive ? theme.colors.buttonPrimary : Colors.transparent,
              style: BorderStyle.solid,
            ),
          ),
        ),
        SizedBox(height: 12),
        Text(text,
            style: isFirstActive
                ? theme.textStyles.flagIconsTextActive
                : theme.textStyles.flagIconsTextInactive),
      ],
    );
  }
}
