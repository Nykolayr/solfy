import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/helpers/money_formatter.dart';
import 'package:solfy_flutter/models/entities/wallet/wallet_view_model.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';
import 'package:solfy_flutter/widgets/wallet_chart.dart';

/// Виджет с отображением вспомогательных окон кошелька на экране ленты
///
/// [wallet] - вью-модель кошелька, обязательный параметр
class WalletStatus extends StatelessWidget {
  const WalletStatus(this.wallet, {Key? key}) : super(key: key);

  final WalletViewModel wallet;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 16.r),
          Row(
            children: [
              wallet.nearestOmp.value != 0
                  ? buildNearestOmpStatus(context, wallet)
                  : buildWhereICanBuyStatus(context),
              SizedBox(width: 16.w),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => context.navigateTo(BaseTabBalanceView()),
                child: Container(
                  width: 156.r,
                  height: 125.r,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 0,
                        blurRadius: 32,
                        offset: Offset(0, 16),
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.02),
                        spreadRadius: 0,
                        blurRadius: 2,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12.r),
                      CustomPaint(
                        size: Size(48.r, 48.r),
                        painter: WalletChart(
                          wallet.availableBalance.value?.toDouble() ?? 0,
                          wallet.limit.toDouble(),
                          fillColor: theme.colors.secondaryItemsColor,
                          strokeWidth: 6.r,
                        ),
                      ),
                      SizedBox(height: 12.r),
                      Text(
                        "Доступно",
                        style: theme.textStyles.inputHeaderText,
                      ),
                      SizedBox(height: 4.r),
                      Text(
                        MoneyFormatter.shortFormat((wallet.availableBalance.value ?? 0) ~/ 100),
                        style: theme.textStyles.formTitleText,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildNearestOmpStatus(BuildContext context, WalletViewModel wallet) {
    AppTheme theme = context.read<AppTheme>();

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => context.navigateTo(BaseTabBalanceView()),
      child: Container(
        width: 156.r,
        height: 125.r,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 32,
              offset: Offset(0, 16),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.02),
              spreadRadius: 0,
              blurRadius: 2,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 12.h),
            CustomPaint(
              size: Size(48.r, 48.r),
              painter: WalletChart(
                wallet.nearestOmp.value?.toDouble() ?? 0,
                wallet.comfortablePayment.value?.toDouble() ?? 0,
                strokeWidth: 6.r,
              ),
            ),
            SizedBox(height: 12.r),
            Text(
              "Платеж до " + (wallet.nearestOmpDate),
              style: theme.textStyles.inputHeaderText,
            ),
            SizedBox(height: 4.r),
            Text(
              MoneyFormatter.shortFormat((wallet.nearestOmp.value ?? 0) ~/ 100),
              style: theme.textStyles.formTitleText,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildWhereICanBuyStatus(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => context.navigateTo(BaseTabStoresView()),
      child: Container(
        width: 156.r,
        height: 125.r,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: theme.colors.buttonPrimary,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 32,
              offset: Offset(0, 16),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.02),
              spreadRadius: 0,
              blurRadius: 2,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 15.r),
            Padding(
              padding: EdgeInsets.only(left: 14.r),
              child: Row(
                children: [
                  Icon(SolfyIcons.market, size: 24.sp, color: Colors.white),
                ],
              ),
            ),
            SizedBox(height: 17.r),
            Padding(
              padding: EdgeInsets.only(left: 16.r),
              child: Row(
                children: [
                  Text(
                    "Где я могу\nкупить\nв рассрочку?",
                    style: theme.textStyles.blackRoboto1.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
