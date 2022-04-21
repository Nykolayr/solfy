import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/helpers/upper_case_formatter.dart';
import 'package:solfy_flutter/models/form_selector_item.dart';
import 'package:solfy_flutter/repository/static_repository.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/custom_divider.dart';
import 'package:solfy_flutter/widgets/form_input_with_text.dart';
import 'package:solfy_flutter/widgets/header_app_bar.dart';
import 'package:solfy_flutter/widgets/input_with_variants.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/selector_form.dart';

/// Третий шаг анкеты
class JobInfoFormView extends StatefulWidget {
  const JobInfoFormView({Key? key}) : super(key: key);

  @override
  _JobInfoFormViewState createState() => _JobInfoFormViewState();
}

class _JobInfoFormViewState extends State<JobInfoFormView> {
  final _scrollController = ScrollController();
  final _formGlobalKey = GlobalKey<FormBuilderState>();
  late FormSelectorItem _firstItem = FormSelectorItem(
    text: "Нет",
    onTap: () => setState(() {
      isSelectorErrorVisible = false;
      isAdditional = false;
    }),
  );
  late FormSelectorItem _secondItem = FormSelectorItem(
    text: "Есть",
    onTap: () => setState(() {
      isSelectorErrorVisible = false;
      isAdditional = true;
    }),
  );
  bool isAdditional = false;
  bool validateMode = false;
  bool isSelectorErrorVisible = false;
  bool isSelectorUneditable = false;
  bool isOwnership = false;

