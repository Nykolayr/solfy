import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';

class FloatModalChoosingFilial extends StatelessWidget {
  FloatModalChoosingFilial(
      {required this.filialName,
      required this.filialAddress,
      required this.filialId});

  final String filialName;
  final String filialAddress;
  final String filialId;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 30.h),
          Text(
            filialName,
            style: theme.textStyles.mainModalText,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            filialAddress,
            style: theme.textStyles.descriptionModalText,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.h),
          LongButtonWithText(
            text: "get_card_in_this_filial".tr(),
            onTap: () async {
              context.read<QuestionnaireBloc>().add(ClientScore(filialId));
              context.router.push(YourRequestCompleteWaitingView());
            },
          ),
          SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text("choose_another".tr(),
                style: theme.textStyles.flagIconsTextActive),
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
