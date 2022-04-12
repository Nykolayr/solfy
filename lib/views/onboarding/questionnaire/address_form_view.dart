import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/enums.dart';
import 'package:solfy_flutter/models/form_item_model.dart';
import 'package:solfy_flutter/models/form_selector_item.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/address_form.dart';
import 'package:solfy_flutter/widgets/header_app_bar.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/selector_form.dart';

/// Второй шаг анкеты
class AddressFormView extends StatefulWidget {
  const AddressFormView({Key? key}) : super(key: key);

  @override
  _AddressFormViewState createState() => _AddressFormViewState();
}

class _AddressFormViewState extends State<AddressFormView> {
  final _formGlobalKey = GlobalKey<FormBuilderState>();
  bool isTempAddressVisible = false;
  bool isFactAddressVisible = false;
  bool validationEnabled = false;
  bool isSelectorsUneditable = false;
  bool isSelectorErrorVisible = false;
  late FormSelectorItem _firstItem = FormSelectorItem(
    text: "equals_to_the_permanent_registration_address".tr(),
    onTap: () => setState(() {
      isSelectorErrorVisible = false;
      isFactAddressVisible = false;
    }),
  );
  late FormSelectorItem _secondItem = FormSelectorItem(
    text: "equals_to_temp_registration_address".tr(),
    onTap: () => setState(() {
      isSelectorErrorVisible = false;
      isFactAddressVisible = false;
    }),
  );
  late FormSelectorItem _thirdItem = _thirdItem = FormSelectorItem(
    text: "lives_at_another_address".tr(),
    onTap: () => setState(() {
      isSelectorErrorVisible = false;
      isFactAddressVisible = true;
    }),
  );
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    ModalHelpers.ftoast.init(context);
    final questionnaire =
        (context.read<QuestionnaireBloc>().state as QuestionnaireFoundSuccess).questionnaire;
    // Устанавливаем видимость адрес временной регистрации
    if (questionnaire.clientTemporaryAddress?.adminArea != null) {
      isTempAddressVisible = true;
    }
    // Устанавливаем флаг адреса фактического проживания
    if (questionnaire.clientLivingAddress?.adminArea != null) {
      if (questionnaire.clientLivingAddress == questionnaire.clientRegistrationAddress) {
        _firstItem.isEnabled = true;
      } else {
        if (questionnaire.clientLivingAddress == questionnaire.clientTemporaryAddress) {
          _secondItem.isEnabled = true;
        } else {
          _thirdItem.isEnabled = true;
          isFactAddressVisible = true;
        }
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
      builder: (context, state) {
        if (state is QuestionnaireFoundSuccess) {
          return Scaffold(
            appBar: HeaderAppBar(
              customTitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "address".tr(),
                    style: theme.textStyles.mainText,
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 2.h),
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: 'step_2'.tr(),
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
                      child: FormBuilder(
                        autovalidateMode: validationEnabled
                            ? AutovalidateMode.onUserInteraction
                            : AutovalidateMode.disabled,
                        key: _formGlobalKey,
                        child: SafeArea(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8.h),
                              Text(
                                "permanent_registration_address".tr(),
                                style: theme.textStyles.formTitleText,
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 12.h),
                              AddressForm(
                                globalKey: _formGlobalKey,
                                regionItem: FormItemModel(
                                  name: "region",
                                  uneditableValue: state.staticQuestionnaire
                                          .clientRegistrationAddress?.adminArea !=
                                      null,
                                  initialValue: state
                                      .questionnaire.clientRegistrationAddress?.adminArea?.value,
                                ),
                                districtItem: FormItemModel(
                                  name: "district",
                                  uneditableValue: state.staticQuestionnaire
                                          .clientRegistrationAddress?.district !=
                                      null,
                                  initialValue: state
                                      .questionnaire.clientRegistrationAddress?.district?.value,
                                ),
                                cityItem: FormItemModel(
                                  name: "city",
                                  uneditableValue: state.staticQuestionnaire
                                          .clientRegistrationAddress?.locality !=
                                      null,
                                  initialValue:
                                      state.questionnaire.clientRegistrationAddress?.locality,
                                ),
                                streetItem: FormItemModel(
                                  name: "street",
                                  uneditableValue:
                                      state.staticQuestionnaire.clientRegistrationAddress?.street !=
                                          null,
                                  initialValue:
                                      state.questionnaire.clientRegistrationAddress?.street,
                                ),
                                houseItem: FormItemModel(
                                  name: "house",
                                  uneditableValue: state.staticQuestionnaire
                                          .clientRegistrationAddress?.houseNumber !=
                                      null,
                                  initialValue:
                                      state.questionnaire.clientRegistrationAddress?.houseNumber,
                                ),
                                apartmentItem: FormItemModel(
                                  name: "apartment",
                                  uneditableValue: state.staticQuestionnaire
                                          .clientRegistrationAddress?.apartmentNumber !=
                                      null,
                                  initialValue: state
                                      .questionnaire.clientRegistrationAddress?.apartmentNumber,
                                ),
                                typeItem: FormItemModel(
                                  name: "type",
                                  uneditableValue: state.staticQuestionnaire
                                          .clientRegistrationAddress?.typeOwnership !=
                                      null,
                                  initialValue: state.questionnaire.clientRegistrationAddress
                                      ?.typeOwnership?.value,
                                ),
                              ),
                              SizedBox(height: 20.h),
                              !isTempAddressVisible
                                  ? Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 12.h),
                                        GestureDetector(
                                          onTap: () => setState(() => isTempAddressVisible = true),
                                          child: Text(
                                            "add_temp_registration_address".tr(),
                                            style: theme.textStyles.formTextClickable,
                                          ),
                                        ),
                                        SizedBox(height: 22.h),
                                      ],
                                    )
                                  : SizedBox(),
                              isTempAddressVisible
                                  ? Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Divider(height: 0),
                                        SizedBox(height: 16.h),
                                        Text(
                                          "temp_registration_address".tr(),
                                          style: theme.textStyles.formTitleText,
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(height: 14.h),
                                        GestureDetector(
                                          onTap: () => setState(() => isTempAddressVisible = false),
                                          child: Text(
                                            "Удалить",
                                            style: theme.textStyles.formTextClickable,
                                          ),
                                        ),
                                        SizedBox(height: 26.h),
                                        AddressForm(
                                          globalKey: _formGlobalKey,
                                          regionItem: FormItemModel(
                                            name: "temp_region",
                                            uneditableValue: state.staticQuestionnaire
                                                    .clientTemporaryAddress?.adminArea !=
                                                null,
                                            initialValue: state.questionnaire.clientTemporaryAddress
                                                ?.adminArea?.value,
                                          ),
                                          districtItem: FormItemModel(
                                            name: "temp_district",
                                            uneditableValue: state.staticQuestionnaire
                                                    .clientTemporaryAddress?.district !=
                                                null,
                                            initialValue: state.questionnaire.clientTemporaryAddress
                                                ?.district?.value,
                                          ),
                                          cityItem: FormItemModel(
                                            name: "temp_city",
                                            uneditableValue: state.staticQuestionnaire
                                                    .clientTemporaryAddress?.locality !=
                                                null,
                                            initialValue: state
                                                .questionnaire.clientTemporaryAddress?.locality,
                                          ),
                                          streetItem: FormItemModel(
                                            name: "temp_street",
                                            uneditableValue: state.staticQuestionnaire
                                                    .clientTemporaryAddress?.street !=
                                                null,
                                            initialValue:
                                                state.questionnaire.clientTemporaryAddress?.street,
                                          ),
                                          houseItem: FormItemModel(
                                            name: "temp_house",
                                            uneditableValue: state.staticQuestionnaire
                                                    .clientTemporaryAddress?.houseNumber !=
                                                null,
                                            initialValue: state
                                                .questionnaire.clientTemporaryAddress?.houseNumber,
                                          ),
                                          apartmentItem: FormItemModel(
                                            name: "temp_apartment",
                                            uneditableValue: state.staticQuestionnaire
                                                    .clientTemporaryAddress?.apartmentNumber !=
                                                null,
                                            initialValue: state.questionnaire.clientTemporaryAddress
                                                ?.apartmentNumber,
                                          ),
                                          typeItem: FormItemModel(
                                            name: "temp_type",
                                            uneditableValue: state.staticQuestionnaire
                                                    .clientTemporaryAddress?.typeOwnership !=
                                                null,
                                            initialValue: state.questionnaire.clientTemporaryAddress
                                                ?.typeOwnership?.value,
                                          ),
                                        ),
                                        Divider(height: 0),
                                        SizedBox(height: 16.h),
                                      ],
                                    )
                                  : SizedBox(),
                              Divider(height: 0),
                              SizedBox(height: 16.h),
                              Text(
                                "fact_registration_address".tr(),
                                style: theme.textStyles.formTitleText,
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 20.h),
                              SelectorForm(
                                [
                                  _firstItem,
                                  isTempAddressVisible ? _secondItem : null,
                                  _thirdItem,
                                ],
                                isErrorVisible: isSelectorErrorVisible,
                              ),
                              isFactAddressVisible
                                  ? Column(
                                      children: [
                                        SizedBox(height: 24.h),
                                        AddressForm(
                                          globalKey: _formGlobalKey,
                                          regionItem: FormItemModel(
                                            name: "fact_region",
                                            uneditableValue: state.staticQuestionnaire
                                                    .clientLivingAddress?.adminArea !=
                                                null,
                                            initialValue: state.questionnaire.clientLivingAddress
                                                ?.adminArea?.value,
                                          ),
                                          districtItem: FormItemModel(
                                            name: "fact_district",
                                            uneditableValue: state.staticQuestionnaire
                                                    .clientLivingAddress?.district !=
                                                null,
                                            initialValue: state
                                                .questionnaire.clientLivingAddress?.district?.value,
                                          ),
                                          cityItem: FormItemModel(
                                            name: "fact_city",
                                            uneditableValue: state.staticQuestionnaire
                                                    .clientLivingAddress?.locality !=
                                                null,
                                            initialValue:
                                                state.questionnaire.clientLivingAddress?.locality,
                                          ),
                                          streetItem: FormItemModel(
                                            name: "fact_street",
                                            uneditableValue: state.staticQuestionnaire
                                                    .clientLivingAddress?.street !=
                                                null,
                                            initialValue:
                                                state.questionnaire.clientLivingAddress?.street,
                                          ),
                                          houseItem: FormItemModel(
                                            name: "fact_house",
                                            uneditableValue: state.staticQuestionnaire
                                                    .clientLivingAddress?.houseNumber !=
                                                null,
                                            initialValue: state
                                                .questionnaire.clientLivingAddress?.houseNumber,
                                          ),
                                          apartmentItem: FormItemModel(
                                            name: "fact_apartment",
                                            uneditableValue: state.staticQuestionnaire
                                                    .clientLivingAddress?.apartmentNumber !=
                                                null,
                                            initialValue: state
                                                .questionnaire.clientLivingAddress?.apartmentNumber,
                                          ),
                                          typeItem: FormItemModel(
                                            name: "fact_type",
                                            uneditableValue: state.staticQuestionnaire
                                                    .clientLivingAddress?.typeOwnership !=
                                                null,
                                            initialValue: state.questionnaire.clientLivingAddress
                                                ?.typeOwnership?.value,
                                          ),
                                        ),
                                      ],
                                    )
                                  : SizedBox(),
                              SizedBox(height: 24.h),
                              LongButtonWithText(
                                text: "Продолжить",
                                onTap: () async {
                                  final isValid = _formGlobalKey.currentState?.validate() ?? false;
                                  setState(() {
                                    validationEnabled = true;
                                    if (!(_firstItem.isEnabled ||
                                        _secondItem.isEnabled ||
                                        _thirdItem.isEnabled)) {
                                      isSelectorErrorVisible = true;
                                    }
                                  });
                                  if (!isValid || isSelectorErrorVisible) {
                                    ModalHelpers.showToastWithText(
                                        "Вы не заполнили некоторые поля анкеты");
                                  }
                                  if (isValid && !isSelectorErrorVisible) {
                                    context.router.push(JobInfoFormView());
                                    _formGlobalKey.currentState?.save();
                                    final factSelector = _firstItem.isEnabled
                                        ? FactAddressSelector.SameAsRegistrationAddress
                                        : _secondItem.isEnabled
                                            ? FactAddressSelector.SameAsTempAddress
                                            : FactAddressSelector.New;
                                    context.read<QuestionnaireBloc>().add(
                                          SaveAddressData(
                                            _formGlobalKey.currentState?.value ?? {},
                                            state.questionnaire,
                                            factSelector,
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
