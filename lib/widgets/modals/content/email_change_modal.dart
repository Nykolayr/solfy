import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/personal_information_bloc/personal_information_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/input_base.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:validators/validators.dart';

class FloatModalChangeEmail extends StatefulWidget {
  @override
  _FloatModalChangeEmailState createState() => _FloatModalChangeEmailState();
}

class _FloatModalChangeEmailState extends State<FloatModalChangeEmail> {
  late TextEditingController _textController;
  bool isSaveButtonEnabled = false;
  bool isValidateMode = true;

  @override
  void initState() {
    _textController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return BlocConsumer<PersonalInformationBloc, PersonalInformationState>(
      listener: (context, state) async {
        if (state is Loading) {
          ModalHelpers.showLoadingModal(context);
        }
        if (state is EmailChangedSuccess) {
          Navigator.pop(context);
          await context.router.root.pop();
          Timer(Duration(milliseconds: 200), () {
            ModalHelpers.showEmailResetConfirmModal(context);
          });
        }
        if (state is EmailChangedError) {
          await context.router.root.pop();
          if (state.errors != null) {
            ModalHelpers.showError(context, state.errors!);
          }
        }
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 40),
              Text(
                "Email",
                style: theme.textStyles.mainModalText,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: InputBase(
                  _textController,
                  keyboardType: TextInputType.emailAddress,
                  errorText: "Заполните адрес в формате: your@email.com",
                  validation: (String? text) {
                    final isValid = isEmail(text!);
                    WidgetsBinding.instance!.addPostFrameCallback((_) {
                      setState(() {
                        isSaveButtonEnabled = isValid;
                      });
                    });
                    return isValid;
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Text(
                        "Отмена",
                        style: theme.textStyles.flagIconsTextActive,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  LongButtonWithText(
                    width: 152.w,
                    isEnabled: isSaveButtonEnabled,
                    text: "Сохранить",
                    onTap: () async {
                      setState(() {
                        isValidateMode = false;
                      });
                      context
                          .read<PersonalInformationBloc>()
                          .add(ChangeEmail(_textController.text));
                    },
                  ),
                ],
              ),
              SizedBox(height: 24),
            ],
          ),
        );
      },
    );
  }
}
