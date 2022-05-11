import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/enums.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/views/onboarding/questionnaire/card/bloc/card_bloc.dart';
import 'package:solfy_flutter/views/onboarding/questionnaire/card/get_new_sms_code_card.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/pin_code_field.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';
import 'package:solfy_flutter/widgets/virtual_keyboard.dart';

/// Экран с вводом смс-кода для карты
class SmsCodeCardView extends StatefulWidget {
  const SmsCodeCardView();

  @override
  _SmsCodeCardViewState createState() => _SmsCodeCardViewState();
}

class _SmsCodeCardViewState extends State<SmsCodeCardView> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _errorVisible = false;
  bool isLoad = false;

  void clearError() {
    if (_textController.text.length == 1) {
      setState(() => _errorVisible = false);
    }
  }

  @override
  void initState() {
    _textController.addListener(() {
      clearError();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();
    Future<void> onComplete() async {
      context.read<CardBloc>().add(
            SendNewCodeCard(
              code: _textController.text,
            ),
          );
    }

    return BlocListener<CardBloc, CardState>(
      listener: (context, state) {
        print('state >>>>>>>>>>>>>> $state');

        if (state is CardLoad) {
          isLoad = true;
          ModalHelpers.showLoadingModal(context);
        } else {
          if (isLoad) Navigator.pop(context);
          isLoad = false;
        }
        if (state is CardError) {
          ModalHelpers.showError(context, state.error);
        }
        if (state is CardSuccess) {
          // if (state.response.target != null) {
          //   if (state.response.target == 'email_send') {
          //     context.router.pop();
          //     context.router.root.push(EmailInputViewRoute());
          //   }
          //   if (state.response.target == 'pin_confirm') {
          //     context.router.root.push(PinCodeLoginViewRoute());
          //   }
          // }
        }
      },
      child: Scaffold(
        appBar: AppBar(
          leading: BaseIconGesturesWrapper(
            onTap: () => context.router.pop(),
            child: Icon(
              SolfyIcons.arrow2,
              color: theme.colors.secondaryItemsColor,
              size: 15.4.sp,
            ),
            iconSize: 15,
          ),
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(height: 24.h),
                    Text(
                      "enter_sms_code".tr(),
                      style: theme.textStyles.mainModalText,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      tr('text_sms',
                          args: [context.read<CardBloc>().insurance_premium]),
                      style: theme.textStyles.descriptionText,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    PinCodeField(
                      textController: _textController,
                      onCompleted: onComplete,
                      focusNode: _focusNode,
                    ),
                    // BlocBuilder<CardBloc, CardState>(
                    //   builder: (context, state) {
                    //     if (state is ValidationError && _errorVisible) {
                    //       return Text(
                    //         "тут ошибка",
                    //         style: theme.textStyles.descriptionText
                    //             .copyWith(color: Colors.red),
                    //         textAlign: TextAlign.center,
                    //       );
                    //     }
                    //     return SizedBox();
                    //   },
                    // )
                    SizedBox(height: 20),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: tr('enter_code'),
                        style: theme.textStyles.descriptionText,
                        children: [
                          TextSpan(
                            text: tr('offer'),
                            style: theme.textStyles.descriptionTextClickable,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => ModalHelpers.showAgreementModal(
                                    context,
                                    type: AgreementType.cpdp,
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GetNewSmsCodeCard(),
                    VirtualKeyboard(
                      textController: _textController,
                      maxLength: 4,
                    ),
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
