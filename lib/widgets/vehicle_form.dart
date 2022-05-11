import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/helpers/upper_case_formatter.dart';
import 'package:solfy_flutter/repository/static_repository.dart';
import 'package:solfy_flutter/widgets/form_input_with_text.dart';
import 'package:solfy_flutter/widgets/input_with_variants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

/// Форма автомобильного имущества на четвертом шаге анкеты
class VehicleForm extends StatelessWidget {
  const VehicleForm({
    required this.formKey,
    required this.typeName,
    required this.modelName,
    required this.yearIssueName,
    required this.marketValueName,
    required this.type,
    required this.model,
    required this.yearIssue,
    required this.marketValue,
    Key? key,
  }) : super(key: key);

  final GlobalKey<FormBuilderState> formKey;
  final String typeName;
  final String modelName;
  final String yearIssueName;
  final String marketValueName;
  final TextEditingController type;
  final TextEditingController model;
  final TextEditingController yearIssue;
  final TextEditingController marketValue;
  @override
  Widget build(BuildContext context) {
    StaticRepository static = context.read<StaticRepository>();

    void showNativeDatePicker(String name) async {
      DateTime _selectedDate = DateTime(
          int.tryParse(formKey.currentState?.fields[name]?.value ?? "") ??
              2018);
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Select Year"),
            content: Container(
              width: 300,
              height: 300,
              child: YearPicker(
                currentDate: _selectedDate,
                firstDate: DateTime(2000),
                lastDate: DateTime(2021),
                initialDate: DateTime(2018),
                selectedDate: _selectedDate,
                onChanged: (DateTime dateTime) {
                  formKey.currentState?.fields[name]
                      ?.didChange(dateTime.year.toString());
                  Navigator.pop(context);
                },
              ),
            ),
          );
        },
      );
    }

    return Column(
      children: [
        SizedBox(height: 12.h),
        InputWithVariants(
          name: typeName,
          controller: type,
          title: "transport_type".tr(),
          onTap: () => ModalHelpers.showModalWithVariants(
            context,
            title: "transport_type".tr(),
            variants: static.dictionaries.typeVehicle,
            onVariantTap: (text) {
              formKey.currentState?.fields[typeName]?.didChange(text);
            },
          ),
        ),
        SizedBox(height: 24.h),
        FormInputWithText(
          modelName,
          controller: model,
          validators: [
            FormBuilderValidators.required(context,
                errorText: "Пожалуйста, заполните поле"),
          ],
          headerText: "brand".tr(),
        ),
        SizedBox(height: 24.h),
        InputWithVariants(
          name: yearIssueName,
          controller: yearIssue,
          title: "issue_year".tr(),
          onTap: () => showNativeDatePicker(yearIssueName),
        ),
        SizedBox(height: 24.h),
        FormInputWithText(
          marketValueName,
          controller: marketValue,
          validators: [
            FormBuilderValidators.required(context,
                errorText: "Пожалуйста, заполните поле"),
          ],
          customFormatter: ThousandsSeparatorInputFormatter(),
          keyboardType: TextInputType.number,
          hintText: "enter_a_sum".tr(),
          headerText: "market_estimate_price".tr(),
        ),
        SizedBox(height: 24.h),
      ],
    );
  }
}
