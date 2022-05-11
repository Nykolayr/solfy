import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/form_item_model.dart';
import 'package:solfy_flutter/repository/static_repository.dart';
import 'package:solfy_flutter/widgets/form_input_with_text.dart';
import 'package:solfy_flutter/widgets/input_with_variants.dart';
import 'package:solfy_flutter/models/api/static/geo/geo_response.dart';

class AddressForm extends StatefulWidget {
  AddressForm({
    required this.globalKey,
    required this.regionItem,
    required this.districtItem,
    required this.cityItem,
    required this.streetItem,
    required this.houseItem,
    required this.apartmentItem,
    required this.typeItem,
  });

  final GlobalKey<FormBuilderState> globalKey;
  final FormItemModel regionItem;
  final FormItemModel districtItem;
  final FormItemModel cityItem;
  final FormItemModel streetItem;
  final FormItemModel houseItem;
  final FormItemModel apartmentItem;
  final FormItemModel typeItem;
  @override
  _AddressFormState createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  @override
  Widget build(BuildContext context) {
    StaticRepository static = context.read<StaticRepository>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputWithVariants(
          name: widget.regionItem.name,
          title: "region_oblast".tr(),
          initialValue: widget.regionItem.initialValue,
          onTap: () => ModalHelpers.showModalWithVariants(
            context,
            title: "region_oblast".tr(),
            stringVariants: static.geo.regions?.map((e) => e.name).toList(),
            onVariantTap: (text) {
              widget.globalKey.currentState?.fields[widget.regionItem.name]
                  ?.didChange(text);
              widget.globalKey.currentState?.fields[widget.districtItem.name]
                  ?.didChange("");
            },
            selectedVariant: widget
                .globalKey.currentState?.fields[widget.regionItem.name]?.value,
          ),
        ),
        SizedBox(height: 24.h),
        InputWithVariants(
          name: widget.districtItem.name,
          initialValue: widget.districtItem.initialValue,
          title: "district".tr(),
          onTap: () => ModalHelpers.showModalWithVariants(
            context,
            title: "region_oblast".tr(),
            stringVariants: static.geo
                .findDistrictsByRegionName(widget.globalKey.currentState
                    ?.fields[widget.regionItem.name]?.value)
                .map((e) => e.name)
                .toList(),
            onVariantTap: (text) => widget
                .globalKey.currentState?.fields[widget.districtItem.name]
                ?.didChange(text),
            selectedVariant: widget.globalKey.currentState
                ?.fields[widget.districtItem.name]?.value,
          ),
        ),
        SizedBox(height: 24.h),
        FormInputWithText(
          widget.cityItem.name,
          validators: [
            FormBuilderValidators.required(context,
                errorText: "Пожалуйста, заполните поле"),
          ],
          headerText: "city".tr(),
          initialValue: widget.cityItem.initialValue,
        ),
        SizedBox(height: 24.h),
        FormInputWithText(
          widget.streetItem.name,
          validators: [
            FormBuilderValidators.required(context,
                errorText: "Пожалуйста, заполните поле"),
          ],
          initialValue: widget.streetItem.initialValue,
          headerText: "street".tr(),
          hintUnderFormText: "Например: пр-д Тафаккур",
        ),
        SizedBox(height: 24.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormInputWithText(
              widget.houseItem.name,
              validators: [
                FormBuilderValidators.required(context,
                    errorText: "Пожалуйста, заполните поле"),
              ],
              initialValue: widget.houseItem.initialValue,
              width: 158.w,
              headerText: "house".tr(),
            ),
            SizedBox(width: 12.w),
            FormInputWithText(
              widget.apartmentItem.name,
              validators: [
                FormBuilderValidators.required(context,
                    errorText: "Пожалуйста, заполните поле"),
              ],
              initialValue: widget.apartmentItem.initialValue,
              width: 158.w,
              headerText: "flat".tr(),
            ),
          ],
        ),
        SizedBox(height: 24.h),
        InputWithVariants(
          name: widget.typeItem.name,
          initialValue: widget.typeItem.initialValue,
          title: "property_type".tr(),
          onTap: () => ModalHelpers.showModalWithVariants(
            context,
            title: "property_type".tr(),
            variants: static.dictionaries.typeOwnership,
            onVariantTap: (text) => widget
                .globalKey.currentState?.fields[widget.typeItem.name]
                ?.didChange(text),
            selectedVariant: widget
                .globalKey.currentState?.fields[widget.typeItem.name]?.value,
          ),
        ),
      ],
    );
  }
}
