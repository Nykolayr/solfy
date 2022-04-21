import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localstorage/localstorage.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/feed_bloc/feed_bloc.dart';
import 'package:solfy_flutter/bloc/feeds_bloc/feeds_bloc.dart';
import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/views/feed/feeds_view.dart';
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
  String? errorMessage;
  String? errorCode;
  bool isTimeOut = true;
  int timeOut = 30; // secund
  late FeedsBloc block2;
  @override
  void initState() {
    var store = LocalStorage("auth");
    Timer(Duration(milliseconds: 1000), () {
      setState(() {
        isSecondItemVisible = true;
      });
      store.setItem("error", 'error');
      Timer(Duration(seconds: timeOut), () {
        setState(() {
          print('console >>>> timeout == $isTimeOut');
          if (isTimeOut) {
            isFinalTextVisible = true;
            isAnyError = true;
            errorMessage =
                'К сожалению, мы не смогли получить информацию о вас. Пожалуйста, попробуйте снова через несколько минут.';
            errorCode = '907';
          }
        });
      });
      Timer(Duration(milliseconds: 1100), () {
        setState(() {
          isThirdItemVisible = true;
          isStartLoadingVisible = false;
          isFinalLoadingVisible = true;
        });
        final bloc = context.read<QuestionnaireBloc>();
        if (bloc.state is QuestionnaireFoundSuccess) {
          Timer(Duration(milliseconds: 1300), () {
            setState(() {
              store.setItem("error", '');
              isFinalTextVisible = true;
              isTimeOut = false;
            });
            Timer(
                Duration(
                  milliseconds: 1500,
                ), () {
              context.router.replaceAll([YourRequestView()]);
            });
          });
        } else {
          if (bloc.state is QuestionnaireFoundError) {
            store.setItem("error", 'error');
            Timer(Duration(seconds: 2), () {
              setState(() {
                isFinalTextVisible = true;
                isAnyError = true;
                errorMessage = (bloc.state as QuestionnaireFoundError)
                    .errors
                    .errors![0]
                    .message;
                errorCode = (bloc.state as QuestionnaireFoundError)
                    .errors
                    .errors![0]
                    .code;
                isTimeOut = false;
              });
            });

            ModalHelpers.showError(
                    context, (bloc.state as QuestionnaireFoundError).errors)
                .then((value) {
              Timer(Duration(seconds: 6), () {
                //context.router.pop();
              });
            });
          }
        }
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();
    return Scaffold(
      appBar: AppBar(
        leading: BaseIconGesturesWrapper(
          onTap: () async {
            LocalStorage store = await LocalStorage("auth");
            store.setItem("passportSeries", '');
            store.setItem("passportName", '');
            store.setItem("pin_fl", '');
            store.setItem("error", '');
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
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SizedBox(
            height: 700,
            child: ListView(
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height - 90,
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
                        Column(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        theme.icons.logoSmallChat,
                                        SizedBox(width: 8.w),
                                        isFinalTextVisible
                                            ? ChatItem(
                                                !isAnyError
                                                    ? "thanks_can_continue".tr()
                                                    : errorMessage!,
                                                radius: radiusMiddle,
                                              )
                                            : ChatLoadingItem(
                                                radius: radiusMiddle),
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
                                                text: "Понятно",
                                                onTap: () async {
                                                  if (!isTimeOut) {
                                                    final bloc = context.read<
                                                        QuestionnaireBloc>();
                                                    errorCode = (bloc.state
                                                            as QuestionnaireFoundError)
                                                        .errors
                                                        .errors![0]
                                                        .code;
                                                  }
                                                  if (errorCode == '907') {
                                                    context.router.replaceAll(
                                                        [ShortFormView()]);
                                                  } else if (errorCode ==
                                                      '906') {
                                                    LocalStorage store =
                                                        await LocalStorage(
                                                            "auth");
                                                    store.setItem(
                                                        "passportSeries", '');
                                                    store.setItem(
                                                        "passportName", '');
                                                    store.setItem("pin_fl", '');
                                                    store.setItem("error", '');
                                                    context.router
                                                        .pushAndPopUntil(
                                                      BaseTabRoute(),
                                                      predicate: (route) =>
                                                          true,
                                                    );
                                                    // context.router.replaceAll(
                                                    //     [BaseTabRoute()]);
                                                  } else {
                                                    LocalStorage store =
                                                        await LocalStorage(
                                                            "auth");
                                                    store.setItem(
                                                        "passportSeries", '');
                                                    store.setItem(
                                                        "passportName", '');
                                                    store.setItem("pin_fl", '');
                                                    store.setItem("error", '');
                                                    context.router.pop();
                                                  }
                                                }))
                                        : Container()
                                  ])
                                : SizedBox(),
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}
