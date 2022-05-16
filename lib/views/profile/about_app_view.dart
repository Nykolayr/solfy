import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/api/bank/client_score/clientScoreRequestV2.dart';
import 'package:solfy_flutter/models/enums.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/custom_divider.dart';
import 'package:solfy_flutter/widgets/header_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

/// Экран "О приложении"
class AboutAppView extends StatelessWidget {
  const AboutAppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Scaffold(
      appBar: HeaderAppBar(header: "about_app".tr()),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 36.h),
                      theme.icons.aboutScreenLogo,
                      SizedBox(height: 24.h),
                      Text("Версия 1.4.23b",
                          style: theme.textStyles.inputHeaderText),
                      SizedBox(height: 24.h),
                      Text(
                        "Выбирайте магазины для покупок\nв рассрочку и управляйте\nежемесячными платежами\nв приложении Solfy",
                        style: theme.textStyles.textInputStyle,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 24.h),
                      GestureDetector(
                        onTap: () async {
                          if (await canLaunch("https://solfy.com")) {
                            await launch(
                              "https://solfy.com",
                              forceSafariVC: true,
                            );
                          } else {
                            print('Could not launch "https://solfy.com"');
                          }
                        },
                        child: Container(
                          width: 87.w,
                          height: 34.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: theme.colors.white1,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: Colors.black.withOpacity(0.05),
                              )),
                          child: Text(
                            "solfy.com",
                            style: theme.textStyles.aboutAppButtonText,
                          ),
                        ),
                      ),
                      SizedBox(height: 12.h),
                      CustomDivider(24.h),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Документы",
                          style: theme.textStyles.inputHeaderText,
                        ),
                        SizedBox(height: 16.h),
                        GestureDetector(
                          onTap: () => ModalHelpers.showAgreementModal(
                            context,
                            type: AgreementType.tou,
                          ),
                          child: Text(
                            "Пользовательское соглашение",
                            style: theme.textStyles.aboutAppClickableText,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        GestureDetector(
                          onTap: () => ModalHelpers.showAgreementModal(
                            context,
                            type: AgreementType.cpdp,
                          ),
                          child: Text(
                            "Согласие на обработку персональных данных",
                            style: theme.textStyles.aboutAppClickableText,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // TODO  ответ сервера и выходные данные
                  SizedBox(height: 16.h),
                  Text('Ответ сервера:'),
                  SizedBox(height: 16.h),
                  Column(
                    children: showApi.entries
                        .map(
                          (e) => paer(
                            e.key,
                            e.value,
                          ),
                        )
                        .toList(),
                  ),
                  SizedBox(height: 16.h),
                  Text('Отправляемые данные'),
                  SizedBox(height: 16.h),
                  Column(
                    children: showMap.entries
                        .map(
                          (e) => paer(
                            e.key,
                            e.value,
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget paer(String key, dynamic text) {
    if (text != null && text is Map) {
      return Column(
        children: text.entries
            .map(
              (e) => getpaer(
                e.key,
                e.value,
                false,
              ),
            )
            .toList(),
      );
    } else {
      return getpaer(key, text, true);
    }
  }
}

Widget getpaer(String key, dynamic text, bool main) {
  return Container(
    alignment: Alignment.topLeft,
    padding: EdgeInsets.only(
      top: 8,
      bottom: 8,
      left: main ? 0 : 20,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$key :',
          style: TextStyle(
            color: main ? Colors.green : Colors.brown,
          ),
        ),
        Text(
          '$text',
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ],
    ),
  );
}
