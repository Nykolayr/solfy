import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/brands_bloc/brands_bloc.dart';
import 'package:solfy_flutter/bloc/categories_bloc/categories_bloc.dart';
import 'package:solfy_flutter/bloc/feed_bloc/feed_bloc.dart';
import 'package:solfy_flutter/bloc/store_bloc/store_bloc.dart';
import 'package:solfy_flutter/bloc/store_shops_update_bloc/store_shops_update_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/api/profile/feed/feed_additional_feed_item_response.dart';
import 'package:solfy_flutter/models/api/profile/feed/feed_response.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart' as auto;
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/category_row_item.dart';
import 'package:solfy_flutter/widgets/custom_divider.dart';
import 'package:solfy_flutter/widgets/feed_item.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';
import 'package:solfy_flutter/widgets/store_row_item.dart';
import 'package:url_launcher/url_launcher.dart';

/// Экран с новостью
class FeedDetailView extends StatelessWidget {
  const FeedDetailView(this.feed);

  final FeedResp feed;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return BlocListener<FeedBloc, FeedState>(
      listener: (context, state) async {
        if (state is FeedLoading) {
          ModalHelpers.showLoadingModal(context);
        }
        if (state is FeedEndLoading) {
          await context.router.root.pop();
        }
        if (state is GetFeedSuccess) {
          context.router.push(
            FeedDetailRoute(
              children: [auto.FeedDetailView(feed: state.response)],
            ),
          );
        }
        if (state is GetFeedError) {
          ModalHelpers.showError(context, state.errors);
        }
      },
      child: BlocListener<StoreBloc, StoreState>(
        listener: (context, state) async {
          if (state is BrandLoading) {
            ModalHelpers.showLoadingModal(context);
          }
          if (state is BrandEndLoading) {
            await context.router.root.pop();
          }
          if (state is GetBrandSuccess) {
            context.router.push(StoreRoute(
              shopsUpdateBloc: context.read<StoreShopsUpdateBloc>(),
              brandBloc: context.read<StoreBloc>(),
            ));
          }
          if (state is GetBrandError) {
            ModalHelpers.showError(context, state.errors);
          }
        },
        child: Scaffold(
            appBar: AppBar(
              leading: BaseIconGesturesWrapper(
                onTap: () => context.router.pop(),
                child: Icon(
                  SolfyIcons.arrow2,
                  color: theme.colors.secondaryItemsColor,
                  size: 15.4.sp,
                ),
                iconSize: 15,
              ),
              backgroundColor: Colors.white,
              shadowColor: Colors.transparent,
            ),
            body: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                feed.feed?.title ?? "",
                                style: theme.textStyles.smsCodeText,
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                feed.feed?.shortDescription ?? "",
                                style: theme.textStyles.inputStyle,
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                feed.feed?.createdAt ?? "",
                                style: theme.textStyles.inputHeaderText,
                              ),
                              SizedBox(height: 26.h),
                            ],
                          ),
                        ),
                      ),
                      feed.feed?.image != null && feed.feed?.image != ""
                          ? CachedNetworkImage(
                              imageUrl: feed.feed!.image!,
                              placeholder: (context, url) =>
                                  LoadingRingAnimation(),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            )
                          : SizedBox(),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: MarkdownBody(
                            data: feed.feed?.description ?? "",
                            shrinkWrap: true,
                            onTapLink: (text, link, info) async {
                              if (await canLaunch(link ?? "")) {
                                await launch(
                                  link ?? "",
                                  forceSafariVC: true,
                                );
                              } else {
                                print('Could not launch ');
                              }
                            },
                            styleSheet: MarkdownStyleSheet(
                              h1: theme.textStyles.mainText,
                              h2: theme.textStyles.headerSubtitleText,
                              h3: theme.textStyles.profileTitleText,
                              h6: theme.textStyles.inputHeaderText,
                              p: theme.textStyles.textInputStyle,
                              a: theme.textStyles.clickableLetterSendText,
                            )),
                      ),
                      feed.promotions?.categories?.length != 0 ||
                              feed.promotions?.brands?.length != 0
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  feed.promotions?.caption != null
                                      ? Container(
                                          width: double.infinity,
                                          child: Text(
                                            feed.promotions!.caption!,
                                            style: theme.textStyles.mainText,
                                          ),
                                        )
                                      : SizedBox(),
                                  SizedBox(height: 24.h),
                                  ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount:
                                        feed.promotions?.categories?.length ??
                                            0,
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.only(
                                          bottom: index !=
                                                  (feed.promotions!.categories!
                                                          .length -
                                                      1)
                                              ? 24.h
                                              : 0),
                                      child: GestureDetector(
                                        onTap: () async {
                                          context.read<CategoriesBloc>().add(
                                              SetCategoryId(feed.promotions!
                                                  .categories![index].id!));
                                          context
                                              .read<BrandsBloc>()
                                              .add(GetBrands());
                                          context.router.push(
                                            BrandsRoute(children: [
                                              CategoryStoresView(
                                                  categoryName: feed.promotions!
                                                      .categories![index].name!)
                                            ]),
                                          );
                                        },
                                        child: CategoryRowItem(
                                          name: feed.promotions!
                                              .categories![index].name!,
                                          logo: feed.promotions!
                                              .categories![index].icon!,
                                        ),
                                      ),
                                    ),
                                  ),
                                  feed.promotions?.brands?.length != 0
                                      ? CustomDivider(12)
                                      : SizedBox(),
                                  ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount:
                                        feed.promotions?.brands?.length ?? 0,
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.only(bottom: 24.h),
                                      child: StoreRowItem(
                                        name: feed
                                            .promotions!.brands![index].name!,
                                        description: feed.promotions!
                                            .brands![index].shortDescription!,
                                        logo: feed
                                            .promotions!.brands![index].logo!,
                                        range: feed
                                            .promotions!.brands![index].ranges!,
                                        onTap: () async {
                                          context.read<StoreBloc>().add(
                                              GetBrand(feed.promotions!
                                                  .brands![index].id!));
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                ],
                              ),
                            )
                          : SizedBox(),
                      feed.additional?.feeds?.length != 0
                          ? Container(
                              color: theme.colors.white1,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  feed.additional?.caption != null
                                      ? Container(
                                          padding: EdgeInsets.all(16),
                                          width: double.infinity,
                                          child: Text(
                                            feed.additional!.caption!,
                                            style: theme.textStyles.mainText,
                                          ),
                                        )
                                      : SizedBox(),
                                  ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount:
                                        feed.additional?.feeds?.length ?? 0,
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.only(bottom: 24.h),
                                      child: FeedShortItem(feed
                                          .additional!.feeds![index]
                                          .getModel()),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : SizedBox(),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
