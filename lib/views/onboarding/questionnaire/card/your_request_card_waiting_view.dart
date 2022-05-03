import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/chat_item.dart';
import 'package:solfy_flutter/widgets/chat_loading_item.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Экран с ожиданием отправки анкеты
class YourRequestCardWaitingView extends StatefulWidget {
  const YourRequestCardWaitingView({Key? key}) : super(key: key);

  @override
  _YourRequestCardWaitingViewState createState() =>
      _YourRequestCardWaitingViewState();
}

class _YourRequestCardWaitingViewState
    extends State<YourRequestCardWaitingView> {
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
  bool isFinalTextVisible = false;
  bool isError = false;
  String errorMessage = '';
  String errorCode = '';

  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      setState(() {
        isFinalTextVisible = true;
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
      body: BlocConsumer<QuestionnaireBloc, QuestionnaireState>(
          listener: (context, state) async {
        if (state is QuestionnaireSentError) {
          setState(() {
            isError = true;
            errorMessage = state.errors.errors![0].message!;
            errorCode = state.errors.errors![0].code!;
          });
          ModalHelpers.showError(context, state.errors);
        }
      }, builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 16.h),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "your_application".tr(),
                      style: theme.textStyles.mainBigText,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
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
                          ChatItem("calculate_amount".tr(),
                              radius: radiusFirst),
                          SizedBox(height: 4.h),
                          Column(
                            children: [
                              ChatItem(tr('insurance_premium_card'),
                                  height: 72,
                                  radius: isFinalTextVisible
                                      ? radiusLast
                                      : radiusMiddle),
                              SizedBox(height: 4.h),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      theme.icons.logoSmallChat,
                      SizedBox(width: 8.w),
                      isFinalTextVisible
                          ? ChatItem(
                              isError
                                  ? errorMessage
                                  : "we_ll_give_you_the_approved_limit_soon"
                                      .tr(),
                              radius: radiusMiddle,
                              height: 200,
                            )
                          : ChatLoadingItem(radius: radiusMiddle),
                    ],
                  ),
                  SizedBox(height: 44.h),
                  isFinalTextVisible
                      ? Column(
                          children: [
                            LongButtonWithText(
                              text: isError
                                  ? tr('understand')
                                  : "perfect_thanks".tr(),
                              onTap: () async {
                                context.router.replaceAll([BaseTabRoute()]);
                              },
                            ),
                            SizedBox(height: 20.h),
                          ],
                        )
                      : SizedBox(),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
