import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/bloc/sms_code_bloc/sms_code_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/api/account/sms_confirm/sms_confirm_request.dart';
import 'package:solfy_flutter/models/enums.dart';
import 'package:solfy_flutter/repository/account_repository.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/get_new_sms_code.dart';
import 'package:solfy_flutter/widgets/pin_code_field.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';
import 'package:solfy_flutter/widgets/virtual_keyboard.dart';

/// Экран с вводом смс-кода
class SmsCodeView extends StatefulWidget {
  const SmsCodeView();

  @override
  _SmsCodeViewState createState() => _SmsCodeViewState();
}

class _SmsCodeViewState extends State<SmsCodeView> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _errorVisible = false;
  final _phoneFormatter = MaskTextInputFormatter(
    mask: "+### ## ###-##-##",
    filter: {"#": RegExp(r'[0-9]')},
  );

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
    AccountRepository accountRepository = context.read<AccountRepository>();

    Future<void> onComplete() async {
      context.read<SmsCodeBloc>().add(
            ValidateCode(
              SmsConfirmRequest(_textController.text),
            ),
          );
    }

    return BlocListener<SmsCodeBloc, SmsCodeState>(
      listener: (context, state) {
        if (state is ValidationError) {
          _errorVisible = true;
          _textController.text = "";
          _focusNode.requestFocus();
        }
        if (state is SendNewSmsError) {
          ModalHelpers.showError(context, state.errors);
        }
        if (state is ValidationSuccess) {
          if (state.response.target != null) {
            if (state.response.target == 'email_send') {
              context.router.pop();
              context.router.root.push(EmailInputViewRoute());
            }
            if (state.response.target == 'pin_confirm') {
              context.router.root.push(PinCodeLoginViewRoute());
            }
          }
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
                      "enter_sms_caption".tr() +
                          "${_phoneFormatter.maskText(accountRepository.phoneNumber)}",
                      style: theme.textStyles.descriptionText,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 18),
                    PinCodeField(
                      textController: _textController,
                      onCompleted: onComplete,
                      focusNode: _focusNode,
                    ),
                    BlocBuilder<SmsCodeBloc, SmsCodeState>(
                      builder: (context, state) {
                        if (state is ValidationError && _errorVisible) {
                          return Text(
                            state.errors.errors?.first.message ?? "",
                            style: theme.textStyles.descriptionText.copyWith(color: Colors.red),
                            textAlign: TextAlign.center,
                          );
                        }
                        return SizedBox();
                      },
                    )
                  ],
                ),
                Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Вводя код из SMS, я соглашаюсь\nс ',
                        style: theme.textStyles.descriptionText,
                        children: [
                          TextSpan(
                            text: 'Условиями использования\n',
                            style: theme.textStyles.descriptionTextClickable,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => ModalHelpers.showAgreementModal(
                                    context,
                                    type: AgreementType.tou,
                                  ),
                          ),
                          TextSpan(text: 'и выражаю моё '),
                          TextSpan(
                            text: 'согласие на обработку моих\nперсональных данных',
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
                    SizedBox(height: 20.h),
                    GetNewSmsCode(),
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
