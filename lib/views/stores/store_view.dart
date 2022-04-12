import 'dart:ui' as direction;

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:customizable_space_bar/customizable_space_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/bloc/shop_bloc/shop_bloc.dart';
import 'package:solfy_flutter/bloc/store_bloc/store_bloc.dart';
import 'package:solfy_flutter/bloc/store_shops_update_bloc/store_shops_update_bloc.dart';
import 'package:solfy_flutter/helpers/color_utils.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/api/catalog/brand/brand_response.dart';
import 'package:solfy_flutter/models/entities/wallet/shop_view_model.dart';
import 'package:solfy_flutter/repository/catalog_repository.dart';
import 'package:solfy_flutter/repository/static_repository.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/custom_google_map.dart';
import 'package:solfy_flutter/widgets/filter_icon.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/no_stores.dart';
import 'package:solfy_flutter/widgets/region_with_stores_row.dart';
import 'package:solfy_flutter/widgets/shop_list_item.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';
import 'package:url_launcher/url_launcher.dart';

/// Экран бренда
class StoreView extends StatefulWidget {
  const StoreView();

  @override
  _StoreViewState createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  Color storeColor = Colors.transparent;
  bool isStoreColorLighten = true;
  int? maxLines = 4;
  bool scrollEnabled = true;
  double value = 0.0;
  bool _isFiltered = false;

  Color getActualColor() {
    AppTheme theme = context.read<AppTheme>();
    return storeColor != Colors.transparent
        ? ColorUtils.isLighten(storeColor)
            ? Colors.black
            : Colors.white
        : theme.colors.secondaryItemsColor;
  }

