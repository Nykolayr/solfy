import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Виртуальная клавиатура приложения
class VirtualKeyboard extends StatefulWidget {
  VirtualKeyboard({
    required this.textController,
    this.maskFormatter,
    this.isCompletedListener,
    this.maxLength,
    this.additionalButton,
    this.biometricType,
  });

  final TextEditingController textController;
  final MaskTextInputFormatter? maskFormatter;
  final void Function(bool isCompleted)? isCompletedListener;
  final int? maxLength;
  final Widget? additionalButton;
  final BiometricType? biometricType;

  @override
  State<VirtualKeyboard> createState() => _VirtualKeyboardState();
}

class _VirtualKeyboardState extends State<VirtualKeyboard> {
  void _textInputHandler(String textProp) {
    if (widget.maxLength != null) {
      final text = widget.textController.text;
      if (text.length < widget.maxLength!) {
        widget.textController.text = text + textProp;
      }
    } else {
      final text = widget.textController.text;
      final textSelection = widget.textController.selection;
      String newText = "";
      if (text.isNotEmpty &&
          textSelection.start == -1 &&
          textSelection.end == -1) {
        newText = text;
      } else {
        newText = text.replaceRange(
          textSelection.start,
          textSelection.end,
          textProp,
        );
      }
      final formattedText = widget.maskFormatter != null
          ? widget.maskFormatter!.maskText(newText)
          : newText;
      final myTextLength = widget.maskFormatter != null
          ? formattedText.length - text.length
          : textProp.length;
      widget.textController.text = formattedText;
      widget.textController.selection = textSelection.copyWith(
        baseOffset: textSelection.start + myTextLength,
        extentOffset: textSelection.start + myTextLength,
      );
      if (widget.isCompletedListener != null && widget.maskFormatter != null) {
        widget.isCompletedListener?.call(
            formattedText.length == widget.maskFormatter!.getMask()!.length);
      }
    }
  }

  bool _isUtf16Surrogate(int value) {
    return value & 0xF800 == 0xD800;
  }

  void _backspaceHandler() {
    if (widget.maxLength != null) {
      final text = widget.textController.text;
      if (text.length > 0) {
        widget.textController.text = text.substring(0, text.length - 1);
      }
    } else {
      final text = widget.textController.text;
      final textSelection = widget.textController.selection;
      final selectionLength = textSelection.end - textSelection.start;
      // There is a selection.
      if (selectionLength > 0) {
        final newText = text.replaceRange(
          textSelection.start,
          textSelection.end,
          '',
        );
        widget.textController.text = newText;
        widget.textController.selection = textSelection.copyWith(
          baseOffset: textSelection.start,
          extentOffset: textSelection.start,
        );
        return;
      }
      // The cursor is at the beginning.
      if (textSelection.start == 0) {
        return;
      }
      // Delete the previous character
      final previousCodeUnit = text.codeUnitAt(textSelection.start - 1);
      final offset = _isUtf16Surrogate(previousCodeUnit) ? 2 : 1;
      final newStart = textSelection.start - offset;
      final newEnd = textSelection.start;
      final newText = text.replaceRange(
        newStart,
        newEnd,
        '',
      );
      widget.textController.text = newText;
      widget.textController.selection = textSelection.copyWith(
        baseOffset: newStart,
        extentOffset: newStart,
      );
      if (widget.isCompletedListener != null && widget.maskFormatter != null) {
        widget.isCompletedListener?.call(widget.textController.text.length ==
            widget.maskFormatter!.getMask()!.length);
      }
    }
  }

  @override
  void initState() {
    widget.textController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 10.w,
        left: 10.w,
        top: 16.h,
      ),
      child: Column(
        children: [
          buildRowOne(),
          buildRowTwo(),
          buildRowThree(),
          buildRowFourth(),
          SizedBox(height: 16),
        ],
      ),
    );
  }

  Row buildRowOne() {
    return Row(
      children: [
        TextKey(
          text: '1',
          onTextInput: _textInputHandler,
        ),
        TextKey(
          text: '2',
          onTextInput: _textInputHandler,
        ),
        TextKey(
          text: '3',
          onTextInput: _textInputHandler,
        ),
      ],
    );
  }

  Row buildRowTwo() {
    return Row(
      children: [
        TextKey(
          text: '4',
          onTextInput: _textInputHandler,
        ),
        TextKey(
          text: '5',
          onTextInput: _textInputHandler,
        ),
        TextKey(
          text: '6',
          onTextInput: _textInputHandler,
        ),
      ],
    );
  }

  Row buildRowThree() {
    return Row(
      children: [
        TextKey(
          text: '7',
          onTextInput: _textInputHandler,
        ),
        TextKey(
          text: '8',
          onTextInput: _textInputHandler,
        ),
        TextKey(
          text: '9',
          onTextInput: _textInputHandler,
        ),
      ],
    );
  }

  Row buildRowFourth() {
    return Row(
      children: [
        widget.additionalButton != null
            ? AdditionalButton(child: widget.additionalButton!)
            : TextKey(text: ''),
        TextKey(
          text: '0',
          onTextInput: _textInputHandler,
        ),
        BackspaceKey(
          widget.textController,
          onBackspace: _backspaceHandler,
          biometricType: widget.biometricType,
        ),
      ],
    );
  }
}

class TextKey extends StatelessWidget {
  const TextKey({
    required this.text,
    this.onTextInput,
  });

  final String text;
  final ValueSetter<String>? onTextInput;

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Expanded(
      child: GestureDetector(
        onTap: () {
          HapticFeedback.lightImpact();
          onTextInput?.call(text);
        },
        child: Container(
          width: 104.w,
          height: 54.h,
          color: Colors.transparent,
          child: Center(
            child: Text(
              text,
              style: theme.textStyles.virtualKeyboardText,
            ),
          ),
        ),
      ),
    );
  }
}

class AdditionalButton extends StatelessWidget {
  const AdditionalButton({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 104.w,
        height: 54.h,
        color: Colors.transparent,
        child: Center(
          child: child,
        ),
      ),
    );
  }
}

class BackspaceKey extends StatelessWidget {
  BackspaceKey(
    this.textController, {
    this.onBackspace,
    this.flex = 1,
    this.biometricType,
  });

  final VoidCallback? onBackspace;
  final TextEditingController textController;
  final int flex;
  final BiometricType? biometricType;

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Expanded(
      child: GestureDetector(
        onTap: () async {
          HapticFeedback.lightImpact();
          if (biometricType != null && textController.text.length == 0) {
            var localAuth = LocalAuthentication();
            bool didAuthenticate = await localAuth.authenticate(
              localizedReason: 'Пожалуйста, подтвердите вход по биометрии',
              androidAuthStrings: AndroidAuthMessages(
                biometricHint: "",
                biometricRequiredTitle: "Необходима авторизация",
                signInTitle: "Необходима авторизация",
              ),
            );
            if (didAuthenticate) {
              // context.router.replaceAll([BaseTabView()]);
            }
          } else {
            onBackspace?.call();
          }
        },
        child: Container(
          width: 104.w,
          height: 54.h,
          color: Colors.transparent,
          child: Center(
            child: Container(
              width: 24.r,
              height: 24.r,
              alignment:
                  biometricType != null && textController.text.length == 0
                      ? Alignment.center
                      : Alignment.centerLeft,
              child: Icon(
                biometricType != null && textController.text.length == 0
                    ? biometricType == BiometricType.face
                        ? SolfyIcons.face_id
                        : SolfyIcons.touchid
                    : SolfyIcons.delete,
                color: theme.colors.virtualKeyboardNumbers,
                size: 16.r,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
