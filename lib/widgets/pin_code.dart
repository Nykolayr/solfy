import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/models/enums.dart';
import 'package:solfy_flutter/styles/themes.dart';

/// Виджет пин-кода
class PinCode extends StatefulWidget {
  PinCode({
    required this.type,
    required this.length,
    required this.textController,
    this.radius,
    this.padding = const EdgeInsets.symmetric(horizontal: 106),
    this.onComplete,
    this.onFirstEnter,
    this.updateMessage,
    this.onSecondEnter,
    required this.message,
    this.repeatMessage,
    required this.errorMessage,
    required this.errorColor,
    this.successMessage,
    this.isValidCode,
    this.updateErrorMessage,
    required this.successColor,
    this.update,
  });

  final int length;
  final PinCodeType type;
  final double? radius;
  final EdgeInsets padding;
  final TextEditingController textController;
  final void Function()? onComplete;
  final void Function()? onFirstEnter;
  final void Function()? onSecondEnter;
  final void Function()? update;
  final Future<bool> Function(String text)? isValidCode;
  final String message;
  final String? repeatMessage;
  final String? updateErrorMessage;
  final String? updateMessage;
  final String errorMessage;
  final Color errorColor;
  final String? successMessage;
  final Color successColor;
  @override
  _PinCodeState createState() => _PinCodeState();
}

class _PinCodeState extends State<PinCode> {
  Color? currentColor;
  String? currentMessage;
  String firstCode = "";
  bool successChecking = false;

  void onUpdateRegister() {
    setState(() {});
    if (widget.textController.text.length == widget.length) {
      if (firstCode == "") {
        widget.onFirstEnter?.call();
        Timer(Duration(milliseconds: 500), () {
          firstCode = widget.textController.text;
          widget.textController.text = "";
          currentMessage = widget.repeatMessage;
        });
      } else {
        if (firstCode == widget.textController.text) {
          currentMessage = widget.successMessage;
          currentColor = widget.successColor;
          widget.onComplete?.call();
        } else {
          currentMessage = widget.errorMessage;
          currentColor = widget.errorColor;
          Timer(Duration(seconds: 2), () {
            firstCode = "";
            widget.textController.text = "";
            currentColor = null;
            currentMessage = null;
          });
        }
      }
    }
  }

  void onUpdateLogin() async {
    setState(() {});
    if (widget.textController.text.length == widget.length) {
      final result = await widget.isValidCode!(widget.textController.text);
      if (result) {
        setState(() {
          currentColor = widget.successColor;
        });
        widget.onComplete?.call();
      } else {
        setState(() {
          currentMessage = widget.errorMessage;
          currentColor = widget.errorColor;
          Timer(Duration(seconds: 2), () {
            widget.textController.text = "";
            currentColor = null;
            currentMessage = null;
          });
        });
      }
    }
    widget.update?.call();
  }

  void onUpdate() async {
    setState(() {});
    if (widget.textController.text.length == widget.length) {
      if (successChecking) {
        if (firstCode == "") {
          Timer(Duration(milliseconds: 500), () {
            firstCode = widget.textController.text;
            widget.textController.text = "";
            currentMessage = widget.repeatMessage;
          });
        } else {
          if (firstCode == widget.textController.text) {
            currentMessage = widget.successMessage;
            currentColor = widget.successColor;
            Timer(Duration(milliseconds: 500), () {
              widget.onComplete?.call();
            });
          } else {
            currentMessage = widget.errorMessage;
            currentColor = widget.errorColor;
            Timer(Duration(seconds: 2), () {
              firstCode = "";
              widget.textController.text = "";
              currentColor = null;
              currentMessage = widget.message;
            });
          }
        }
      } else {
        final result = await widget.isValidCode!(widget.textController.text);
        if (result) {
          setState(() {
            currentMessage = widget.message;
            successChecking = true;
            widget.textController.text = "";
          });
        } else {
          setState(() {
            currentMessage = widget.updateErrorMessage;
            currentColor = widget.errorColor;
            Timer(Duration(seconds: 2), () {
              widget.textController.text = "";
              currentColor = null;
              currentMessage = null;
            });
          });
        }
      }
    }
  }

  void chooseTypeOfChecking() {
    switch (widget.type) {
      case PinCodeType.Login:
        onUpdateLogin();
        break;
      case PinCodeType.Register:
        onUpdateRegister();
        break;
      case PinCodeType.Update:
        onUpdate();
        break;
    }
  }

  @override
  void initState() {
    widget.textController.addListener(() {
      chooseTypeOfChecking();
    });
    super.initState();
  }

  @override
  void dispose() {
    widget.textController.removeListener(() {
      chooseTypeOfChecking();
    });
    widget.textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Column(
      children: [
        Text(
          currentMessage == null
              ? widget.type == PinCodeType.Update
                  ? widget.updateMessage!
                  : widget.message
              : currentMessage!,
          style: theme.textStyles.mainModalText.copyWith(color: currentColor),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 38),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.textController.text.length,
              (index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Container(
                  width: widget.radius ?? 20.r,
                  height: widget.radius ?? 20.r,
                  decoration: new BoxDecoration(
                    color: currentColor == null ? theme.colors.buttonPrimary : currentColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            ...List.generate(
              widget.length - widget.textController.text.length,
              (index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Container(
                  width: widget.radius ?? 20.r,
                  height: widget.radius ?? 20.r,
                  decoration: new BoxDecoration(
                    color: theme.colors.inputFillColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
