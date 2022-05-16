import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localstorage/localstorage.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/api/bank/client_search/exchangeinv2.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/chat_item.dart';
import 'package:solfy_flutter/widgets/chat_loading_item.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';

/// Экран с ожиданием получения анкеты с сервера по краткой анкете
class YourRequestWaitingChatView extends StatefulWidget {
  const YourRequestWaitingChatView({Key? key}) : super(key: key);

  @override
  _YourRequestWaitingChatViewState createState() =>
      _YourRequestWaitingChatViewState();
}

class _YourRequestWaitingChatViewState
    extends State<YourRequestWaitingChatView> {
  final radiusFirst = BorderRadius.only(
    bottomLeft: (Radius.circular(8)),
    bottomRight: (Radius.circular(8)),
    topLeft: (Radius.circular(16)),
    topRight: (Radius.circular(16)),
  );
  final radiusMiddle = BorderRadius.only(
    bottomLeft: (Radius.circular(8)),
    bottomRight: (Radius.circular(8)),
    topLeft: (Radius.circular(8)),
    topRight: (Radius.circular(8)),
  );
  final radiusLast = BorderRadius.only(
    bottomLeft: (Radius.circular(16)),
    bottomRight: (Radius.circular(16)),
    topLeft: (Radius.circular(8)),
    topRight: (Radius.circular(8)),
  );
  bool isSecondItemVisible = false;
  bool isThirdItemVisible = false;
  bool isFinalLoadingVisible = false;
  bool isFinalTextVisible = false;
  bool isStartLoadingVisible = true;
  bool isAnyError = false;
  String errorMessage = '';
  String errorCode = '';
  LocalStorage store = LocalStorage("auth");

  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      setState(() {
        isSecondItemVisible = true;
      });
    });
    store.setItem("error", 'error');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();
    return Scaffold(
      appBar: AppBar(
        leading: BaseIconGesturesWrapper(
          onTap: () async {
            LocalData().saveJson("passportSeries", '');
            LocalData().saveJson("passportName", '');
            LocalData().saveJson("pin_fl", '');
            LocalData().saveJson("error", '');
            context.router.pushAndPopUntil(
              BaseTabRoute(),
              predicate: (route) => true,
            );
            // context.router.replaceAll([BaseTabRoute()]);
          },
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
      body: BlocConsumer<QuestionnaireBloc, QuestionnaireState>(
          listener: (context, state) async {
        setState(() {
          isThirdItemVisible = true;
          isStartLoadingVisible = false;
          isFinalLoadingVisible = true;
        });
        await Future.delayed(Duration(seconds: 2));
        if (state is QuestionnaireFoundSuccess) {
          setState(() {
            store.setItem("error", '');
            isFinalTextVisible = true;
          });
          Timer(
              Duration(
                seconds: 3,
              ), () {
            context.router.replaceAll([YourRequestView()]);
          });
        }

        if (state is QuestionnaireFoundError) {
          store.setItem("error", 'error');
          setState(() {
            isFinalTextVisible = true;
            isAnyError = true;
            errorMessage = state.errors.errors![0].message!;
            errorCode = state.errors.errors![0].code!;
          });
          ModalHelpers.showError(context, state.errors).then((value) {
            // Timer(Duration(seconds: 6), () {
            //   //context.router.pop();
            // });
          });
        }
      }, builder: (context, state) {
        return SafeArea(
          maintainBottomViewPadding: true,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: double.infinity,
                  child: Text(
                    "your_application".tr(),
                    style: theme.textStyles.mainBigText,
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(
                    bottom: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          theme.icons.logoSmallChat,
                          SizedBox(width: 8.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ChatItem("checking_data".tr(),
                                  radius: radiusFirst),
                              SizedBox(height: 4.h),
                              isSecondItemVisible
                                  ? Column(
                                      children: [
                                        ChatItem(
                                            "making_a_request_to_the_traffic_police"
                                                .tr(),
                                            radius: radiusMiddle),
                                        SizedBox(height: 4.h),
                                      ],
                                    )
                                  : SizedBox(),
                              isStartLoadingVisible
                                  ? ChatLoadingItem(radius: radiusLast)
                                  : SizedBox(),
                              isThirdItemVisible
                                  ? ChatItem(
                                      "receiving_data_from_the_pension_fund"
                                          .tr(),
                                      radius: radiusLast,
                                      height: 72,
                                    )
                                  : SizedBox(),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h),
                      isFinalLoadingVisible
                          ? Column(children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  theme.icons.logoSmallChat,
                                  SizedBox(width: 8.w),
                                  isFinalTextVisible
                                      ? ChatItem(
                                          !isAnyError
                                              ? "thanks_can_continue".tr()
                                              : errorMessage,
                                          radius: radiusMiddle,
                                        )
                                      : ChatLoadingItem(radius: radiusMiddle),
                                ],
                              ),
                              isAnyError
                                  ? SizedBox(
                                      height: 44,
                                    )
                                  : Container(),
                              isAnyError
                                  ? Padding(
                                      padding: EdgeInsets.only(right: 16),
                                      child: LongButtonWithText(
                                          text: tr('understand'),
                                          onTap: () async {
                                            if (errorCode == '907') {
                                              var store = LocalStorage("auth");
                                              store.setItem("error", 'error');
                                              context.router.replaceAll(
                                                  [ShortFormView()]);
                                            } else if (errorCode == '906') {
                                              LocalData().saveJson(
                                                  "passportSeries", '');
                                              LocalData()
                                                  .saveJson("passportName", '');
                                              LocalData()
                                                  .saveJson("pin_fl", '');
                                              LocalData().saveJson("error", '');
                                              context.router.pushAndPopUntil(
                                                BaseTabRoute(),
                                                predicate: (route) => true,
                                              );
                                              // context.router.replaceAll(
                                              //     [BaseTabRoute()]);
                                            } else {
                                              LocalData().saveJson(
                                                  "passportSeries", '');
                                              LocalData()
                                                  .saveJson("passportName", '');
                                              LocalData()
                                                  .saveJson("pin_fl", '');
                                              LocalData().saveJson("error", '');
                                              context.router.pop();
                                            }
                                          }))
                                  : Container()
                            ])
                          : SizedBox(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
