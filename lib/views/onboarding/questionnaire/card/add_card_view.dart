import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/services/form_builder_validators.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solfy_flutter/views/onboarding/questionnaire/card/bloc/card_bloc.dart';
import 'package:solfy_flutter/views/onboarding/questionnaire/card/codeCard.dart';
import 'package:solfy_flutter/widgets/form_input_with_text.dart';
import 'package:solfy_flutter/widgets/header_app_bar.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';

/// Экран с вводом карты
class AddCardView extends StatefulWidget {
  final String insurance_premium;
  const AddCardView({
    Key? key,
    required this.insurance_premium,
  }) : super(key: key);

  @override
  _AddCardViewState createState() => _AddCardViewState();
}

class _AddCardViewState extends State<AddCardView> {
  bool validationMode = false;
  bool loadingButtonMode = false;
  final _formKey = GlobalKey<FormBuilderState>();
  bool isError = false;
  String errorMessage = '';
  String errorCode = '';
  bool isLoad = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Scaffold(
      appBar: HeaderAppBar(
        customTitle: Text(
          tr('add_card'),
          style: theme.textStyles.mainText,
          textAlign: TextAlign.left,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: BlocListener<CardBloc, CardState>(
            listener: (context, state) {
              print('AddCardView >>>>>>>>>>>>>> $state');

              if (state is CardLoad) {
                isLoad = true;
                ModalHelpers.showLoadingModal(context);
              } else {
                if (isLoad) Navigator.pop(context);
                isLoad = false;
              }
              if (state is CardError) {
                print(
                    'object === >>>>>>> ${state.error.errors!.first.toJson()}');
                ModalHelpers.showError(context, state.error);
              }
              if (state is CardSuccess) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SmsCodeCardView()),
                );
              }
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 12.h,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Text(
                          "show_data_card".tr(),
                          style: theme.textStyles.faqAnswerText,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      FormBuilder(
                        key: _formKey,
                        child: Column(
                          children: [
                            FormInputWithText(
                              "card_number",
                              initialValue: '',
                              validators: [
                                FormBuilderValidators.required(context,
                                    errorText: tr('fill_field')),
                                FormBuilderValidators.minLength(context, 19,
                                    errorText:
                                        tr('Must_characters', args: ['16'])),
                                FormBuilderValidatorsUser.validCard(context,
                                    errorText: tr('must_start_with')),
                              ],
                              headerText: "card_number".tr(),
                              hintText: "0000 0000 0000 0000",
                              isSuffixInStack: true,
                              keyboardType: TextInputType.number,
                              maskFormatter: MaskTextInputFormatter(
                                mask: "#### #### #### ####",
                                filter: {"#": RegExp(r'[0-9]')},
                              ),
                            ),
                            SizedBox(height: 24.h),
                            FormInputWithText(
                              "date_card",
                              initialValue: '',
                              validators: [
                                FormBuilderValidators.required(context,
                                    errorText: tr('fill_field')),
                                FormBuilderValidatorsUser.validPeriod(context,
                                    errorText: tr('validity_period')),
                                FormBuilderValidatorsUser.trueMonth(context,
                                    errorText: tr('wrong_month')),
                                FormBuilderValidators.minLength(context, 5,
                                    errorText:
                                        tr('Must_characters', args: ['4'])),
                              ],
                              headerText: "validity".tr(),
                              hintText: "00/00",
                              isSuffixInStack: true,
                              keyboardType: TextInputType.number,
                              maskFormatter: MaskTextInputFormatter(
                                mask: "##/##",
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
                  LongButtonWithText(
                    text: isError
                        ? tr('understand')
                        : tr(
                            'pay_summa',
                            args: [widget.insurance_premium],
                          ),
                    onTap: () async {
                      final isValid =
                          _formKey.currentState?.validate() ?? false;
                      setState(() {
                        validationMode = true;
                      });
                      if (isValid) {
                        _formKey.currentState!.save();
                        String numberCard = (_formKey
                                .currentState!.value['card_number'] as String)
                            .replaceAll(' ', '');
                        String dataCard =
                            _formKey.currentState!.value['date_card'];
                        _formKey.currentState!.save();
                        FocusScope.of(context).unfocus();
                        isError = true;
                        context.read<CardBloc>().add(
                              PressAddCard(
                                numberCard: numberCard,
                                dataCard: dataCard,
                                insurance_premium: widget.insurance_premium,
                              ),
                            );
                        // if (!isError) {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => SmsCodeCardView()),
                        //   );
                        // }
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
