import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/bloc/pin_code_set_bloc/pin_code_set_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/enums.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/pin_code.dart';
import 'package:solfy_flutter/widgets/virtual_keyboard.dart';

/// Экран с установкой пин-кода
class PinCodeView extends StatefulWidget {
  const PinCodeView({Key? key}) : super(key: key);

  @override
  _PinCodeViewState createState() => _PinCodeViewState();
}

class _PinCodeViewState extends State<PinCodeView> {
  final TextEditingController _textController = TextEditingController();
  final int _pinCodeLength = 4;
  String firstCode = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    void onComplete() {
      context.read<PinCodeSetBloc>().add(PinSet(_textController.text));
    }

    return BlocListener<PinCodeSetBloc, PinCodeSetState>(
      listener: (context, state) {
        if (state is PinSetError) {
          ModalHelpers.showError(context, state.errors);
        }
        if (state is PinSetSuccess) {
          context.read<PinCodeSetBloc>().add(ResolveNextScreen());
        }
        if (state is ShowBiometricModal) {
          ModalHelpers.showBiometricModal(context, state.type).then((value) {
            context.router.replaceAll([WelcomeView()]);
          });
        }
        if (state is ShowWelcomeScreen) {
          context.router.replaceAll([WelcomeView()]);
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(height: 104.h),
                  PinCode(
                    padding: EdgeInsets.symmetric(horizontal: 106.w),
                    type: PinCodeType.Register,
                    textController: _textController,
                    length: _pinCodeLength,
                    message: "come_up_with_access_code".tr(),
                    repeatMessage: "repeat_access_code".tr(),
                    errorMessage: "codes_are_not_the_same".tr(),
                    errorColor: theme.colors.errorInputBorderColor,
                    successMessage: "access_code_set".tr(),
                    successColor: theme.colors.secondaryItemsColor,
                    onComplete: onComplete,
                  ),
                ],
              ),
              Column(
                children: [
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
