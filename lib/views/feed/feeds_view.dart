import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/bloc/feed_bloc/feed_bloc.dart';
import 'package:solfy_flutter/bloc/feeds_bloc/feeds_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/api/profile/feeds/feeds_feed_item_response.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart' as auto;
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/services/database/global_settings_db_service.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/views/onboarding/questionnaire/card/bloc/card_bloc.dart';
import 'package:solfy_flutter/widgets/card_status.dart';
import 'package:solfy_flutter/widgets/feed_item.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/search_input.dart';
import 'package:solfy_flutter/widgets/wallet_status.dart';

/// Экран с лентой новостей
class FeedsView extends StatefulWidget {
  const FeedsView({Key? key}) : super(key: key);

  @override
  _FeedsViewState createState() => _FeedsViewState();
}

class _FeedsViewState extends State<FeedsView> {
  @override
  void initState() {
    context.read<FeedsBloc>().add(GetFeeds());
    Future.microtask(() async {
      Timer(Duration(seconds: 1), () async {
        final permission = await Geolocator.checkPermission();
        final isGeoRequested = await GlobalSettingsDbService.isGeoRequested();
        if ((permission == LocationPermission.denied ||
                permission == LocationPermission.deniedForever) &&
            !isGeoRequested) {
          await ModalHelpers.showGeoRequestModalFeed(context);
          await GlobalSettingsDbService.markGeoRequested();
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();
    return BlocListener<CardBloc, CardState>(
      listener: (context, state) async {
        if (state is WalletCardUpdateError) {
          print(
              'WalletCardUpdateError == ${state.errors.errors!.first.toJson()}');
          ModalHelpers.showError(context, state.errors);
        }
      },
      child: BlocListener<FeedBloc, FeedState>(
        listener: (context, state) async {
          if (state is FeedLoading) {
            ModalHelpers.showLoadingModal(context);
          }
          if (state is FeedEndLoading) {
            await context.router.root.pop();
          }
          if (state is GetFeedSuccess) {
            context.router.push(
              auto.FeedDetailRoute(
                children: [FeedDetailView(feed: state.response)],
              ),
            );
          }
          if (state is GetFeedError) {
            ModalHelpers.showError(context, state.errors);
          }
        },
        child: BlocConsumer<FeedsBloc, FeedsState>(
          listener: (context, state) {
            if (state is GetFeedsError) {
              ModalHelpers.showError(context, state.errors);
            }
          },
          builder: (context, state) {
            if (state is Loading) {
              return SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoadingRingAnimation(),
                  ],
                ),
              );
            }
            if (state is GetFeedsSuccess) {
              return Scaffold(
                backgroundColor: theme.colors.white1,
                body: ColorfulSafeArea(
                  color: state.wallet.walletStatus.status != "active"
                      ? Colors.white
                      : theme.colors.white1,
                  child: CustomScrollView(
                    // physics: ClampingScrollPhysics(),
                    slivers: [
                      SliverToBoxAdapter(
                        child: Container(
                          color: theme.colors.white1,
                          child: Column(
                            children: [
                              state.wallet.walletStatus.status != "active"
                                  ? Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.06),
                                            spreadRadius: 0,
                                            blurRadius: 2,
                                            offset: Offset(0, 2),
                                          ),
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.03),
                                            spreadRadius: 0,
                                            blurRadius: 1,
                                            offset: Offset(0, 2),
                                          ),
                                        ],
                                      ),
                                      child:
                                          CardStatus(state.wallet.walletStatus),
                                    )
                                  : SizedBox(),
                              state.wallet.walletStatus.status == "active"
                                  ? WalletStatus(state.wallet)
                                  : SizedBox(),
                              SizedBox(height: 20.h),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                child: SearchInput(
                                  hintText: "store_or_category".tr(),
                                  onTap: () => context.router
                                      .push(auto.SearchStoresRoute()),
                                ),
                              ),
                              SizedBox(height: 20.h),
                              ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: state.feeds.length,
                                itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.only(bottom: 12.h),
                                  child: FeedShortItem(
                                      state.feeds[index].getModel()),
                                ),
                              ),
                            ],
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
        ),
      ),
    );
  }
}
