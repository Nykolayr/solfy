import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/operation_bloc/operation_bloc.dart';
import 'package:solfy_flutter/bloc/wallet_bloc/wallet_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/card_status.dart';
import 'package:solfy_flutter/widgets/header_wallet.dart';
import 'package:solfy_flutter/widgets/history_list.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/schedule_wallet_list.dart';

/// Стартовая страница кошелька
class WalletView extends StatefulWidget {
  const WalletView({Key? key}) : super(key: key);

  @override
  _WalletViewState createState() => _WalletViewState();
}

class _WalletViewState extends State<WalletView> {
  @override
  void initState() {
    // Запрашиваем кошелек
    context.read<WalletBloc>().add(GetWallet());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return BlocListener<OperationBloc, OperationState>(
      listener: (context, state) async {
        if (state is OperationLoading) {
          ModalHelpers.showLoadingModal(context);
        }
        if (state is OperationEndLoading) {
          await context.router.pop();
        }
        if (state is GetOperationError) {
          ModalHelpers.showError(context, state.errors);
        }
        if (state is GetOperationSuccess) {
          context.router.push(WalletPaymentDetailsView(operation: state.operation.operation!));
        }
      },
      child: BlocConsumer<WalletBloc, WalletState>(
        listener: (context, state) {
          if (state is GetWalletError) {
            ModalHelpers.showError(context, state.errors);
          }
        },
        builder: (context, state) {
          if (state is GetWalletSuccess) {
            return Scaffold(
              backgroundColor:
                  state.wallet.walletStatus.status != "active" ? Colors.white : theme.colors.gray2,
              body: state.wallet.walletStatus.status != "active"
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CardStatus(state.wallet.walletStatus),
                      ],
                    )
                  : DefaultTabController(
                      length: 2,
                      child: NestedScrollView(
                        physics: NeverScrollableScrollPhysics(),
                        headerSliverBuilder: (context, _) {
                          return [
                            SliverToBoxAdapter(
                              child: const HeaderWallet(),
                            )
                          ];
                        },
                        body: Column(
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 25.h),
                                TabBar(
                                  labelColor: theme.colors.smsCodeColor,
                                  labelStyle: theme.textStyles.blackRoboto1,
                                  indicatorColor: theme.colors.secondaryItemsColor,
                                  tabs: [
                                    Tab(text: "schedule".tr()),
                                    Tab(text: "history".tr()),
                                  ],
                                  unselectedLabelColor: Colors.grey,
                                ),
                              ],
                            ),
                            Expanded(
                              child: MediaQuery.removePadding(
                                context: context,
                                removeTop: true,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  child: TabBarView(
                                    children: [
                                      ScheduleWalletList(),
                                      ScheduleHistoryList(),
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
          return LoadingRingAnimation();
        },
      ),
    );
  }
}
