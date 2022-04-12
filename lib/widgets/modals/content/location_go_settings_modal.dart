import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

class FloatModalLocationGoSettings extends StatelessWidget {
  FloatModalLocationGoSettings();

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
                padding: EdgeInsets.only(top: 1.h, right: 1.w),
                child: Center(
                  child: Icon(
                    SolfyIcons.geo_1,
                    color: Colors.white,
                    size: 19.r,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Text(
            "allow_access_lo_location".tr(),
            style: theme.textStyles.mainModalText,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            "Чтобы видеть магазины\nи предложения рядом с вами\nразрешите доступ в настройках\nустройства:\nПриложения и уведомления\nРазрешения приложений\nМестоположение",
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
            child: Text("dont_allow".tr(), style: theme.textStyles.flagIconsTextActive),
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
