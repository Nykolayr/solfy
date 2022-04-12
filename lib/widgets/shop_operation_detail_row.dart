import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:url_launcher/url_launcher.dart';

/// Строка с деталями операции на экране операции в кошельке
///
/// [leftTitle] - тайтл левой части строки
///
/// [rightTitle] - тайтл правой части строки
///
/// [customRightWidget] - кастомный виджет вместо [rightTitle]
///
/// [isSite] - является ли контент [rightTitle] сайтом
class ShopOperationDetailsRow extends StatelessWidget {
  const ShopOperationDetailsRow(
    this.leftTitle,
    this.rightTitle, {
    this.customRightWidget,
    this.isSite = false,
  });

  final String leftTitle;
  final String rightTitle;
  final Widget? customRightWidget;
  final bool isSite;

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Container(
      height: 32.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.h),
              Text(leftTitle, style: theme.textStyles.formSubtitleText),
            ],
          ),
          SizedBox(
            width: 250.w,
            child: Column(
              children: [
                SizedBox(height: 8.h),
                customRightWidget == null
                    ? GestureDetector(
                        onTap: isSite
                            ? () async {
                                if (await canLaunch(rightTitle)) {
                                  await launch(
                                    rightTitle,
                                    forceSafariVC: true,
                                  );
                                } else {
                                  print('Could not launch $rightTitle');
                                }
                              }
                            : null,
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            rightTitle,
                            textAlign: TextAlign.right,
                            style: theme.textStyles.inputHintText.copyWith(
                              color: isSite ? theme.colors.buttonPrimary : null,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      )
                    : customRightWidget!,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
