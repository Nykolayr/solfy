import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/pin_change_bloc/pin_change_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/enums.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';

class PinCodeChange extends StatefulWidget {
  PinCodeChange({
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
  _PinCodeChangeState createState() => _PinCodeChangeState();
}

class _PinCodeChangeState extends State<PinCodeChange> {
  Color? currentColor;
  String? currentMessage;
  bool successChecking = false;
  bool newCodeStage = false;

  Future<void> onUpdate() async {
    setState(() {});
    if (widget.length == widget.textController.text.length) {
      final bloc = context.read<PinChangeBloc>();
      if (bloc.state is CorrectCode || bloc.state is DifferentCodes) {
        bloc.add(SaveFirstCode(widget.textController.text));
      } else {
        if (bloc.state is FirstCodeSaved) {
          bloc.add(SetNewCode(widget.textController.text));
        } else {
          bloc.add(CheckCode(widget.textController.text));
        }
      }
    }
  }

  @override
  void initState() {
    widget.textController.addListener(() {
      onUpdate();
    });
    super.initState();
  }

  @override
  void dispose() {
    widget.textController.removeListener(() {
      onUpdate();
    });
    widget.textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return BlocConsumer<PinChangeBloc, PinChangeState>(
      listener: (context, state) async {
        if (state is PinForgotError) {
          ModalHelpers.showError(context, state.errors);
        }
        if (state is PinForgotSuccess) {
          context.router.push(ForgotPinCodeView(message: state.response.message ?? ""));
        }
        if (state is Loading) {
          ModalHelpers.showLoadingModal(context);
        }
        if (state is EndLoading) {
          await context.router.root.pop();
        }
        if (state is FirstCodeSaved) {
          Timer(Duration(milliseconds: 500), () {
            widget.textController.text = "";
            currentColor = null;
            currentMessage = "Повторите код доступа";
          });
        }
        if (state is DifferentCodes) {
          currentMessage = "Коды не совпадают";
          currentColor = widget.errorColor;
          Timer(Duration(seconds: 2), () {
            widget.textController.text = "";
            currentColor = null;
            currentMessage = "Придумайте новый код доступа";
          });
        }
        if (state is InvalidCode) {
          if (state.errors != null) {
            ModalHelpers.showError(context, state.errors!);
          }
          currentMessage = widget.errorMessage;
          currentColor = widget.errorColor;
          Timer(Duration(seconds: 2), () {
            widget.textController.text = "";
            currentColor = null;
            currentMessage = null;
          });
        }
        if (state is CorrectCode) {
          successChecking = true;
          currentColor = widget.successColor;
          Timer(Duration(milliseconds: 500), () {
            widget.textController.text = "";
            currentColor = null;
            currentMessage = "Придумайте новый код доступа";
          });
        }
        if (state is SetNewCodeError) {
          if (state.errors != null) {
            ModalHelpers.showError(context, state.errors!);
          }
        }
        if (state is SetNewCodeSuccess) {
          currentColor = widget.successColor;
          currentMessage = "Код доступа установлен";
          Timer(Duration(seconds: 1), () async {
            await context.router.pop();
          });
        }
      },
      builder: (context, state) {
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
      },
    );
  }
}
