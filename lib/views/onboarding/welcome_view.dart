import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Welcome-screen анкеты
class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Scaffold(
      appBar: AppBar(
        leading: BaseIconGesturesWrapper(
          onTap: () => context.router.replaceAll([BaseTabRoute()]),
          child: Icon(
            SolfyIcons.close,
            color: theme.colors.secondaryItemsColor,
            size: 24.w,
          ),
          iconSize: 24,
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    theme.icons.welcomeLogo,
                    SizedBox(height: 16.h),
                    Text(
                      "welcome_to_solfy".tr(),
                      style: theme.textStyles.mainModalText,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      "order_card_caption".tr(),
                      style: theme.textStyles.descriptionModalText,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              LongButtonWithText(
                text: "continue".tr(),
                onTap: () => context.router.push(QuestionnaireStackRoute()),
              ),
              SizedBox(height: 24.h),
            ],
          )
        ],
      ),
    );
  }
}
