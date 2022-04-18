import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/helpers/upper_case_formatter.dart';
import 'package:solfy_flutter/models/form_property_model.dart';
import 'package:solfy_flutter/models/form_selector_item.dart';
import 'package:solfy_flutter/models/form_vehicle_model.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/custom_divider.dart';
import 'package:solfy_flutter/widgets/header_app_bar.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/propetry_form.dart';
import 'package:solfy_flutter/widgets/selector_form.dart';
import 'package:solfy_flutter/widgets/vehicle_form.dart';

/// Четвертый шаг анкеты
class PropertyFormView extends StatefulWidget {
  const PropertyFormView({Key? key}) : super(key: key);

  @override
  _PropertyFormViewState createState() => _PropertyFormViewState();
}

class _PropertyFormViewState extends State<PropertyFormView> {
  final _formGlobalKey = GlobalKey<FormBuilderState>();
  bool validateMode = false;
  late FormSelectorItem _firstItemProperty = FormSelectorItem(
    text: "Нет",
    onTap: () => setState(() {
      isPropertiesErrorVisible = false;
      isPropertiesVisible = false;
    }),
  );
  late FormSelectorItem _secondItemProperty = FormSelectorItem(
    text: "Есть",
    onTap: () => setState(() {
      isPropertiesErrorVisible = false;
      isPropertiesVisible = true;
    }),
  );
  late FormSelectorItem _firstItemVehicle = FormSelectorItem(
    text: "Нет",
    onTap: () => setState(() {
      isVehiclesErrorVisible = false;
      isVehiclesVisible = false;
    }),
  );
  late FormSelectorItem _secondItemVehicle = FormSelectorItem(
    text: "Есть",
    onTap: () => setState(() {
      isVehiclesErrorVisible = false;
      isVehiclesVisible = true;
    }),
  );
  bool isPropertiesVisible = false;
  bool isVehiclesVisible = false;
  bool isPropertySelectorUneditable = false;
  bool isVehicleSelectorUneditable = false;
  bool isPropertiesErrorVisible = false;
  bool isVehiclesErrorVisible = false;
  final List<FormPropertyModel> properties = [
    FormPropertyModel(UniqueKey().toString())
  ];
  final List<FormVehicleModel> vehicles = [
    FormVehicleModel(UniqueKey().toString())
  ];

