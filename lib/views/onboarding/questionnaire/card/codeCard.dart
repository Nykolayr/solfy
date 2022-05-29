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
import 'package:solfy_flutter/views/onboarding/questionnaire/card/your_success_card_waiting_view.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
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
  bool isShowTime = false;
  String _error = '';

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
      listener: (context, state) async {
        print('state ==== ${state.runtimeType}');
        if (state is CardLoad) {
          isLoad = true;
        } else {
          // if (isLoad) Navigator.pop(context);
          isLoad = false;
        }
        if (state is CardCodeError) {
          print('state error ${state.errors.errors}');
          switch (state.errors.errors!.first.code) {
            case '023':
              state.errors.errors!.first = state.errors.errors!.first.copyWith(
                message: context.read<CardBloc>().insurance_premium,
              );
              ModalHelpers.showError23(
                context,
                state.errors,
                onErrorSubmit: () {
                  context.router.pop();
                },
              );
              break;
            case '024':
              state.errors.errors!.first = state.errors.errors!.first.copyWith(
                message: tr("error_24"),
              );
              ModalHelpers.showError(
                context,
                state.errors,
                onErrorSubmit: () {
                  context.router.pop();
                },
              );
              break;
            case '025':
              setState(() {
                _errorVisible = true;
                _error = state.errors.errors!.first.title!;
                isShowTime = true;
              });
              break;
            case '026':
              setState(() {
                _errorVisible = true;
                _error = state.errors.errors!.first.title!;
                isShowTime = false;
              });
              break;
            default:
          }
        }
        if (state is CardResError) {
          ModalHelpers.showError(
            context,
            state.errors,
          );
        }
        if (state is CardResendSuccess) {
          print('CardResendSuccess >>>');
          await Future.delayed(Duration(
            milliseconds: 200,
          ));
          // setState(() => _errorVisible = false);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => super.widget));
        }
        if (state is CardCodeSuccess) {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => YourSuccessCardWaitingView()),
          );
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
            child: _errorVisible
                ? Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 134,
                            ),
                            Icon(
                              SolfyIcons.info,
                              size: 48.r,
                              color: theme.colors.errorInputBorderColor,
                            ),
                            const SizedBox(
                              height: 22,
                            ),
                            Text(
                              _error,
                              style: theme.textStyles.smsCodeText,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 72,
                            ),
                            if (isShowTime) GetNewSmsCodeCard(),
                          ],
                        ),
                        if (!isShowTime)
                          LongButtonWithText(
                              text: tr(
                                'back_card',
                              ),
                              onTap: () async {
                                context.router.pop();
                              }),
                      ],
                    ),
                  )
                : Column(
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
                            tr('text_sms', args: [
                              context.read<CardBloc>().insurance_premium
                            ]),
                            style: theme.textStyles.descriptionText,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          PinCodeField(
                            textController: _textController,
                            onCompleted: onComplete,
                            focusNode: _focusNode,
                          ),
                          SizedBox(height: 20),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: tr('enter_code'),
                              style: theme.textStyles.descriptionText,
                              children: [
                                TextSpan(
                                  text: tr('offer'),
                                  style:
                                      theme.textStyles.descriptionTextClickable,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap =
                                        () => ModalHelpers.showAgreementModal(
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
