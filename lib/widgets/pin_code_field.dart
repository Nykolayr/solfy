import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';

class PinCodeField extends StatelessWidget {
  const PinCodeField({
    required this.textController,
    this.length = 4,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
    this.onCompleted,
    this.focusNode,
  });

  final TextEditingController textController;
  final int length;
  final EdgeInsets padding;
  final void Function()? onCompleted;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Container(
      width: 212.w,
      child: PinCodeTextField(
        focusNode: focusNode,
        appContext: context,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        length: length,
        readOnly: true,
        enablePinAutofill: false,
        obscureText: false,
        autoFocus: true,
        cursorColor: theme.colors.buttonPrimary,
        cursorHeight: 20,
        textStyle: theme.textStyles.smsCodeText,
        animationType: AnimationType.scale,
        pinTheme: PinTheme(
          selectedFillColor: theme.colors.inputFillColor,
          disabledColor: theme.colors.inputFillColor,
          activeColor: theme.colors.gray1,
          selectedColor: theme.colors.buttonPrimary,
          inactiveColor: theme.colors.gray1,
          inactiveFillColor: theme.colors.inputFillColor,
          borderWidth: 1,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(8),
          fieldHeight: 44.r,
          fieldWidth: 38.r,
          activeFillColor: theme.colors.inputFillColor,
        ),
        animationDuration: Duration(milliseconds: 300),
        enableActiveFill: true,
        controller: textController,
        onCompleted: (v) {
          onCompleted?.call();
        },
        onChanged: (value) {},
      ),
    );
  }
}
