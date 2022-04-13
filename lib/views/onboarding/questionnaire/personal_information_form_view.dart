import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/helpers/custom_validators.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/helpers/upper_case_formatter.dart';
import 'package:solfy_flutter/models/api/static/geo/geo_response.dart';
import 'package:solfy_flutter/models/form_selector_item.dart';
import 'package:solfy_flutter/repository/static_repository.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/form_input_with_text.dart';
import 'package:solfy_flutter/widgets/header_app_bar.dart';
import 'package:solfy_flutter/widgets/input_with_variants.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/passport_form_fields.dart';
import 'package:solfy_flutter/widgets/selector_form.dart';

/// Первый шаг анкеты
class PersonalInformationFormView extends StatefulWidget {
  const PersonalInformationFormView({this.updateCallback});

  final Future<void> Function()? updateCallback;
  @override
  _PersonalInformationFormViewState createState() =>
      _PersonalInformationFormViewState();
}

class _PersonalInformationFormViewState
    extends State<PersonalInformationFormView> {
  final _formGlobalKey = GlobalKey<FormBuilderState>();
  bool _validatingMode = false;
  bool isChildrenVisible = false;
  bool isSelectorErrorVisible = false;
  final _phoneMaskFormatter = MaskTextInputFormatter(
    mask: "+998 ## ###-##-##",
    filter: {"#": RegExp(r'[0-9]')},
  );
  late FormSelectorItem _firstItemChildren = FormSelectorItem(
    text: "Нет",
    onTap: () => setState(() {
      isChildrenVisible = false;
      isSelectorErrorVisible = false;
    }),
  );
  late FormSelectorItem _secondItemChildren = FormSelectorItem(
    text: "Есть",
    onTap: () => setState(() {
      isChildrenVisible = true;
      isSelectorErrorVisible = false;
    }),
  );

  @override
  void initState() {
    ModalHelpers.ftoast.init(context);
    final questionnaire =
        (context.read<QuestionnaireBloc>().state as QuestionnaireFoundSuccess)
            .questionnaire;
    if (questionnaire.clientFamilyData?.childrenNumber != null &&
        questionnaire.clientFamilyData!.childrenNumber! > 0) {
      _secondItemChildren.isEnabled = true;
      isChildrenVisible = true;
    } else {
      if (questionnaire.clientFamilyData?.childrenNumber != null) {
        _firstItemChildren.isEnabled = true;
      }
    }
    super.initState();
  }

  String formatFormDate(String date) {
    final datetime = DateTime.parse(date);
    return "${datetime.day < 10 ? "0${datetime.day}" : datetime.day}.${datetime.month < 10 ? "0${datetime.month}" : datetime.month}.${datetime.year}";
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();
    StaticRepository static = context.read<StaticRepository>();

    return BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
      builder: (context, state) {
        if (state is QuestionnaireFoundSuccess) {
          return Scaffold(
            appBar: HeaderAppBar(
              customTitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "personal_data".tr(),
                    style: theme.textStyles.mainText,
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 2),
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: 'step_1'.tr(),
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
              behavior: HitTestBehavior.opaque,
              onTap: () => FocusScope.of(context).unfocus(),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: SafeArea(
                        child: FormBuilder(
                          autovalidateMode: _validatingMode
                              ? AutovalidateMode.onUserInteraction
                              : AutovalidateMode.disabled,
                          key: _formGlobalKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8),
                              Text(
                                "general_information".tr(),
                                style: theme.textStyles.formTitleText,
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 4),
                              Text(
                                "fill_passport_data_tip".tr(),
                                style: theme.textStyles.formSubtitleText,
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 12),
                              FormInputWithText(
                                "last_name",
                                validators: [
                                  FormBuilderValidators.required(context,
                                      errorText: "Пожалуйста, заполните поле"),
                                ],
                                initialValue:
                                    state.questionnaire.clientData?.lastName,
                                uneditableValue: state.staticQuestionnaire
                                        .clientData?.lastName !=
                                    null,
                                headerText: "last_name".tr(),
                                customFormatter: UpperCaseTextFormatter(),
                                hintUnderFormText: "like_at_the_passport".tr(),
                                maskFormatter: MaskTextInputFormatter(
                                  mask: "############################",
                                  filter: {"#": RegExp(r'[a-zA-Z-]')},
                                ),
                              ),
                              SizedBox(height: 24),
                              FormInputWithText(
                                "first_name",
                                validators: [
                                  FormBuilderValidators.required(context,
                                      errorText: "Пожалуйста, заполните поле"),
                                ],
                                initialValue:
                                    state.questionnaire.clientData?.firstName,
                                uneditableValue: state.staticQuestionnaire
                                        .clientData?.firstName !=
                                    null,
                                headerText: "first_name".tr(),
                                hintUnderFormText: "like_at_the_passport".tr(),
                                customFormatter: UpperCaseTextFormatter(),
                                maskFormatter: MaskTextInputFormatter(
                                  mask: "############################",
                                  filter: {"#": RegExp(r'[a-zA-Z-]')},
                                ),
                              ),
                              SizedBox(height: 24),
                              FormInputWithText(
                                "middle_name",
                                validators: [
                                  FormBuilderValidators.required(context,
                                      errorText: "Пожалуйста, заполните поле"),
                                ],
                                initialValue:
                                    state.questionnaire.clientData?.middleName,
                                uneditableValue: state.staticQuestionnaire
                                        .clientData?.middleName !=
                                    null,
                                headerText: "middle_name".tr(),
                                hintUnderFormText: "like_at_the_passport".tr(),
                                customFormatter: UpperCaseTextFormatter(),
                                maskFormatter: MaskTextInputFormatter(
                                  mask: "############################",
                                  filter: {"#": RegExp(r'[a-zA-Z-]')},
                                ),
                              ),
                              SizedBox(height: 24),
                              FormInputWithText(
                                "date_of_birth",
                                validators: [
                                  FormBuilderValidators.required(context,
                                      errorText: "Пожалуйста, заполните поле"),
                                ],
                                keyboardType: TextInputType.number,
                                maskFormatter: MaskTextInputFormatter(
                                  mask: "##.##.####",
                                  filter: {"#": RegExp(r'[0-9]')},
                                ),
                                initialValue:
                                    state.questionnaire.clientData?.dateOfBirth,
                                uneditableValue: state.staticQuestionnaire
                                        .clientData?.dateOfBirth !=
                                    null,
                                hintText: "dd_mm_gg".tr(),
                                headerText: "date_of_birth".tr(),
                              ),
                              SizedBox(height: 24),
                              FormInputWithText(
                                "inn",
                                keyboardType: TextInputType.number,
                                validators: [
                                  FormBuilderValidators.required(context,
                                      errorText: "Пожалуйста, заполните поле"),
                                  FormBuilderValidators.minLength(context, 9,
                                      errorText: "Должно быть 9 символов"),
                                ],
                                maskFormatter: MaskTextInputFormatter(
                                  mask: "#########",
                                  filter: {"#": RegExp(r'[0-9]')},
                                ),
                                initialValue:
                                    state.questionnaire.clientData?.inn,
                                uneditableValue:
                                    state.staticQuestionnaire.clientData?.inn !=
                                        null,
                                hintText: "000000000",
                                headerText: "inn".tr(),
                              ),
                              SizedBox(height: 24),
                              InputWithVariants(
                                name: "gender",
                                initialValue: state
                                    .questionnaire.clientData?.gender?.value,
                                uneditableValue: state.staticQuestionnaire
                                        .clientData?.gender !=
                                    null,
                                title: "sex".tr(),
                                onTap: () => ModalHelpers.showModalWithVariants(
                                  context,
                                  title: "sex".tr(),
                                  variants: static.dictionaries.gender,
                                  onVariantTap: (text) => _formGlobalKey
                                      .currentState?.fields["gender"]
                                      ?.didChange(text),
                                  selectedVariant: _formGlobalKey
                                      .currentState?.fields["gender"]?.value,
                                ),
                              ),
                              SizedBox(height: 19),
                              Divider(),
                              SizedBox(height: 8),
                              Text(
                                "identification_document".tr(),
                                style: theme.textStyles.formTitleText,
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 12),
                              InputWithVariants(
                                name: "doc_type",
                                initialValue: state
                                    .questionnaire.clientData?.docType?.value,
                                uneditableValue: state.staticQuestionnaire
                                        .clientData?.docType !=
                                    null,
                                title: "type_of_identity_document".tr(),
                                onTap: () => ModalHelpers.showModalWithVariants(
                                  context,
                                  title: "type_of_identity_document".tr(),
                                  variants: static.dictionaries.docType,
                                  onVariantTap: (text) => _formGlobalKey
                                      .currentState?.fields["doc_type"]
                                      ?.didChange(text),
                                  selectedVariant: _formGlobalKey
                                      .currentState?.fields["doc_type"]?.value,
                                ),
                              ),
                              SizedBox(height: 24),
                              PassportFormFields(
                                seriesName: "doc_series",
                                numberName: "doc_number",
                                uneditableSeries: state.staticQuestionnaire
                                        .clientData?.docSeries !=
                                    null,
                                uneditableNumber: state.staticQuestionnaire
                                        .clientData?.docNumber !=
                                    null,
                                initialSeries:
                                    state.questionnaire.clientData?.docSeries,
                                initialNumber:
                                    state.questionnaire.clientData?.docNumber,
                              ),
                              SizedBox(height: 24),
                              FormInputWithText(
                                "doc_issue_date",
                                keyboardType: TextInputType.number,
                                // multiValidation: (text) {
                                //   if (text != null) {
                                //     if (text.isEmpty) {
                                //       return "Пожалуйста, заполните поле";
                                //     }
                                //     try {
                                //       final datetime =
                                //           DateTime.parse(DateFormat('dd.MM.yyyy').parse(text).toString());
                                //       if (datetime.year < 1900 || datetime.year > 2030) {
                                //         return "Введите валидную дату";
                                //       }
                                //     } catch (e) {
                                //       return "Введите валидную дату";
                                //     }
                                //   }
                                // },
                                validators: [
                                  FormBuilderValidators.required(context,
                                      errorText: "Пожалуйста, заполните поле"),
                                  CustomValidators.checkIsValidDate,
                                ],
                                maskFormatter: MaskTextInputFormatter(
                                  mask: "##.##.####",
                                  filter: {"#": RegExp(r'[0-9]')},
                                ),
                                initialValue: state
                                    .questionnaire.clientData?.docIssueDate,
                                uneditableValue: state.staticQuestionnaire
                                        .clientData?.docIssueDate !=
                                    null,
                                hintText: "dd_mm_gg".tr(),
                                headerText:
                                    "date_of_issue_of_the_document".tr(),
                              ),
                              SizedBox(height: 24),
                              FormInputWithText(
                                "doc_end_date",
                                keyboardType: TextInputType.number,
                                validators: [
                                  FormBuilderValidators.required(context,
                                      errorText: "Пожалуйста, заполните поле"),
                                  CustomValidators.checkIsValidDate,
                                  CustomValidators.checkIsBeforeCurrentDate,
                                ],
                                maskFormatter: MaskTextInputFormatter(
                                  mask: "##.##.####",
                                  filter: {"#": RegExp(r'[0-9]')},
                                ),
                                initialValue:
                                    state.questionnaire.clientData?.docEndDate,
                                uneditableValue: state.staticQuestionnaire
                                        .clientData?.docEndDate !=
                                    null,
                                hintText: "dd_mm_gg".tr(),
                                headerText: "expiration_date".tr(),
                              ),
                              // SizedBox(height: 24),
                              // InputWithVariants(
                              //   name: "admin_area_document",
                              //   initialValue: state.questionnaire.clientData
                              //       ?.adminAreaDocument?.value,
                              //   uneditableValue: state.staticQuestionnaire
                              //           .clientData?.adminAreaDocument !=
                              //       null,
                              //   title: "region_of_issue_of_the_document".tr(),
                              //   onTap: () => ModalHelpers.showModalWithVariants(
                              //     context,
                              //     title: "region_of_issue_of_the_document".tr(),
                              //     stringVariants: static.geo.regions
                              //         ?.map((e) => e.name)
                              //         .toList(),
                              //     onVariantTap: (text) => _formGlobalKey
                              //         .currentState
                              //         ?.fields["admin_area_document"]
                              //         ?.didChange(text),
                              //     selectedVariant: _formGlobalKey.currentState
                              //         ?.fields["admin_area_document"]?.value,
                              //   ),
                              // ),
                              SizedBox(height: 24),
                              FormInputWithText(
                                "agency_document",
                                initialValue: state.questionnaire.clientData
                                    ?.agencyDocument?.value,
                                validators: [
                                  FormBuilderValidators.required(context,
                                      errorText: "Пожалуйста, заполните поле"),
                                ],
                                headerText: "issuer_of_the_document".tr(),
                                minLines: 1,
                                maxLines: 3,
                              ),
                              // InputWithVariants(
                              //   name: "agency_document",
                              //   initialValue: state.questionnaire.clientData
                              //       ?.agencyDocument?.value,
                              //   uneditableValue: state.staticQuestionnaire
                              //           .clientData?.agencyDocument !=
                              //       null,
                              //   title: "issuer_of_the_document".tr(),
                              //   onTap: () => ModalHelpers.showModalWithVariants(
                              //     context,
                              //     title: "issuer_of_the_document".tr(),
                              //     stringVariants: static.geo
                              //         .findDistrictsByRegionName(_formGlobalKey
                              //             .currentState
                              //             ?.fields["admin_area_document"]
                              //             ?.value)
                              //         .map((e) => e.name)
                              //         .toList(),
                              //     onVariantTap: (text) => _formGlobalKey
                              //         .currentState?.fields["agency_document"]
                              //         ?.didChange(text),
                              //     selectedVariant: _formGlobalKey.currentState
                              //         ?.fields["agency_document"]?.value,
                              //   ),
                              // ),
                              SizedBox(height: 24),
                              InputWithVariants(
                                name: "citizenship",
                                initialValue: state
                                    .questionnaire.clientData?.residency?.value,
                                title: "are_you_an_uzbekistan_citizenship".tr(),
                                onTap: () => ModalHelpers.showModalWithVariants(
                                  context,
                                  title:
                                      "are_you_an_uzbekistan_citizenship".tr(),
                                  variants: static.dictionaries.residency,
                                  onVariantTap: (text) => _formGlobalKey
                                      .currentState?.fields["citizenship"]
                                      ?.didChange(text),
                                  selectedVariant: _formGlobalKey.currentState
                                      ?.fields["citizenship"]?.value,
                                ),
                              ),
                              SizedBox(height: 24),
                              InputWithVariants(
                                name: "country_birth",
                                initialValue: state.questionnaire.clientData
                                    ?.countryBirth?.value,
                                uneditableValue: false,
                                title: "country_of_birth".tr(),
                                onTap: () => ModalHelpers.showCountryPickModal(
                                  context,
                                  title: "country_of_birth".tr(),
                                  variants: static.geo.countryItems!,
                                  field: _formGlobalKey
                                      .currentState?.fields["country_birth"],
                                ),
                              ),
                              SizedBox(height: 24),
                              FormInputWithText(
                                "location_birth",
                                validators: [
                                  FormBuilderValidators.required(context,
                                      errorText: "Пожалуйста, заполните поле"),
                                ],
                                initialValue: state
                                    .questionnaire.clientData?.locationBirth,
                                uneditableValue: state.staticQuestionnaire
                                        .clientData?.locationBirth !=
                                    null,
                                headerText: "place_of_birth".tr(),
                              ),
                              SizedBox(height: 16),
                              Divider(),
                              SizedBox(height: 6),
                              Text(
                                "contact_details".tr(),
                                style: theme.textStyles.formTitleText,
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 12),
                              FormInputWithText(
                                "mobile_phone1",
                                validators: [
                                  FormBuilderValidators.required(context,
                                      errorText: "Пожалуйста, заполните поле"),
                                ],
                                initialValue: state.questionnaire.clientData
                                            ?.mobilePhone !=
                                        null
                                    ? _phoneMaskFormatter.maskText(state
                                        .questionnaire.clientData!.mobilePhone!)
                                    : null,
                                uneditableValue: state.staticQuestionnaire
                                        .clientData?.mobilePhone !=
                                    null,
                                hintText: "+998 78 148-00-10",
                                keyboardType: TextInputType.number,
                                maskFormatter: _phoneMaskFormatter,
                                headerText: "phone_number".tr(),
                              ),
                              SizedBox(height: 12),
                              FormInputWithText(
                                "email",
                                validators: [
                                  FormBuilderValidators.required(context,
                                      errorText: "Пожалуйста, заполните поле"),
                                  FormBuilderValidators.email(context,
                                      errorText:
                                          "Заполните адрес в формате: your@email.com"),
                                ],
                                initialValue:
                                    state.questionnaire.clientData?.email,
                                headerText: "email_address".tr(),
                              ),
                              SizedBox(height: 12),
                              Divider(),
                              SizedBox(height: 12),
                              Text(
                                "family".tr(),
                                style: theme.textStyles.formTitleText,
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 12),
                              InputWithVariants(
                                name: "marital_status",
                                initialValue: state.questionnaire
                                    .clientFamilyData?.maritalStatus?.value,
                                title: "family_status".tr(),
                                onTap: () => ModalHelpers.showModalWithVariants(
                                  context,
                                  title: "family_status".tr(),
                                  variants: static.dictionaries.maritalStatus,
                                  onVariantTap: (text) => _formGlobalKey
                                      .currentState?.fields["marital_status"]
                                      ?.didChange(text),
                                  selectedVariant: _formGlobalKey.currentState
                                      ?.fields["marital_status"]?.value,
                                ),
                              ),
                              SizedBox(height: 12),
                              Text("children_under_18".tr(),
                                  style: theme.textStyles.mediumMainText1),
                              SizedBox(height: 12),
                              SelectorForm(
                                [_firstItemChildren, _secondItemChildren],
                                rowMode: true,
                                isErrorVisible: isSelectorErrorVisible,
                              ),
                              SizedBox(height: 12),
                              isChildrenVisible
                                  ? Column(
                                      children: [
                                        FormInputWithText(
                                          "children_number",
                                          validators: [
                                            FormBuilderValidators.required(
                                                context,
                                                errorText:
                                                    "Пожалуйста, заполните поле"),
                                          ],
                                          initialValue: state.questionnaire
                                              .clientFamilyData?.childrenNumber
                                              ?.toString(),
                                          keyboardType: TextInputType.number,
                                          headerText: "Количество",
                                        ),
                                        SizedBox(height: 20),
                                      ],
                                    )
                                  : SizedBox(),
                              Divider(height: 1),
                              SizedBox(height: 12),
                              Text(
                                "education".tr(),
                                style: theme.textStyles.formTitleText,
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 12),
                              InputWithVariants(
                                name: "education",
                                initialValue: state
                                    .questionnaire.clientData?.education?.value,
                                title: "degree_of_education".tr(),
                                onTap: () => ModalHelpers.showModalWithVariants(
                                  context,
                                  title: "degree_of_education".tr(),
                                  variants: static.dictionaries.education,
                                  onVariantTap: (text) => _formGlobalKey
                                      .currentState?.fields["education"]
                                      ?.didChange(text),
                                  selectedVariant: _formGlobalKey
                                      .currentState?.fields["education"]?.value,
                                ),
                              ),
                              SizedBox(height: 12),
                              Divider(),
                              SizedBox(height: 12),
                              FormInputWithText(
                                "code_word",
                                initialValue: state.questionnaire.codeWord,
                                validators: [
                                  FormBuilderValidators.required(context,
                                      errorText: "Пожалуйста, заполните поле"),
                                ],
                                hintText: "come_up_with_code_word".tr(),
                                hintUnderFormText: "code_word_tip".tr(),
                                headerText: "codeword".tr(),
                              ),
                              SizedBox(height: 20),
                              LongButtonWithText(
                                text: "Продолжить",
                                onTap: () async {
                                  final isValid = (_formGlobalKey.currentState
                                              ?.validate() ??
                                          false) &&
                                      (_firstItemChildren.isEnabled ||
                                          _secondItemChildren.isEnabled);
                                  setState(() {
                                    _validatingMode = true;
                                    if (!(_firstItemChildren.isEnabled ||
                                        _secondItemChildren.isEnabled)) {
                                      isSelectorErrorVisible = true;
                                    }
                                  });
                                  if (!isValid) {
                                    ModalHelpers.showToastWithText(
                                      "Вы не заполнили некоторые поля анкеты",
                                    );
                                  }
                                  if (isValid) {
                                    context.router.push(AddressFormView());
                                    _formGlobalKey.currentState?.save();
                                    context.read<QuestionnaireBloc>().add(
                                        SavePersonalData(
                                            _formGlobalKey
                                                    .currentState?.value ??
                                                {},
                                            state.questionnaire));
                                  }
                                },
                              ),
                              SizedBox(height: 20),
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
        return Container();
      },
    );
  }
}
