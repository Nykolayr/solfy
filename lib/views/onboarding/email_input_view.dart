import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/bloc/email_bloc/email_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/input_base.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';
import 'package:validators/validators.dart';

/// Экран с установкой email'а
class EmailInputView extends StatefulWidget {
  const EmailInputView({Key? key}) : super(key: key);

  @override
  _EmailInputViewState createState() => _EmailInputViewState();
}

class _EmailInputViewState extends State<EmailInputView> {
  final TextEditingController _textController = TextEditingController();
  final _formGlobalKey = GlobalKey<FormState>();
  bool _isValidationModeEnabled = false;
  bool _isLoadingModeEnabled = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    Future<void> _onLoadingButtonTap() async {
      final isValid = (_formGlobalKey.currentState?.validate() ?? false);
      if (isValid) {
        setState(() {
          _isLoadingModeEnabled = true;
        });
        context.read<EmailBloc>().add(SaveEmail(_textController.text));
      } else {
        setState(() {
          _isValidationModeEnabled = true;
        });
      }
    }

    return BlocListener<EmailBloc, EmailState>(
      listener: (context, state) {
        if (state is EmailSavedSuccess) {
          ModalHelpers.showEmailSendSuccessModal(context).then((value) {
            context.router.replaceAll([PinCodeViewRoute()]);
          });
        }
        if (state is EmailSavedError) {
          ModalHelpers.showError(context, state.errors).then((value) {
            setState(() {
              _isLoadingModeEnabled = false;
            });
          });
        }
      },
      child: Scaffold(
        appBar: AppBar(
          leading: BaseIconGesturesWrapper(
            onTap: () => context.router.replaceAll([MyHomeRoute()]),
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
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => FocusScope.of(context).unfocus(),
          child: FooterLayout(
            footer: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom == 0 ? 32.h : 16.h,
                right: 16,
                left: 16,
                top: 16,
              ),
              child: LongButtonWithText(
                text: "continue".tr(),
                isLoadingMode: _isLoadingModeEnabled,
                onTap: () async {
                  await _onLoadingButtonTap();
                },
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 24.h),
                    Text(
                      "enter_your_email".tr(),
                      style: theme.textStyles.mainModalText,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      "email_usage".tr(),
                      style: theme.textStyles.mediumMainText1,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Form(
                      key: _formGlobalKey,
                      autovalidateMode: _isValidationModeEnabled
                          ? AutovalidateMode.onUserInteraction
                          : AutovalidateMode.disabled,
                      child: InputBase(
                        _textController,
                        keyboardType: TextInputType.emailAddress,
                        errorText: "Заполните адрес в формате: your@email.com",
                        validation: (String? text) {
                          final isValid = isEmail(text!);
                          return isValid;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
