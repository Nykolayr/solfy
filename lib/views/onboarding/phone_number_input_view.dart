import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/phone_number_bloc/phone_number_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/api/account/sms_send/sms_send_request.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/input_number.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/virtual_keyboard.dart';

/// Страница с вводом номера мобильного телефона
class PhoneNumberInputView extends StatefulWidget {
  const PhoneNumberInputView({Key? key}) : super(key: key);

  @override
  _PhoneNumberInputViewState createState() => _PhoneNumberInputViewState();
}

class _PhoneNumberInputViewState extends State<PhoneNumberInputView> {
  final TextEditingController _textController = TextEditingController();
  bool _isContinueButtonEnabled = false;
  bool _isLoadingButtonVisible = true;
  final MaskTextInputFormatter _maskFormatter =
      new MaskTextInputFormatter(mask: '## ###-##-##', filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    void _setLoadingButtonVisible() {
      if (mounted) {
        setState(() {
          _isLoadingButtonVisible = true;
        });
      }
    }

    Future<void> _onLoadingButtonTap() async {
      setState(() => _isLoadingButtonVisible = false);
      final request = SmsSendRequest("998" + _maskFormatter.unmaskText(_textController.text));
      context.read<PhoneNumberBloc>().add(SmsSend(request));
      Timer(Duration(seconds: 2), () {
        _setLoadingButtonVisible();
      });
      // final error = await accountStore.sendSms();
      // if (error.isError) {
      //   ModalHelpers.showError(context, error);
      // } else {
      //   if (accountStore.nextRoute == "sms_confirm") {
      //     context.router.push(SmsCodeView());
      //     Timer(Duration(seconds: 2), () {
      //       _setLoadingButtonVisible();
      //     });
      //   } else {
      //     showCustomModalBottomSheet(
      //       context: context,
      //       containerWidget: (_, animation, child) => FloatingModal(
      //         child: child,
      //         onPop: _setLoadingButtonVisible,
      //       ),
      //       builder: (context) => FloatModalNameConfirm(),
      //     );
      //   }
      // }
    }

    return BlocListener<PhoneNumberBloc, PhoneNumberState>(
      listener: (context, state) {
        if (state is SmsSendSuccess) {
          if (state.response.target != null) {
            if (state.response.target == "sms_confirm") {
              context.pushRoute(SmsCodeViewRoute());
            }
          }
        }
        if (state is SmsSendError) {
          ModalHelpers.showError(context, state.errors);
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 12.h),
                    theme.icons.logoSmall,
                    const SizedBox(height: 32),
                    Text(
                      "enter_phone_number".tr(),
                      style: theme.textStyles.mainText,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    InputNumber(_textController),
                  ],
                ),
                Column(
                  children: [
                    _isLoadingButtonVisible
                        ? LongButtonWithText(
                            text: "continue".tr(),
                            onTap: () async {
                              await _onLoadingButtonTap();
                            },
                            isEnabled: _isContinueButtonEnabled,
                          )
                        : const LoadingRingAnimation(),
                    VirtualKeyboard(
                      textController: _textController,
                      maskFormatter: _maskFormatter,
                      isCompletedListener: (completed) {
                        setState(() {
                          _isContinueButtonEnabled = completed;
                        });
                      },
                    ),
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
