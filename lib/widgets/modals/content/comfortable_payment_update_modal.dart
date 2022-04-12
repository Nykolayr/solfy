import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/bloc/wallet_bloc/wallet_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

class ComfortablePaymentUpdateModal extends StatefulWidget {
  const ComfortablePaymentUpdateModal(this.value);

  final int value;
  @override
  _ComfortablePaymentUpdateModalState createState() => _ComfortablePaymentUpdateModalState();
}

class _ComfortablePaymentUpdateModalState extends State<ComfortablePaymentUpdateModal> {
  late int _currentNumber;
  @override
  void initState() {
    _currentNumber = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 4.w),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: BaseIconGesturesWrapper(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    SolfyIcons.close,
                    color: theme.colors.secondaryItemsColor,
                    size: 24.r,
                  ),
                  iconSize: 24,
                ),
              ),
            ],
          ),
          Text(
            "comfort_payment_title".tr(),
            style: theme.textStyles.smsCodeText,
          ),
          SizedBox(height: 16.h),
          Text(
            "comfort_payment_subtitle".tr(),
            style: theme.textStyles.faqAnswerText,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                alignment: Alignment.centerRight,
                height: 300.h,
                width: 330.w,
                child: Text(
                  "million_sum_template".tr(),
                  style: theme.textStyles.captionPaymentText,
                ),
              ),
              Container(
                height: 300.h,
                width: 100.w,
                child: NumberPicker(
                  haptics: true,
                  itemCount: 5,
                  itemHeight: 60.h,
                  value: _currentNumber,
                  textStyle: theme.textStyles.unselectedPaymentText,
                  selectedTextStyle: theme.textStyles.selectedPaymentText,
                  minValue: 1,
                  maxValue: 100,
                  onChanged: (value) => setState(() => _currentNumber = value),
                ),
              ),
              IgnorePointer(
                child: Container(
                  alignment: Alignment.topCenter,
                  height: 300.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      tileMode: TileMode.mirror,
                      begin: Alignment.topCenter,
                      colors: [
                        Colors.white,
                        Colors.white.withOpacity(0),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.h),
          GestureDetector(
            onTap: () => ModalHelpers.showWalletCarouselModal(context),
            child: Text(
              "how_it_works".tr(),
              style: theme.textStyles.clickableForgotCodeText,
            ),
          ),
          SizedBox(height: 16.h),
          LongButtonWithText(
            text: "set".tr(),
            onTap: () async {
              context.read<WalletBloc>().add(ComfortablePaymentUpdate(_currentNumber));
              await context.router.pop();
            },
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
