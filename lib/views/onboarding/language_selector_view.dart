import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/language_selector.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';

/// Экран со сменой языка
class LanguageSelectorView extends StatefulWidget {
  const LanguageSelectorView({Key? key}) : super(key: key);

  @override
  State<LanguageSelectorView> createState() => _LanguageSelectorViewState();
}

class _LanguageSelectorViewState extends State<LanguageSelectorView> {
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    print('console >>> ${context.locale}');
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 12),
                    theme.icons.logoSmall,
                    SizedBox(height: 40),
                    Text(
                      'choosePrefix'.tr(),
                      style: theme.textStyles.smsCodeText,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'chooseMain'.tr(),
                      style: theme.textStyles.smsCodeText,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    LanguageSelector(() => setState(() {})),
                    SizedBox(height: 50),
                    LongButtonWithText(
                      text: "continue".tr(),
                      onTap: () =>
                          context.router.replaceAll([PhoneNumberRoute()]),
                    ),
                    SizedBox(height: 12.h),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