  @override
  void initState() {
    StoreBloc bloc = context.read<StoreBloc>();
    StoreShopsUpdateBloc shopsBloc = context.read<StoreShopsUpdateBloc>();
    shopsBloc.add(const GetShops());
    if (bloc.state is GetBrandSuccess) {
      final state = bloc.state as GetBrandSuccess;
      if (state.brand.brand?.color != null) {
        storeColor = ColorUtils.getColorFromHex(
            state.brand.brand!.color!.substring(1, state.brand.brand!.color!.length));
        isStoreColorLighten = ColorUtils.isLighten(storeColor);
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();
    StaticRepository static = context.read<StaticRepository>();

    bool hasTextOverflow(String text, TextStyle style,
        {double minWidth = 0, double maxWidth = double.infinity, int maxLines = 4}) {
      final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: maxLines,
        textDirection: direction.TextDirection.ltr,
      )..layout(minWidth: minWidth, maxWidth: maxWidth);
      return textPainter.didExceedMaxLines;
    }

    List<Marker> getValidMarkers(List<ShopViewModel> shops) {
      final List<Marker> markers = [];
      for (var shop in shops) {
        if (shop.geo?.latitude != null && shop.geo!.latitude! != 0) {
          markers.add(
            Marker(
              markerId: MarkerId(shop.id?.toString() ?? ""),
              position: LatLng(shop.geo!.latitude!, shop.geo!.longitude!),
              icon: static.icon!,
            ),
          );
        }
      }
      return markers;
    }

    return BlocBuilder<StoreBloc, StoreState>(
      builder: (context, storeState) {
        if (storeState is GetBrandSuccess) {
          return Scaffold(
            body: Container(
              // color: storeColor,
              child: CustomScrollView(
                // physics: ClampingScrollPhysics(),
                slivers: [
                  SliverAppBar(
                    shadowColor: Colors.transparent,
                    automaticallyImplyLeading: false,
                    expandedHeight: 140.r,
                    pinned: true,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    flexibleSpace: CustomizableSpaceBar(
                      builder: (context, scrollingRate) {
                        return Column(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  _buildHeader(context, scrollingRate < 0.2, storeState),
                                  storeState.brand.brand?.logo != null &&
                                          storeState.brand.brand?.logo != ""
                                      ? _buildIcon(context, scrollingRate < 0.2, storeState)
                                      : _buildSampleIcon(context)
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(height: 8),
                          Text(
                            storeState.brand.brand?.name ?? "",
                            style: theme.textStyles.smsCodeText,
                          ),
                          SizedBox(height: 8),
                          Text(
                            storeState.brand.brand?.shortDescription ?? "",
                            style: theme.textStyles.inputHintText,
                          ),
                          SizedBox(height: 16),
                          storeState.brand.brand?.ranges != null &&
                                  storeState.brand.brand?.ranges != ""
                              ? _buildRanges(context, storeState)
                              : SizedBox(),
                          SizedBox(height: 24),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  child: Text(
                                    storeState.brand.brand?.description ?? "",
                                    maxLines: maxLines,
                                    style: theme.textStyles.faqAnswerText,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(height: 8),
                                hasTextOverflow(storeState.brand.brand?.description ?? "",
                                        theme.textStyles.faqAnswerText,
                                        maxWidth: 270.w)
                                    ? GestureDetector(
                                        onTap: () => setState(
                                          () => maxLines != null ? maxLines = null : maxLines = 4,
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          child: Text(
                                            maxLines == null ? "Свернуть" : "continue_3_dots".tr(),
                                            style: theme.textStyles.aboutAppClickableText,
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      )
                                    : SizedBox(),
                                SizedBox(height: 24),
                                Divider(height: 0),
                                SizedBox(height: 18),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Магазины", style: theme.textStyles.textInputStyle),
                                    BaseIconGesturesWrapper(
                                      onTap: () => ModalHelpers.showFilterModal(
                                        context,
                                        Injector().get<CatalogRepository>().shopsFilter,
                                        onSubmit: () async {
                                          context
                                              .read<StoreShopsUpdateBloc>()
                                              .add(const GetShops());
                                        },
                                      ),
                                      child: FilterIcon(isFiltered: _isFiltered, size: 24),
                                      iconSize: 24,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 14.h),
                                BlocConsumer<StoreShopsUpdateBloc, StoreShopsUpdateState>(
                                  listener: (context, state) {
                                    if (state is Loading) {
                                      _isFiltered = state.request.typeAll == false ||
                                          state.request.term != null ||
                                          state.request.worktime != null;
                                      setState(() {});
                                    }
                                  },
                                  builder: (context, state) {
                                    if (state is GetShopsSuccess) {
                                      return RegionWithStoresRow(state.shops.info);
                                    }
                                    return SizedBox();
                                  },
                                ),
                              ],
                            ),
                          ),
                          BlocBuilder<StoreShopsUpdateBloc, StoreShopsUpdateState>(
                            builder: (context, state) {
                              if (state is GetShopsSuccess) {
                                return Column(
                                  children: [
                                    if (getValidMarkers(state.shops.shops).isEmpty) ...[
                                      SizedBox(height: 12.h),
                                      Divider(),
                                      SizedBox(height: 16.h)
                                    ],
                                    getValidMarkers(state.shops.shops).isNotEmpty
                                        ? Column(
                                            children: [
                                              SizedBox(height: 16.h),
                                              Stack(
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 120.h,
                                                    child: CustomGoogleMap(
                                                      showLocationButton: false,
                                                      optimizeMode: true,
                                                      initialLatLng: state.shops.shops.length != 0
                                                          ? getValidMarkers(state.shops.shops)
                                                              .first
                                                              .position
                                                          : null,
                                                      markers: getValidMarkers(state.shops.shops)
                                                          .toSet(),
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    behavior: HitTestBehavior.opaque,
                                                    onTap: () => context.router.push(StoreMapRoute(
                                                        shopsUpdateBloc:
                                                            context.read<StoreShopsUpdateBloc>(),
                                                        children: [
                                                          StoreMapView(
                                                            storeName:
                                                                storeState.brand.brand?.name ?? "",
                                                            headerColor: storeColor,
                                                            textHeaderColor: getActualColor(),
                                                            initialLatLng:
                                                                getValidMarkers(state.shops.shops)
                                                                    .first
                                                                    .position,
                                                          ),
                                                        ])),
                                                    child: Container(
                                                      height: 120.h,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          )
                                        : NoStores(),
                                    BlocListener<ShopBloc, ShopState>(
                                      listener: (context, shopState) async {
                                        if (shopState is ShopLoading) {
                                          ModalHelpers.showLoadingModal(context);
                                        }
                                        if (shopState is ShopEndLoading) {
                                          await context.router.root.pop();
                                        }
                                        if (shopState is GetShopError) {
                                          ModalHelpers.showError(context, shopState.errors);
                                        }
                                        if (shopState is GetShopSuccess) {
                                          ModalHelpers.showCardModal(
                                            context,
                                            shopState.shop,
                                            showMap: shopState.openModalWithMap,
                                            storeColor: storeColor,
                                            storeTextColor: getActualColor(),
                                          );
                                        }
                                      },
                                      child: ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: state.shops.shops.length,
                                        itemBuilder: (context, index) => Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 14, left: 16, right: 16),
                                          child: GestureDetector(
                                            behavior: HitTestBehavior.opaque,
                                            onTap: () async {
                                              context.read<ShopBloc>().add(GetShop(
                                                  state.shops.shops[index].id?.toString() ?? "",
                                                  openModalWithMap: true));
                                            },
                                            child: ShopListItem(
                                              state.shops.shops[index],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }
                              return LoadingRingAnimation();
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }
        return LoadingRingAnimation();
      },
    );
  }

  Widget _buildHeader(BuildContext context, bool isExpanded, GetBrandSuccess state) {
    AppTheme theme = context.read<AppTheme>();

    return Container(
      width: double.infinity,
      height: 60 + (MediaQuery.of(context).padding.top + 10),
      color: storeColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 4.w),
                  BaseIconGesturesWrapper(
                    onTap: () => context.router.pop(),
                    child: Icon(
                      SolfyIcons.arrow2,
                      size: 15.4.sp,
                      color: getActualColor(),
                    ),
                    iconSize: 15,
                  ),
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 150),
                    opacity: !isExpanded ? 1 : 0,
                    child: Container(
                      width: 200.w,
                      alignment: Alignment.centerLeft,
                      child: TextOneLine(
                        state.brand.brand?.name ?? "",
                        style: theme.textStyles.mainText.copyWith(
                          color: getActualColor(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  state.brand.brand?.phones != null
                      ? BaseIconGesturesWrapper(
                          onTap: () async {
                            if (state.brand.brand!.phones!.length > 1) {
                              await ModalHelpers.showPhonesModal(
                                  context, state.brand.brand?.phones);
                            } else {
                              if (await canLaunch("tel://${state.brand.brand!.phones!.first}")) {
                                await launch("tel://${state.brand.brand!.phones!.first}");
                              } else {
                                print(
                                    'Could not launch "tel://${state.brand.brand!.phones!.first}"');
                              }
                            }
                          },
                          child: Icon(SolfyIcons.telephone, size: 18.r, color: getActualColor()),
                          iconSize: 18,
                        )
                      : SizedBox(),
                  state.brand.brand?.site != null
                      ? Row(
                          children: [
                            BaseIconGesturesWrapper(
                              onTap: () async {
                                if (await canLaunch("${state.brand.brand?.site}")) {
                                  await launch(
                                    "${state.brand.brand?.site}",
                                    forceSafariVC: true,
                                  );
                                } else {
                                  print('Could not launch "${state.brand.brand?.site}"');
                                }
                              },
                              child: Icon(SolfyIcons.network, size: 20.r, color: getActualColor()),
                              iconSize: 20,
                            ),
                          ],
                        )
                      : SizedBox(),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(BuildContext context, bool isExpanded, GetBrandSuccess state) {
    return Padding(
      padding: EdgeInsets.only(
        top: 48 + MediaQuery.of(context).padding.top - 20.r,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            duration: Duration(milliseconds: 200),
            opacity: 1,
            child: AnimatedScale(
              duration: Duration(milliseconds: 100),
              scale: isExpanded ? 1 : 0,
              curve: Curves.easeInOut,
              child: CachedNetworkImage(
                width: 104.r,
                height: 104.r,
                imageUrl: state.brand.brand!.logo!,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.scaleDown,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(52.r)),
                    border: Border.all(
                      color: Colors.black.withOpacity(0.05),
                      width: 1,
                    ),
                  ),
                ),
                placeholder: (context, url) => LoadingRingAnimation(lineWidth: 1),
                errorWidget: (context, url, error) => Icon(SolfyIcons.solfy_smile),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSampleIcon(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Padding(
      padding: EdgeInsets.only(top: 48.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 104.r,
            height: 104.r,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(52.r)),
              color: Colors.black.withOpacity(0.05),
              border: Border.all(
                color: Colors.black.withOpacity(0.05),
                width: 1.r,
              ),
            ),
            child: Icon(
              SolfyIcons.category___smile,
              color: theme.colors.gray1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRanges(BuildContext context, GetBrandSuccess state) {
    AppTheme theme = context.read<AppTheme>();

    return GestureDetector(
      onTap: () => null,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: theme.colors.lightSecondaryItemsColor,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (state.brand.brand?.conditionsCount ?? 0) > 1
                      ? () => ModalHelpers.showConditionsModal(
                            context,
                            state.brand.brand?.name ?? "",
                            state.brand.getConditions(),
                          )
                      : null,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "installment_plan_period".tr() + state.brand.brand!.ranges!,
                        style: theme.textStyles.creditRangeText,
                      ),
                      (state.brand.brand?.conditionsCount ?? 0) > 1
                          ? Row(
                              children: [
                                SizedBox(width: 6.w),
                                Icon(
                                  SolfyIcons.arrow_down,
                                  size: 7.r,
                                  color: theme.colors.secondaryItemsColor,
                                ),
                                SizedBox(width: 8.w),
                              ],
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
