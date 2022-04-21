import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';
import 'package:localstorage/localstorage.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/form_input_with_text.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/passport_form_fields.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Экран с краткой анкетой пользователя для получения полной с сервера

class ShortFormView extends StatefulWidget {
  const ShortFormView({
    Key? key,
  }) : super(key: key);

  @override
  _ShortFormViewState createState() => _ShortFormViewState();
}

class _ShortFormViewState extends State<ShortFormView> {
  bool validationMode = false;
  bool loadingButtonMode = false;
  final _formKey = GlobalKey<FormBuilderState>();
  String? _seriaStored = "";
  String? _numberStored = "";
  String? _pinflStored = "";
  late LocalStorage store;
  @override
  void initState() {
    store = LocalStorage("auth");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();
    try {
      _seriaStored = store.getItem("passportSeries");
      _numberStored = store.getItem("passportName");
      _pinflStored = store.getItem("pin_fl");
      if (_pinflStored == '') print('LocalStorage error $_pinflStored');
    } catch (e) {}
    return Scaffold(
      appBar: AppBar(
        leading: BaseIconGesturesWrapper(
          onTap: () async {
            if (store.getItem("error") != '') {
              _seriaStored = "";
              _numberStored = "";
              _pinflStored = "";
              store.setItem("passportSeries", '');
              store.setItem("passportName", '');
              store.setItem("pin_fl", '');
              store.setItem("error", '');
            }

            context.router.replaceAll([BaseTabRoute()]);
          },
          child: Icon(
            SolfyIcons.close,
            color: theme.colors.secondaryItemsColor,
            size: 24.w,
          ),
          iconSize: 24,
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: FooterLayout(
          footer: Padding(
            padding: EdgeInsets.only(
              bottom:
                  MediaQuery.of(context).viewInsets.bottom == 0 ? 24.h : 16.h,
              right: 16,
              left: 16,
              top: 16,
            ),
            child: loadingButtonMode
                ? LoadingRingAnimation()
                : LongButtonWithText(
                    text: "continue".tr(),
                    isLoadingMode: loadingButtonMode,
                    onTap: () async {
                      final isValid =
                          _formKey.currentState?.validate() ?? false;
                      setState(() {
                        validationMode = true;
                      });
                      if (isValid) {
                        _formKey.currentState?.save();
                        var store = LocalStorage("auth");
                        store.setItem("passportSeries",
                            _formKey.currentState?.value["passportSeries"]);
                        store.setItem("passportName",
                            _formKey.currentState?.value["passportName"]);
                        store.setItem(
                            "pin_fl", _formKey.currentState?.value["pin_fl"]);
                        context.read<QuestionnaireBloc>().add(
                              ClientSearch(
                                series: _formKey
                                    .currentState?.value["passportSeries"],
                                number: _formKey
                                    .currentState?.value["passportName"],
                                pinFl: _formKey.currentState?.value["pin_fl"],
                              ),
                            );
                        context.router
                            .replaceAll([YourRequestWaitingChatView()]);
                      }
                    },
                  ),
          ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          child: Text(
                            "enter_passport_data".tr(),
                            style: theme.textStyles.mainBigText,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 24.h),
                        FormBuilder(
                          key: _formKey,
                          child: Column(
                            children: [
                              PassportFormFields(
                                seriesName: "passportSeries",
                                numberName: "passportName",
                                initialSeries: _seriaStored,
                                initialNumber: _numberStored,
                              ),
                              SizedBox(height: 24.h),
                              FormInputWithText(
                                "pin_fl",
                                initialValue: _pinflStored,
                                validators: [
                                  FormBuilderValidators.required(context,
                                      errorText: "Пожалуйста, заполните поле"),
                                  FormBuilderValidators.minLength(context, 14,
                                      errorText: "Должно быть 14 символов"),
                                ],
                                headerText: "pin_fl".tr(),
                                hintText: "00000000000000",
                                isSuffixInStack: true,
                                suffixIcon: Icon(SolfyIcons.info,
                                    size: 24.r, color: theme.colors.gray1),
                                onSuffixTap: () =>
                                    ModalHelpers.showPinFlModal(context),
                                keyboardType: TextInputType.number,
                                maskFormatter: MaskTextInputFormatter(
                                  mask: "##############",
                                  filter: {"#": RegExp(r'[0-9]')},
                                ),
                              ),
                            ],
                          ),
                          autovalidateMode: validationMode
                              ? AutovalidateMode.onUserInteraction
                              : AutovalidateMode.disabled,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
