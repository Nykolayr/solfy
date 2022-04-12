import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/styles/themes.dart';

/// Базовый инпут для формы
class FormInputBase extends StatefulWidget {
  FormInputBase(
    this.name, {
    this.controller,
    this.height,
    this.width = double.infinity,
    this.prefix,
    this.keyboardType,
    this.readOnly = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.maskFormatter,
    this.suffixIcon,
    this.onSuffixTap,
    this.errorText,
    this.hintText,
    this.enabled = true,
    this.onTap,
    this.uneditableValue = false,
    this.focusNode,
    this.onSubmitted,
    this.customFormatter,
    this.validators,
    this.initialValue,
  });

  final String name;
  final TextEditingController? controller;
  final double? height;
  final double width;
  final Widget? prefix;
  final TextInputType? keyboardType;
  final bool readOnly;
  final bool enabled;
  final int maxLines;
  final int minLines;
  final MaskTextInputFormatter? maskFormatter;
  final Icon? suffixIcon;
  final void Function()? onSuffixTap;
  final String? errorText;
  final String? hintText;
  final bool uneditableValue;
  final void Function()? onTap;
  final void Function(String text)? onSubmitted;
  final FocusNode? focusNode;
  final TextInputFormatter? customFormatter;
  final List<String? Function(String?)>? validators;
  final String? initialValue;

  @override
  _FormInputBaseState createState() => _FormInputBaseState();
}

class _FormInputBaseState extends State<FormInputBase> {
  final FocusNode _focusNode = FocusNode();
  final _formFieldKey = GlobalKey<FormFieldState>();
  final List<TextInputFormatter> inputFormatters = [];
  bool canValidate = false;
  final double lineHeight = 1.2;

  @override
  void initState() {
    if (widget.maskFormatter != null) {
      inputFormatters.add(widget.maskFormatter!);
    }
    if (widget.customFormatter != null) {
      inputFormatters.add(widget.customFormatter!);
    }
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return GestureDetector(
      onTap: !widget.uneditableValue
          ? widget.onTap
          : () => ModalHelpers.showUneditableValueModal(context),
      child: Container(
        width: widget.width,
        child: FormBuilderTextField(
          name: widget.name,
          key: _formFieldKey,
          controller: widget.controller,
          enabled: widget.uneditableValue ? false : widget.enabled,
          onChanged: (str) => setState(() {}),
          initialValue: widget.initialValue,
          validator: widget.validators != null
              ? FormBuilderValidators.compose(widget.validators!)
              : null,
          keyboardAppearance: Brightness.light,
          onTap: () => setState(() => canValidate = true),
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          focusNode: widget.focusNode ?? _focusNode,
          cursorColor: theme.colors.buttonPrimary,
          textAlignVertical: TextAlignVertical.center,
          textAlign: TextAlign.left,
          readOnly: widget.uneditableValue ? false : widget.readOnly,
          showCursor: true,
          style: widget.uneditableValue
              ? theme.textStyles.inputStyle.copyWith(height: lineHeight)
              : theme.textStyles.textInputStyle.copyWith(height: lineHeight),
          decoration: InputDecoration(
            isCollapsed: true,
            // isDense: true,
            errorMaxLines: 3,
            errorStyle: theme.textStyles.errorMessageTextField,
            enabled: widget.uneditableValue ? false : widget.enabled,
            prefixIcon: widget.prefix ?? SizedBox(),
            prefixIconConstraints:
                widget.prefix == null ? BoxConstraints(minWidth: 10.w) : null,
            // prefix: widget.prefix ?? SizedBox(width: 12.w),
            suffixIcon: widget.suffixIcon != null
                ? IconButton(
                    icon: widget.suffixIcon!,
                    onPressed: () {
                      Future.delayed(Duration.zero, () {
                        _focusNode.unfocus();
                        widget.onSuffixTap?.call();
                      });
                    },
                  )
                : null,
            hintText: widget.hintText,
            hintStyle: theme.textStyles.inputStyle.copyWith(height: lineHeight),
            contentPadding: EdgeInsets.symmetric(vertical: 14.r),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: theme.colors.gray1, width: 0.5),
              borderRadius: BorderRadius.circular(8.r),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1.0),
              borderRadius: BorderRadius.circular(8.r),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: theme.colors.gray1, width: 0.5),
              borderRadius: BorderRadius.circular(8.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: theme.colors.buttonPrimary, width: 1.0),
              borderRadius: BorderRadius.circular(8.r),
            ),
            fillColor: widget.uneditableValue
                ? Colors.white
                : !(_formFieldKey.currentState?.hasError ?? false)
                    ? theme.colors.inputFillColor
                    : _formFieldKey.currentState!.isValid
                        ? theme.colors.inputFillColor
                        : theme.colors.errorInputFillColor,
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1.0),
              borderRadius: BorderRadius.circular(10.r),
            ),
            filled: true,
          ),
          inputFormatters: inputFormatters,
          keyboardType: widget.keyboardType,
          enableInteractiveSelection: true,
        ),
      ),
    );
  }
}
