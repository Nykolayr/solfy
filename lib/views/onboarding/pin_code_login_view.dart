import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/bloc/pin_code_login_bloc/pin_code_login_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/enums.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/pin_code_login.dart';
import 'package:solfy_flutter/widgets/virtual_keyboard.dart';

/// Экран с авторизацией по пин-коду
class PinCodeLoginView extends StatefulWidget {
  const PinCodeLoginView({Key? key}) : super(key: key);

  @override
  _PinCodeLoginViewState createState() => _PinCodeLoginViewState();
}

class _PinCodeLoginViewState extends State<PinCodeLoginView> {
  final TextEditingController _textController = TextEditingController();
  final int _pinCodeLength = 4;
  String codeForCheck = "";

  @override
  void initState() {
    context.read<PinCodeLoginBloc>().add(TryBiometricAuth());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(height: 104.h),
                PinCodeLogin(
                  padding: EdgeInsets.symmetric(horizontal: 106.w),
                  type: PinCodeType.Login,
                  textController: _textController,
                  length: _pinCodeLength,
                  message: "enter_access_code".tr(),
                  errorMessage: "access_code_is_wrong".tr(),
                  errorColor: theme.colors.errorInputBorderColor,
                  successColor: theme.colors.secondaryItemsColor,
                  update: () => setState(() => {}),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () async {
                    context.read<PinCodeLoginBloc>().add(PinForgot());
                  },
                  child: Text("forgotten_access_code".tr(),
                      style: theme.textStyles.clickableForgotCodeText),
                ),
                BlocBuilder<PinCodeLoginBloc, PinCodeLoginState>(
                  builder: (context, state) {
                    return VirtualKeyboard(
                      maxLength: _pinCodeLength,
                      textController: _textController,
                      biometricType:
                          state is AvailableBiometricType ? state.type : null,
                      additionalButton: GestureDetector(
                        onTap: () => ModalHelpers.showLogoutModal(context),
                        child: Text(
                          "log_out".tr(),
                          style: theme.textStyles.virtualKeyboardText
                              .copyWith(fontSize: 14.sp),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
