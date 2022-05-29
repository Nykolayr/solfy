import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
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
class YourSuccessCardWaitingView extends StatefulWidget {
  @override
  _YourSuccessCardWaitingViewState createState() =>
      _YourSuccessCardWaitingViewState();
}

class _YourSuccessCardWaitingViewState
    extends State<YourSuccessCardWaitingView> {
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
      // setState(() {
      //   isFinalTextVisible = true;
      // });
    });
    Timer(Duration(seconds: 4), () {
      /// отсылаем для окончательного закрытия анкеты
      context.read<QuestionnaireBloc>().add(ClientScore('update'));
      // context.router.root.push(
      //   QuestionnaireStackRoute(
      //     children: [ChoosingFilialRoute()],
      //   ),
      // );
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
      body: BlocListener<QuestionnaireBloc, QuestionnaireState>(
        listener: (context, state) async {
          if (state is QuestionnaireSentSuccess) {
            setState(() {
              isFinalTextVisible = true;
            });
          }
          if (state is QuestionnaireSentError) {
            ModalHelpers.showError(context, state.errors).then((value) {
              setState(() {
                isError = true;
              });
            });
          }
        },
        child: SafeArea(
          child: Padding(
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
                            ChatItem("thanks".tr(), radius: radiusFirst),
                            SizedBox(height: 4.h),
                            isFinalTextVisible
                                ? Column(
                                    children: [
                                      ChatItem(
                                          tr(
                                            'payment_insurance_premium',
                                          ),
                                          height: 72,
                                          radius: isFinalTextVisible
                                              ? radiusLast
                                              : radiusMiddle),
                                      SizedBox(height: 4.h),
                                    ],
                                  )
                                : const SizedBox.shrink(),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 44.h),
                    isFinalTextVisible
                        ? Column(
                            children: [
                              LongButtonWithText(
                                text: isError
                                    ? tr('understand')
                                    : tr('perfect_thanks'),
                                onTap: () async {
                                  if (isError) {
                                    context.router.pop();
                                    context.router.pop();
                                  } else {
                                    context.router.replaceAll([BaseTabRoute()]);
                                  }
                                },
                              ),
                              SizedBox(height: 12.h),
                            ],
                          )
                        : SizedBox(),
                    SizedBox(height: 12.h),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
