import 'package:flutter/material.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/wallet_bloc/wallet_bloc.dart';
import 'package:solfy_flutter/styles/themes.dart';

/// Контент внутри графика на экране кошелька
class WalletNearestContent extends StatelessWidget {
  const WalletNearestContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          BlocBuilder<WalletBloc, WalletState>(
            builder: (context, state) {
              if (state is GetWalletSuccess) {
                if (state.wallet.nearestOmp.value != null && state.wallet.nearestOmp.value != 0) {
                  return Column(
                    children: [
                      SizedBox(height: 94.r),
                      Text(
                        state.wallet.nearestOmp.formattedValue,
                        style: theme.textStyles.mainBigText,
                      ),
                      Text(
                        "value_name".tr(),
                        style: theme.textStyles.valueText,
                      ),
                      SizedBox(height: 51.r),
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      SizedBox(height: 44.r),
                      Icon(
                        SolfyIcons.solfy_smile,
                        color: theme.colors.gray1,
                        size: 56.r,
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        "Здесь появится\nсумма ближайшего платежа\nпо рассрочке",
                        style: theme.textStyles.mediumMainText1,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 33.r),
                    ],
                  );
                }
              }
              return SizedBox();
            },
          ),
          BlocBuilder<WalletBloc, WalletState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: state is GetWalletSuccess
                    ? () => ModalHelpers.showComfortablePaymentUpdateModal(
                        context, ((state.wallet.comfortablePayment.value ?? 0) ~/ 100000000))
                    : null,
                child: Text(
                  state is GetWalletSuccess
                      ? state.wallet.comfortablePayment.formattedValue +
                          " " +
                          "million_sum_template".tr()
                      : "",
                  style: theme.textStyles.comfortablePaymentText,
                ),
              );
            },
          ),
          SizedBox(height: 4.r),
          Text(
            "comfort_payment".tr(),
            style: theme.textStyles.inputHeaderText,
          ),
        ],
      ),
    );
  }
}
