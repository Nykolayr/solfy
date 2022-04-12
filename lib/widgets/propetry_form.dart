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

/// Форма собственности для анкеты
class PropertyForm extends StatelessWidget {
  const PropertyForm({
    required this.formKey,
    required this.typeName,
    required this.regionIssueName,
    required this.marketValueName,
    required this.marketValue,
    required this.regionIssue,
    required this.type,
    Key? key,
  }) : super(key: key);

  final GlobalKey<FormBuilderState> formKey;
  final String typeName;
  final String regionIssueName;
  final String marketValueName;
  final TextEditingController type;
  final TextEditingController regionIssue;
  final TextEditingController marketValue;
  @override
  Widget build(BuildContext context) {
    StaticRepository static = context.read<StaticRepository>();

    return Column(
      children: [
        SizedBox(height: 12.h),
        InputWithVariants(
          name: typeName,
          controller: type,
          title: "real_estate_type".tr(),
          onTap: () => ModalHelpers.showModalWithVariants(
            context,
            title: "real_estate_type".tr(),
            variants: static.dictionaries.typeProperty,
            onVariantTap: (text) {
              formKey.currentState?.fields[typeName]?.didChange(text);
            },
          ),
        ),
        SizedBox(height: 24.h),
        InputWithVariants(
          name: regionIssueName,
          controller: regionIssue,
          title: "region_oblast".tr(),
          onTap: () => ModalHelpers.showModalWithVariants(
            context,
            title: "region_oblast".tr(),
            stringVariants: static.geo.regions?.map((e) => e.name).toList(),
            onVariantTap: (text) {
              formKey.currentState?.fields[regionIssueName]?.didChange(text);
            },
          ),
        ),
        SizedBox(height: 24.h),
        FormInputWithText(
          marketValueName,
          controller: marketValue,
          validators: [
            FormBuilderValidators.required(context, errorText: "Пожалуйста, заполните поле"),
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
