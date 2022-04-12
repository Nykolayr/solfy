import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';

/// Базовый стилизованный инпут
class InputBase extends StatefulWidget {
  InputBase(
    this.textController, {
    this.height,
    this.width = double.infinity,
    this.prefix,
    this.keyboardType,
    this.readOnly = false,
    this.maxLines = 1,
    this.maskFormatter,
    this.suffixIcon,
    this.onSuffixTap,
    this.validation,
    this.errorText,
    this.hintText,
    this.enabled = true,
    this.onTap,
    this.uneditableValue,
    this.focusNode,
    this.onSubmitted,
    this.customFormatter,
    this.multiValidation,
  });

  final TextEditingController textController;
  final double? height;
  final double width;
  final Widget? prefix;
  final TextInputType? keyboardType;
  final bool readOnly;
  final bool enabled;
  final int maxLines;
  final MaskTextInputFormatter? maskFormatter;
  final Icon? suffixIcon;
  final void Function()? onSuffixTap;
  final bool Function(String text)? validation;
  final String? Function(String? text)? multiValidation;
  final String? errorText;
  final String? hintText;
  final String? uneditableValue;
  final void Function()? onTap;
  final void Function(String text)? onSubmitted;
  final FocusNode? focusNode;
  final TextInputFormatter? customFormatter;

  @override
  _InputBaseState createState() => _InputBaseState();
}

class _InputBaseState extends State<InputBase> {
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
    widget.textController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    widget.textController.removeListener(() {
      setState(() {});
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return GestureDetector(
      onTap: widget.uneditableValue == null ? widget.onTap : () => null
      // ModalHelpers.showUneditableValueModal(context)
      ,
      child: Container(
        // height: 44.h,
        width: widget.width,
        child: TextFormField(
          key: _formFieldKey,
          keyboardAppearance: Brightness.light,
          validator: widget.multiValidation != null
              ? widget.multiValidation!
              : widget.validation != null
                  ? (text) => widget.validation!(text!) ? null : widget.errorText
                  : null,
          controller: widget.textController,
          onFieldSubmitted: widget.onSubmitted,
          onTap: () => setState(() => canValidate = true),
          maxLines: widget.maxLines,
          cursorHeight: 20.sp,
          focusNode: widget.focusNode ?? _focusNode,
          cursorColor: theme.colors.buttonPrimary,
          textAlignVertical: TextAlignVertical.center,
          textAlign: TextAlign.left,
          readOnly: widget.uneditableValue != null ? false : widget.readOnly,
          showCursor: true,
          style: widget.uneditableValue != null
              ? theme.textStyles.inputStyle.copyWith(height: lineHeight)
              : theme.textStyles.textInputStyle.copyWith(height: lineHeight),
          decoration: InputDecoration(
            isCollapsed: true,
            // isDense: true,
            errorMaxLines: 3,
            errorStyle: theme.textStyles.errorMessageTextField,
            enabled: widget.uneditableValue != null ? false : widget.enabled,
            prefixIcon: widget.prefix ?? SizedBox(),
            prefixIconConstraints: widget.prefix == null ? BoxConstraints(minWidth: 10.w) : null,
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
              borderSide: BorderSide(color: theme.colors.buttonPrimary, width: 1.0),
              borderRadius: BorderRadius.circular(8.r),
            ),
            fillColor: widget.uneditableValue != null
                ? Colors.white
                : widget.validation == null ||
                        widget.textController.text == "" ||
                        canValidate == false
                    ? theme.colors.inputFillColor
                    : !_formFieldKey.currentState!.hasError
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
