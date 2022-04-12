import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/bloc/pin_change_bloc/pin_change_bloc.dart';
import 'package:solfy_flutter/models/enums.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/header_app_bar.dart';
import 'package:solfy_flutter/widgets/pin_code_change.dart';
import 'package:solfy_flutter/widgets/virtual_keyboard.dart';

/// Экран с изменением пин-кода приложения
class ChangePinView extends StatefulWidget {
  const ChangePinView({Key? key}) : super(key: key);

  @override
  _ChangePinViewState createState() => _ChangePinViewState();
}

class _ChangePinViewState extends State<ChangePinView> {
  final TextEditingController _textController = TextEditingController();
  final int _pinCodeLength = 4;
  bool isForgotButtonVisible = true;

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return BlocListener<PinChangeBloc, PinChangeState>(
      listener: (context, state) {
        if (state is CorrectCode) {
          setState(() {
            isForgotButtonVisible = false;
          });
        }
      },
      child: Scaffold(
        appBar: HeaderAppBar(),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(height: 44.h),
                  PinCodeChange(
                    padding: EdgeInsets.symmetric(horizontal: 106.w),
                    type: PinCodeType.Login,
                    textController: _textController,
                    length: _pinCodeLength,
                    message: "enter_exciting_access_code".tr(),
                    errorMessage: "access_code_is_wrong".tr(),
                    errorColor: theme.colors.errorInputBorderColor,
                    successColor: theme.colors.secondaryItemsColor,
                    update: () => setState(() => {}),
                  ),
                ],
              ),
              Column(
                children: [
                  isForgotButtonVisible
                      ? GestureDetector(
                          onTap: () async {
                            context.read<PinChangeBloc>().add(PinForgot());
                          },
                          child: Text("forgotten_access_code".tr(),
                              style: theme.textStyles.clickableForgotCodeText),
                        )
                      : SizedBox(),
                  VirtualKeyboard(
                    maxLength: _pinCodeLength,
                    textController: _textController,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
