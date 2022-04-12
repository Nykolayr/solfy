import 'package:flutter/material.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/services/database/user_settings_db_service.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

class FloatModalTouchId extends StatelessWidget {
  FloatModalTouchId(this.type);

  final BiometricType type;
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
                width: 48,
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 24,
                    color: theme.colors.secondaryItemsColor,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              Icon(
                type == BiometricType.face ? SolfyIcons.face_id : SolfyIcons.touchid,
                color: Colors.white,
                size: 24,
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Text(
            type == BiometricType.face
                ? "allow_to_sign_in_with_face_id".tr()
                : "allow_to_sign_in_with_fingerprint".tr(),
            style: theme.textStyles.mainModalText,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12.h),
          LongButtonWithText(
            text: "allow".tr(),
            onTap: () async {
              var localAuth = LocalAuthentication();
              bool didAuthenticate = await localAuth.authenticate(
                localizedReason: 'Пожалуйста, подтвердите вход по биометрии',
                androidAuthStrings: AndroidAuthMessages(
                  biometricHint: "",
                  biometricRequiredTitle: "Необходима авторизация",
                  signInTitle: "Необходима авторизация",
                ),
              );
              await UserSettingsDbService.saveBiometric(didAuthenticate);
              print(didAuthenticate);
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 16),
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
