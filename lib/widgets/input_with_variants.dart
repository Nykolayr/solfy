import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:solfy_flutter/widgets/form_input_with_text.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Инпут с ограниченным редактированием для анкеты
class InputWithVariants extends StatelessWidget {
  const InputWithVariants({
    this.controller,
    required this.name,
    required this.title,
    this.onTap,
    this.uneditableValue = false,
    this.initialValue,
  });

  final TextEditingController? controller;
  final String name;
  final String title;
  final void Function()? onTap;
  final bool uneditableValue;
  final String? initialValue;
  @override
  Widget build(BuildContext context) {
    return FormInputWithText(
      name,
      controller: controller,
      hintText: "Выберите",
      suffixIcon: Icon(
        SolfyIcons.arrow_down,
        size: 10,
      ),
      validators: [
        FormBuilderValidators.required(context, errorText: "Пожалуйста, заполните поле"),
      ],
      headerText: title,
      readOnly: true,
      enabled: false,
      onTap: onTap,
      uneditableValue: uneditableValue,
      initialValue: initialValue,
    );
  }
}
