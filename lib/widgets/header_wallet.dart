import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/bloc/wallet_bloc/wallet_bloc.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/wallet_chart.dart';
import 'package:solfy_flutter/widgets/wallet_nearest_content.dart';

/// AppBar кошелька
class HeaderWallet extends StatelessWidget {
  const HeaderWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 12.h + MediaQuery.of(context).padding.top),
        Container(
          width: 312.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.10),
                spreadRadius: 0,
                blurRadius: 32,
                offset: Offset(0, 16),
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                spreadRadius: 0,
                blurRadius: 2,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              BlocBuilder<WalletBloc, WalletState>(
                builder: (context, state) {
                  if (state is GetWalletSuccess && state.wallet.nearestOmp.value != 0) {
                    return Column(
                      children: [
                        SizedBox(height: 24.r),
                        state.wallet.nearestOmp != 0
                            ? Text(
                                "nearest_date_payment".tr() + (state.wallet.nearestOmpDate),
                                style: theme.textStyles.inputHeaderText,
                                textAlign: TextAlign.center,
                              )
                            : SizedBox(),
                      ],
                    );
                  }
                  return SizedBox(height: 20);
                },
              ),
              SizedBox(height: 16.r),
              Container(
                width: 230.w,
                height: 240.r,
                child: Stack(
                  children: [
                    BlocBuilder<WalletBloc, WalletState>(
                      builder: (context, state) {
                        if (state is GetWalletSuccess)
                          return CustomPaint(
                            size: Size(240.r, 240.r),
                            painter: WalletChart(
                              state.wallet.nearestOmp.value?.toDouble() ?? 0,
                              state.wallet.comfortablePayment.value?.toDouble() ?? 0,
                            ),
                          );
                        return CustomPaint(
                          size: Size(240.r, 240.r),
                          painter: WalletChart(
                            1,
                            1,
                          ),
                        );
                      },
                    ),
                    const WalletNearestContent(),
                  ],
                ),
              ),
              SizedBox(height: 20.r),
              LongButtonWithText(
                text: "way_to_pay".tr(),
                width: 141.w,
                height: 34.r,
                fontSize: 14.sp,
                onTap: () => null,
              ),
              SizedBox(height: 16.r),
              Text(
                "available_limit".tr(),
                style: theme.textStyles.faqAnswerText,
              ),
              SizedBox(height: 4.r),
              BlocBuilder<WalletBloc, WalletState>(
                builder: (context, state) {
                  return Text(
                    state is GetWalletSuccess
                        ? state.wallet.availableBalance.formattedValue + " сум"
                        : "",
                    style: theme.textStyles.blackRoboto2,
                  );
                },
              ),
              SizedBox(height: 16.r),
              Stack(
                children: [
                  Container(
                    width: 172.w,
                    height: 4.r,
                    decoration: BoxDecoration(
                      color: theme.colors.gray2,
                      borderRadius: BorderRadius.circular(42),
                    ),
                  ),
                  BlocBuilder<WalletBloc, WalletState>(
                    builder: (context, state) {
                      return Container(
                        width: state is GetWalletSuccess
                            ? (((state.wallet.availableBalance.value ?? 0) / (state.wallet.limit)) *
                                    172)
                                .w
                            : 0,
                        height: 4.r,
                        decoration: BoxDecoration(
                          color: theme.colors.secondaryItemsColor,
                          borderRadius: BorderRadius.circular(42),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 24.h),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
