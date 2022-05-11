import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/helpers/upper_case_formatter.dart';
import 'package:solfy_flutter/widgets/form_input_with_text.dart';

/// Форма с паспортом для анкеты
class PassportFormFields extends StatelessWidget {
  PassportFormFields({
    required this.seriesName,
    required this.numberName,
    this.uneditableSeries = false,
    this.uneditableNumber = false,
    this.initialNumber,
    this.initialSeries,
  });

  final String seriesName;
  final String numberName;
  final bool uneditableSeries;
  final bool uneditableNumber;
  final String? initialSeries;
  final String? initialNumber;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormInputWithText(
          seriesName,
          width: 64.w,
          hintText: "AA",
          initialValue: initialSeries,
          validators: [
            FormBuilderValidators.required(context,
                errorText: "Заполните поле"),
            FormBuilderValidators.minLength(context, 2,
                errorText: "В серии 2 символа"),
          ],
          customFormatter: UpperCaseTextFormatter(),
          headerText: "series".tr(),
          keyboardType: TextInputType.name,
          maskFormatter: MaskTextInputFormatter(
            mask: '##',
            filter: {"#": RegExp(r'[a-zA-Z]')},
          ),
          uneditableValue: uneditableSeries,
        ),
        SizedBox(width: 12.w),
        FormInputWithText(
          numberName,
          width: 252.w,
          validators: [
            FormBuilderValidators.required(context,
                errorText: "Пожалуйста, заполните поле"),
            FormBuilderValidators.minLength(context, 7,
                errorText: "В номере 7 символов"),
          ],
          hintText: "0000000",
          headerText: "number".tr(),
          keyboardType: TextInputType.number,
          maskFormatter: MaskTextInputFormatter(
            mask: '#######',
            filter: {"#": RegExp(r'[0-9]')},
          ),
          uneditableValue: uneditableNumber,
          initialValue: initialNumber,
        ),
      ],
    );
  }
}