  @override
  void initState() {
    ModalHelpers.ftoast.init(context);
    final questionnaire =
        (context.read<QuestionnaireBloc>().state as QuestionnaireFoundSuccess)
            .questionnaire;
    if (questionnaire.clientIncome?.addIncome?.id != null) {
      if (questionnaire.clientIncome!.addIncome!.id == 1) {
        isAdditional = true;
        _secondItem.isEnabled = true;
      } else {
        isAdditional = false;
        _firstItem.isEnabled = true;
      }
      isOwnership = questionnaire.clientIncome?.addIncomeSource!.id == 13;
    }
    WidgetsBinding.instance!.addPostFrameCallback((_) => setState(() {}));
    super.initState();
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
                    "work_and_income".tr(),
                    style: theme.textStyles.mainText,
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 2.h),
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: 'step_3'.tr(),
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
                controller: _scrollController,
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
                              Text(
                                "main_income".tr(),
                                style: theme.textStyles.formTitleText,
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 12.h),
                              InputWithVariants(
                                name: "activity_type",
                                title: "primary_occupation".tr(),
                                initialValue: state.questionnaire.clientJobInfo
                                    ?.typeActivity?.value,
                                onTap: () => ModalHelpers.showModalWithVariants(
                                  context,
                                  title: "primary_occupation".tr(),
                                  variants: static.dictionaries.typeActivity,
                                  onVariantTap: (text) {
                                    _formGlobalKey
                                        .currentState?.fields["activity_type"]
                                        ?.didChange(text);
                                    setState(() {});
                                  },
                                  selectedVariant: _formGlobalKey.currentState
                                      ?.fields["activity_type"]?.value,
                                ),
                              ),
                              _formGlobalKey.currentState
                                          ?.fields["activity_type"]?.value ==
                                      "Работа по найму"
                                  ? Column(
                                      children: [
                                        SizedBox(height: 24.h),
                                        FormInputWithText(
                                          "employer_name",
                                          validators: [
                                            FormBuilderValidators.required(
                                                context,
                                                errorText:
                                                    "Пожалуйста, заполните поле"),
                                          ],
                                          errorText:
                                              "Пожалуйста, заполните поле",
                                          headerText: "employer_name".tr(),
                                          initialValue: state.questionnaire
                                              .clientJobInfo?.employerName,
                                          uneditableValue: state
                                                  .staticQuestionnaire
                                                  .clientJobInfo
                                                  ?.employerName !=
                                              null,
                                        ),
                                        SizedBox(height: 24.h),
                                        FormInputWithText(
                                          "employer_inn",
                                          validators: [
                                            FormBuilderValidators.required(
                                                context,
                                                errorText:
                                                    "Пожалуйста, заполните поле"),
                                            FormBuilderValidators.minLength(
                                                context, 9,
                                                errorText:
                                                    "Должно быть 9 символов"),
                                          ],
                                          hintText: "000000000",
                                          initialValue: state.questionnaire
                                              .clientJobInfo?.employerId,
                                          uneditableValue: state
                                                  .staticQuestionnaire
                                                  .clientJobInfo
                                                  ?.employerId !=
                                              null,
                                          keyboardType: TextInputType.number,
                                          maskFormatter: MaskTextInputFormatter(
                                            mask: "#########",
                                            filter: {"#": RegExp(r'[0-9]')},
                                          ),
                                          headerText: "employers_tin".tr(),
                                        ),
                                      ],
                                    )
                                  : SizedBox(),
                              _formGlobalKey.currentState
                                          ?.fields["activity_type"]?.value !=
                                      "Безработный"
                                  ? Column(
                                      children: [
                                        SizedBox(height: 24.h),
                                        InputWithVariants(
                                          name: "farm_type",
                                          title: "kind_of_activity".tr(),
                                          initialValue: state.questionnaire
                                              .clientJobInfo?.typeFarm?.value,
                                          onTap: () => ModalHelpers
                                              .showModalWithVariants(
                                            context,
                                            title: "kind_of_activity".tr(),
                                            variants:
                                                static.dictionaries.typeFarm,
                                            onVariantTap: (text) =>
                                                _formGlobalKey.currentState
                                                    ?.fields["farm_type"]
                                                    ?.didChange(text),
                                            selectedVariant: _formGlobalKey
                                                .currentState
                                                ?.fields["farm_type"]
                                                ?.value,
                                          ),
                                        ),
                                      ],
                                    )
                                  : SizedBox(),
                              _formGlobalKey.currentState
                                          ?.fields["activity_type"]?.value ==
                                      "Работа по найму"
                                  ? Column(
                                      children: [
                                        SizedBox(height: 24.h),
                                        InputWithVariants(
                                          name: "category",
                                          title: "position_category".tr() +
                                              'dsewe',
                                          initialValue: state
                                              .questionnaire
                                              .clientJobInfo
                                              ?.employmentPositionCategory
                                              ?.value,
                                          onTap: () => ModalHelpers
                                              .showModalWithVariants(
                                            context,
                                            title: "position_category".tr(),
                                            variants: static.dictionaries
                                                .employmentPositionCategory,
                                            onVariantTap: (text) =>
                                                _formGlobalKey.currentState
                                                    ?.fields["category"]
                                                    ?.didChange(text),
                                            selectedVariant: _formGlobalKey
                                                .currentState
                                                ?.fields["category"]
                                                ?.value,
                                          ),
                                        ),
                                        SizedBox(height: 24.h),
                                        InputWithVariants(
                                          name: "worker_number",
                                          initialValue: state
                                              .questionnaire
                                              .clientJobInfo
                                              ?.workerNumber
                                              ?.value,
                                          title:
                                              "number_of_employers_in_the_organization"
                                                  .tr(),
                                          onTap: () => ModalHelpers
                                              .showModalWithVariants(
                                            context,
                                            title:
                                                "number_of_employers_in_the_organization"
                                                    .tr(),
                                            variants: static
                                                .dictionaries.workerNumber,
                                            onVariantTap: (text) =>
                                                _formGlobalKey.currentState
                                                    ?.fields["worker_number"]
                                                    ?.didChange(text),
                                            selectedVariant: _formGlobalKey
                                                .currentState
                                                ?.fields["worker_number"]
                                                ?.value,
                                          ),
                                        ),
                                        SizedBox(height: 24.h),
                                        InputWithVariants(
                                          name: "last_work_experience",
                                          initialValue: state
                                              .questionnaire
                                              .clientJobInfo
                                              ?.lastWorkExperience
                                              ?.value,
                                          title: "last_work_experience".tr(),
                                          onTap: () => ModalHelpers
                                              .showModalWithVariants(
                                            context,
                                            title: "last_work_experience".tr(),
                                            variants: static.dictionaries
                                                .lastWorkExperience,
                                            onVariantTap: (text) =>
                                                _formGlobalKey
                                                    .currentState
                                                    ?.fields[
                                                        "last_work_experience"]
                                                    ?.didChange(text),
                                            selectedVariant: _formGlobalKey
                                                .currentState
                                                ?.fields["last_work_experience"]
                                                ?.value,
                                          ),
                                        ),
                                      ],
                                    )
                                  : SizedBox(),
                              _formGlobalKey.currentState
                                          ?.fields["activity_type"]?.value !=
                                      "Безработный"
                                  ? Column(
                                      children: [
                                        SizedBox(height: 24.h),
                                        InputWithVariants(
                                          name: "work_experience",
                                          initialValue: state
                                              .questionnaire
                                              .clientJobInfo
                                              ?.workExperience
                                              ?.value,
                                          title: _formGlobalKey
                                                      .currentState
                                                      ?.fields["activity_type"]
                                                      ?.value ==
                                                  "Работа по найму"
                                              ? "total_work_experience".tr()
                                              : "Срок деятельности",
                                          onTap: () => ModalHelpers
                                              .showModalWithVariants(
                                            context,
                                            title: _formGlobalKey
                                                        .currentState
                                                        ?.fields[
                                                            "activity_type"]
                                                        ?.value ==
                                                    "Работа по найму"
                                                ? "total_work_experience".tr()
                                                : "Срок деятельности",
                                            variants: static
                                                .dictionaries.workExperience,
                                            onVariantTap: (text) =>
                                                _formGlobalKey.currentState
                                                    ?.fields["work_experience"]
                                                    ?.didChange(text),
                                            selectedVariant: _formGlobalKey
                                                .currentState
                                                ?.fields["work_experience"]
                                                ?.value,
                                          ),
                                        ),
                                      ],
                                    )
                                  : SizedBox(),
                              SizedBox(height: 24.h),
                              FormInputWithText(
                                "monthly_income",
                                validators: [
                                  FormBuilderValidators.required(context,
                                      errorText: "Пожалуйста, заполните поле"),
                                ],
                                // initialValue:
                                // state.questionnaire.clientIncome?.monthlyIncome?.toString(),
                                initialValue: ThousandsSeparatorInputFormatter()
                                    .formatEditUpdate(
                                        TextEditingValue(text: ''),
                                        TextEditingValue(
                                            text: state.questionnaire
                                                    .clientIncome?.monthlyIncome
                                                    ?.toString() ??
                                                ""))
                                    .text,
                                uneditableValue: state.staticQuestionnaire
                                        .clientIncome?.monthlyIncome !=
                                    null,
                                hintText: "enter_a_sum".tr(),
                                customFormatter:
                                    ThousandsSeparatorInputFormatter(),
                                keyboardType: TextInputType.number,
                                headerText: "officially_monthly_income".tr(),
                              ),
                              SizedBox(height: 24.h),
                              FormInputWithText(
                                "monthly_expenses",
                                validators: [
                                  FormBuilderValidators.required(context,
                                      errorText: "Пожалуйста, заполните поле"),
                                ],
                                hintText: "enter_a_sum".tr(),
                                // initialValue:
                                // state.questionnaire.clientIncome?.monthlyExpenses?.toString(),
                                initialValue: ThousandsSeparatorInputFormatter()
                                    .formatEditUpdate(
                                        TextEditingValue(text: ''),
                                        TextEditingValue(
                                            text: state
                                                    .questionnaire
                                                    .clientIncome
                                                    ?.monthlyExpenses
                                                    ?.toString() ??
                                                ""))
                                    .text,
                                uneditableValue: state.staticQuestionnaire
                                        .clientIncome?.monthlyExpenses !=
                                    null,
                                customFormatter:
                                    ThousandsSeparatorInputFormatter(),
                                keyboardType: TextInputType.number,
                                hintUnderFormText: "periodic_expenses_tip".tr(),
                                headerText: "periodic_expenses".tr(),
                              ),
                              SizedBox(height: 24.h),
                              FormInputWithText(
                                "loan_expenses",
                                validators: [
                                  FormBuilderValidators.required(context,
                                      errorText: "Пожалуйста, заполните поле"),
                                ],
                                hintText: "enter_a_sum".tr(),
                                // initialValue:
                                //     state.questionnaire.clientIncome?.loanExpenses?.toString(),
                                initialValue: ThousandsSeparatorInputFormatter()
                                    .formatEditUpdate(
                                        TextEditingValue(text: ''),
                                        TextEditingValue(
                                            text: state.questionnaire
                                                    .clientIncome?.loanExpenses
                                                    ?.toString() ??
                                                ""))
                                    .text,
                                uneditableValue: state.staticQuestionnaire
                                        .clientIncome?.loanExpenses !=
                                    null,
                                customFormatter:
                                    ThousandsSeparatorInputFormatter(),
                                keyboardType: TextInputType.number,
                                hintUnderFormText:
                                    "Если у вас нет других кредитов — укажите 0",
                                headerText:
                                    "monthly_payments_on_other_loans".tr(),
                              ),
                              CustomDivider(12),
                              Text(
                                "additional_income".tr(),
                                style: theme.textStyles.formTitleText,
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 12.h),
                              SelectorForm(
                                [_firstItem, _secondItem],
                                rowMode: true,
                                isErrorVisible: isSelectorErrorVisible,
                              ),
                              isAdditional
                                  ? Column(
                                      children: [
                                        SizedBox(height: 12.h),
                                        FormInputWithText(
                                          "additional",
                                          validators: [
                                            FormBuilderValidators.required(
                                                context,
                                                errorText:
                                                    "Пожалуйста, заполните поле"),
                                          ],
                                          initialValue:
                                              ThousandsSeparatorInputFormatter()
                                                  .formatEditUpdate(
                                                      TextEditingValue(
                                                          text: ''),
                                                      TextEditingValue(
                                                          text: state
                                                                  .questionnaire
                                                                  .clientIncome
                                                                  ?.addIncomeAmount
                                                                  ?.toString() ??
                                                              ""))
                                                  .text,
                                          customFormatter:
                                              ThousandsSeparatorInputFormatter(),
                                          keyboardType: TextInputType.number,
                                          hintText: "enter_a_sum".tr(),
                                          headerText:
                                              "amount_of_additional_income"
                                                  .tr(),
                                        ),
                                        SizedBox(height: 24.h),
                                        InputWithVariants(
                                            name: "additional_type",
                                            initialValue: state
                                                .questionnaire
                                                .clientIncome
                                                ?.addIncomeSource
                                                ?.value,
                                            title: "source_of_additional_income"
                                                .tr(),
                                            onTap: () {
                                              ModalHelpers
                                                  .showModalWithVariants(
                                                context,
                                                title:
                                                    "source_of_additional_income"
                                                        .tr(),
                                                variants: static.dictionaries
                                                    .addIncomeSource,
                                                onVariantTap: (text) {
                                                  _formGlobalKey
                                                      .currentState
                                                      ?.fields[
                                                          "additional_type"]
                                                      ?.didChange(text);
                                                  setState(() {
                                                    isOwnership = text.contains(
                                                        'Аренда недвижимого имущества');
                                                  });
                                                },
                                                selectedVariant: _formGlobalKey
                                                    .currentState
                                                    ?.fields["additional_type"]
                                                    ?.value,
                                              );
                                            }),
                                        // if (isOwnership)
                                        //   Column(
                                        //     children: [
                                        //       SizedBox(height: 24.h),
                                        //       InputWithVariants(
                                        //           name: "type_property",
                                        //           initialValue: state
                                        //               .questionnaire
                                        //               .clientIncome
                                        //               ?.addIncome
                                        //               ?.value,
                                        //           title:
                                        //               "real_estate_type".tr(),
                                        //           onTap: () {
                                        //             ModalHelpers
                                        //                 .showModalWithVariants(
                                        //               context,
                                        //               title: "real_estate_type"
                                        //                   .tr(),
                                        //               variants: static
                                        //                   .dictionaries
                                        //                   .typeProperty,
                                        //               onVariantTap: (text) =>
                                        //                   _formGlobalKey
                                        //                       .currentState
                                        //                       ?.fields[
                                        //                           "type_property"]
                                        //                       ?.didChange(text),
                                        //               selectedVariant:
                                        //                   _formGlobalKey
                                        //                       .currentState
                                        //                       ?.fields[
                                        //                           "type_property"]
                                        //                       ?.value,
                                        //             );
                                        //           }),
                                        //       SizedBox(height: 24.h),
                                        //       InputWithVariants(
                                        //           name: "type_ownership",
                                        //           initialValue: state
                                        //               .questionnaire
                                        //               .clientIncome
                                        //               ?.addIncomeSource
                                        //               ?.value,
                                        //           title: "type_ownership".tr(),
                                        //           onTap: () {
                                        //             ModalHelpers
                                        //                 .showModalWithVariants(
                                        //               context,
                                        //               title:
                                        //                   "type_ownership".tr(),
                                        //               variants: static
                                        //                   .dictionaries
                                        //                   .typeOwnership,
                                        //               onVariantTap: (text) =>
                                        //                   _formGlobalKey
                                        //                       .currentState
                                        //                       ?.fields[
                                        //                           "type_ownership"]
                                        //                       ?.didChange(text),
                                        //               selectedVariant:
                                        //                   _formGlobalKey
                                        //                       .currentState
                                        //                       ?.fields[
                                        //                           "type_ownership"]
                                        //                       ?.value,
                                        //             );
                                        //           }),
                                        //     ],
                                        //   ),
                                      ],
                                    )
                                  : SizedBox(),
                              SizedBox(height: 24.h),
                              LongButtonWithText(
                                text: "Продолжить",
                                onTap: () async {
                                  final isValid =
                                      _formGlobalKey.currentState?.validate() ??
                                          false;
                                  setState(() {
                                    validateMode = true;
                                    if (!(_firstItem.isEnabled ||
                                        _secondItem.isEnabled)) {
                                      isSelectorErrorVisible = true;
                                    }
                                  });
                                  if (!isValid || isSelectorErrorVisible) {
                                    ModalHelpers.showToastWithText(
                                        "Вы не заполнили некоторые поля анкеты");
                                  }
                                  if (isValid && !isSelectorErrorVisible) {
                                    context.router.push(PropertyFormView());
                                    _formGlobalKey.currentState?.save();
                                    await Future.delayed(
                                      Duration(
                                        milliseconds: 200,
                                      ),
                                    );
                                    context.read<QuestionnaireBloc>().add(
                                          SaveJobData(
                                            _formGlobalKey
                                                    .currentState?.value ??
                                                {},
                                            state.questionnaire,
                                          ),
                                        );
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
        return SizedBox();
      },
    );
  }
}