  @override
  void initState() {
    ModalHelpers.ftoast.init(context);
    final currentStage =
        (context.read<QuestionnaireBloc>().state as QuestionnaireFoundSuccess)
            .currentStage;
    final questionnaire =
        (context.read<QuestionnaireBloc>().state as QuestionnaireFoundSuccess)
            .questionnaire;
    if (questionnaire.clientProperties != null) {
      if (questionnaire.clientProperties!.length == 0 && currentStage > 4) {
        _firstItemProperty.isEnabled = true;
      } else {
        if (questionnaire.clientProperties!.length != 0) {
          _secondItemProperty.isEnabled = true;
          isPropertiesVisible = true;
          properties.clear();
          for (var item in questionnaire.clientProperties!) {
            properties.add(
              FormPropertyModel(
                UniqueKey().toString(),
                type: TextEditingController(text: item.typeProperty?.value),
                region: TextEditingController(text: item.regionProperty?.value),
                marketValue: TextEditingController(
                    text: ThousandsSeparatorInputFormatter()
                        .formatEditUpdate(
                            TextEditingValue(text: ''),
                            TextEditingValue(
                                text: item.marketValueRealty?.toString() ?? ""))
                        .text),
              ),
            );
          }
        }
      }
    }
    if (questionnaire.clientVehicles != null) {
      if (questionnaire.clientVehicles!.length == 0 && currentStage > 4) {
        _firstItemVehicle.isEnabled = true;
      } else {
        if (questionnaire.clientVehicles!.length != 0) {
          _secondItemVehicle.isEnabled = true;
          isVehiclesVisible = true;
          vehicles.clear();
          for (var item in questionnaire.clientVehicles!) {
            vehicles.add(
              FormVehicleModel(
                UniqueKey().toString(),
                type: TextEditingController(text: item.typeVehicle?.value),
                model: TextEditingController(text: item.modelVehicle),
                yearIssue:
                    TextEditingController(text: item.yearIssue?.toString()),
                marketValue: TextEditingController(
                    text: ThousandsSeparatorInputFormatter()
                        .formatEditUpdate(
                            TextEditingValue(text: ''),
                            TextEditingValue(
                                text:
                                    item.marketValueVehicle?.toString() ?? ""))
                        .text),
              ),
            );
          }
        }
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Scaffold(
      appBar: HeaderAppBar(
        customTitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "your_property".tr(),
              style: theme.textStyles.mainText,
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 2.h),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                text: 'step_4'.tr(),
                style: theme.textStyles.headerSubtitleText,
                children: [
                  TextSpan(text: ' '),
                  TextSpan(
                    text: 'from_6'.tr(),
                    style: theme.textStyles.headerSubtitleText.copyWith(
                      color: theme.colors.virtualKeyboardNumbers,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: SafeArea(
                  child: FormBuilder(
                    autovalidateMode: validateMode
                        ? AutovalidateMode.onUserInteraction
                        : AutovalidateMode.disabled,
                    key: _formGlobalKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.h),
                        Container(
                          width: double.infinity,
                          child: Text(
                            "your_property_tip".tr(),
                            style: theme.textStyles.formSubtitleText,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        CustomDivider(12),
                        Text(
                          "real_estate".tr(),
                          style: theme.textStyles.formTitleText,
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 16.h),
                        SelectorForm(
                          [_firstItemProperty, _secondItemProperty],
                          rowMode: true,
                          isErrorVisible: isPropertiesErrorVisible,
                        ),
                        isPropertiesVisible
                            ? ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: properties.length,
                                itemBuilder: (context, index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomDivider(12),
                                    Text(
                                      "№${index + 1}",
                                      style: theme.textStyles.formTitleText,
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(height: 12.h),
                                    properties.length != 1
                                        ? GestureDetector(
                                            onTap: () => setState(() =>
                                                properties.removeAt(index)),
                                            child: Text(
                                              "remove".tr(),
                                              style: theme
                                                  .textStyles.formTextClickable,
                                            ),
                                          )
                                        : SizedBox(),
                                    PropertyForm(
                                      formKey: _formGlobalKey,
                                      typeName: properties[index].typeName,
                                      regionIssueName:
                                          properties[index].regionIssueName,
                                      marketValueName:
                                          properties[index].marketValueName,
                                      type: properties[index].type,
                                      regionIssue: properties[index].region,
                                      marketValue:
                                          properties[index].marketValue,
                                      key: ValueKey(properties[index].typeName),
                                    ),
                                    index == properties.length - 1
                                        ? GestureDetector(
                                            onTap: () {
                                              setState(() => properties.add(
                                                  FormPropertyModel(
                                                      UniqueKey().toString())));
                                            },
                                            child: Text(
                                              "Добавить еще недвижимость",
                                              style: theme
                                                  .textStyles.formTextClickable,
                                            ),
                                          )
                                        : SizedBox(),
                                  ],
                                ),
                              )
                            : SizedBox(),
                        CustomDivider(12),
                        Text(
                          "transport".tr(),
                          style: theme.textStyles.formTitleText,
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 16.h),
                        SelectorForm(
                          [_firstItemVehicle, _secondItemVehicle],
                          rowMode: true,
                          isErrorVisible: isVehiclesErrorVisible,
                        ),
                        isVehiclesVisible
                            ? ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: vehicles.length,
                                itemBuilder: (context, index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomDivider(12),
                                    Text(
                                      "№${index + 1}",
                                      style: theme.textStyles.formTitleText,
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(height: 12.h),
                                    vehicles.length != 1
                                        ? GestureDetector(
                                            onTap: () => setState(() => vehicles
                                                .remove(vehicles[index])),
                                            child: Text(
                                              "remove".tr(),
                                              style: theme
                                                  .textStyles.formTextClickable,
                                            ),
                                          )
                                        : SizedBox(),
                                    VehicleForm(
                                      formKey: _formGlobalKey,
                                      typeName: vehicles[index].typeName,
                                      modelName: vehicles[index].modelName,
                                      yearIssueName:
                                          vehicles[index].yearIssueName,
                                      marketValueName:
                                          vehicles[index].marketValueName,
                                      type: vehicles[index].type,
                                      model: vehicles[index].model,
                                      yearIssue: vehicles[index].yearIssue,
                                      marketValue: vehicles[index].marketValue,
                                      key: ValueKey(
                                        vehicles[index].typeName,
                                      ),
                                    ),
                                    index == vehicles.length - 1
                                        ? GestureDetector(
                                            onTap: () {
                                              setState(() => vehicles.add(
                                                  FormVehicleModel(
                                                      UniqueKey().toString())));
                                            },
                                            child: Text(
                                              "Добавить транспортное средство",
                                              style: theme
                                                  .textStyles.formTextClickable,
                                            ),
                                          )
                                        : SizedBox(),
                                  ],
                                ),
                              )
                            : SizedBox(),
                        CustomDivider(12),
                        SizedBox(height: 24.h),
                        LongButtonWithText(
                          text: "Продолжить",
                          isEnabled: (_firstItemProperty.isEnabled ||
                                  _secondItemProperty.isEnabled) &&
                              (_firstItemVehicle.isEnabled ||
                                  _secondItemVehicle.isEnabled),
                          onTap: () async {
                            final isValid =
                                _formGlobalKey.currentState?.validate() ??
                                    false;
                            setState(() {
                              validateMode = true;
                              if (!(_firstItemProperty.isEnabled ||
                                  _secondItemProperty.isEnabled)) {
                                isPropertiesErrorVisible = true;
                              }
                              if (!(_firstItemVehicle.isEnabled ||
                                  _secondItemVehicle.isEnabled)) {
                                isVehiclesErrorVisible = true;
                              }
                            });
                            if (!isValid) {
                              ModalHelpers.showToastWithText(
                                "Вы не заполнили некоторые поля анкеты",
                              );
                            }

                            if (isValid &&
                                !isVehiclesErrorVisible &&
                                !isPropertiesErrorVisible) {
                              _formGlobalKey.currentState?.save();
                              await Future.delayed(
                                Duration(
                                  milliseconds: 200,
                                ),
                              );
                              final questionnaire = await (context
                                      .read<QuestionnaireBloc>()
                                      .state as QuestionnaireFoundSuccess)
                                  .questionnaire;
                              context.read<QuestionnaireBloc>().add(
                                  await SavePropertiesData(
                                      properties.first.marketValue.text != ""
                                          ? properties
                                          : [],
                                      vehicles.first.marketValue.text != ""
                                          ? vehicles
                                          : [],
                                      questionnaire));
                              await Future.delayed(
                                Duration(
                                  milliseconds: 200,
                                ),
                              );
                              context
                                  .read<QuestionnaireBloc>()
                                  .add(await ClientScore('1'));
                              context.router
                                  .push(YourRequestCompleteWaitingView());
                            }
                          },
                        ),
                        SizedBox(height: 20.h),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
