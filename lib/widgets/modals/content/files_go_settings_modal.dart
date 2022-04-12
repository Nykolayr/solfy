import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

class FloatModalFilesGoSettings extends StatelessWidget {
  FloatModalFilesGoSettings();

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 30.h),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 48.r,
                height: 48.r,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 24.r,
                    color: theme.colors.secondaryItemsColor,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5.w),
                child: Center(
                  child: Icon(
                    SolfyIcons.folder,
                    color: Colors.white,
                    size: 20.r,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Text(
            "Разрешите доступ",
            style: theme.textStyles.mainModalText,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            "Чтобы вы могли добавлять файла\nк письму перейдите в настройках\nустройства:\n\nПриложения и уведомления →\nРазрешения приложений → Память",
            style: theme.textStyles.inputStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.h),
          LongButtonWithText(
            text: "settings".tr(),
            onTap: () async {
              await Geolocator.openLocationSettings();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 16.h),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Text("later".tr(), style: theme.textStyles.flagIconsTextActive),
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
