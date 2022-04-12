import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/form_input_base.dart';

/// Элемент формы с заголовками для анкеты
class FormInputWithText extends StatelessWidget {
  const FormInputWithText(
    this.name, {
    this.controller,
    this.headerText = "Заголовок",
    this.width = double.infinity,
    this.height,
    this.keyboardType,
    this.maskFormatter,
    this.suffixIcon,
    this.hintText,
    this.onSuffixTap,
    this.hintUnderFormText,
    this.readOnly = false,
    this.enabled = true,
    this.onTap,
    this.uneditableValue = false,
    this.errorText,
    this.customFormatter,
    this.maxLines,
    this.minLines = 1,
    this.isSuffixInStack = false,
    this.focusNode,
    this.validators,
    this.initialValue,
  });

  final String name;
  final TextEditingController? controller;
  final double width;
  final double? height;
  final String headerText;
  final TextInputType? keyboardType;
  final MaskTextInputFormatter? maskFormatter;
  final TextInputFormatter? customFormatter;
  final Icon? suffixIcon;
  final bool isSuffixInStack;
  final void Function()? onSuffixTap;
  final void Function()? onTap;
  final String? hintText;
  final bool uneditableValue;
  final String? hintUnderFormText;
  final bool readOnly;
  final bool enabled;
  final String? errorText;
  final int? maxLines;
  final int? minLines;
  final FocusNode? focusNode;
  final List<String? Function(String?)>? validators;
  final String? initialValue;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(headerText, style: theme.textStyles.inputHeaderText),
        SizedBox(height: 8.h),
        Stack(
          children: [
            FormInputBase(
              name,
              controller: controller,
              height: height ?? 44.h,
              width: width,
              minLines: minLines!,
              maxLines: maxLines != null
                  ? maxLines!
                  : height != null
                      ? height! ~/ 22
                      : 1,
              keyboardType: keyboardType,
              maskFormatter: maskFormatter,
              hintText: hintText,
              readOnly: readOnly,
              enabled: enabled,
              onTap: onTap,
              suffixIcon: !isSuffixInStack ? suffixIcon : null,
              onSuffixTap: !isSuffixInStack ? onSuffixTap : null,
              uneditableValue: uneditableValue,
              errorText: errorText,
              focusNode: focusNode,
              customFormatter: customFormatter,
              validators: validators,
              initialValue: initialValue,
            ),
            isSuffixInStack
                ? Container(
                    height: 44.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: onSuffixTap,
                          child: Padding(
                            padding: EdgeInsets.only(right: 11.w, bottom: 3.h),
                            child:
                                suffixIcon != null ? suffixIcon! : SizedBox(),
                          ),
                        ),
                      ],
                    ),
                  )
                : SizedBox(),
          ],
        ),
        hintUnderFormText != null
            ? Column(
                children: [
                  SizedBox(height: 8.h),
                  Text(hintUnderFormText!,
                      style: theme.textStyles.inputHintText),
                ],
              )
            : SizedBox()
      ],
    );
  }
}
