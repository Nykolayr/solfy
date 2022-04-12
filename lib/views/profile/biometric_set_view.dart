import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/bloc/biometric_set_bloc/biometric_set_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/enums.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/header_app_bar.dart';
import 'package:solfy_flutter/widgets/pin_code_biometric.dart';
import 'package:solfy_flutter/widgets/virtual_keyboard.dart';

/// Экран с установкой режима авторизации по биометрии
class BiometricSetView extends StatefulWidget {
  const BiometricSetView({Key? key}) : super(key: key);

  @override
  _BiometricSetViewState createState() => _BiometricSetViewState();
}

class _BiometricSetViewState extends State<BiometricSetView> {
  final TextEditingController _textController = TextEditingController();
  final int _pinCodeLength = 4;
  String codeForCheck = "";

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Scaffold(
      appBar: HeaderAppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(height: 44.h),
                PinCodeBiometric(
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
                    context.read<BiometricSetBloc>().add(PinForgot());
                  },
                  child: Text("forgotten_access_code".tr(),
                      style: theme.textStyles.clickableForgotCodeText),
                ),
                VirtualKeyboard(
                  maxLength: _pinCodeLength,
                  textController: _textController,
                  additionalButton: GestureDetector(
                    onTap: () => ModalHelpers.showLogoutModal(context),
                    child: Text(
                      "Выйти",
                      style: theme.textStyles.virtualKeyboardText.copyWith(fontSize: 14.sp),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
