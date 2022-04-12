import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:url_launcher/url_launcher.dart';

/// Виджет с отображением контактной информации в модалке магазина
///
/// [icon] - иконка, обязательный параметр
///
/// [text] - текст, обязательный параметр

class ContactInfoItem extends StatelessWidget {
  final IconData icon;
  final String text;

  ContactInfoItem(this.icon, this.text);

  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async {
        if (await canLaunch(text)) {
          await launch(text);
        } else {
          final phone = text.replaceAll(RegExp(r'[ ()\\s-]+'), '');
          if (await canLaunch('tel://$phone)')) {
            await launch('tel://$phone');
          } else {
            print("Could not launch $phone");
          }
        }
      },
      child: Container(
        height: 48,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
            children: [
              Icon(icon, size: 20, color: theme.colors.virtualKeyboardNumbers),
              SizedBox(width: 14.w),
              Text(text, style: theme.textStyles.chooseFormText),
            ],
          ),
        ),
      ),
    );
  }
}
