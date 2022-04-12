import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/shop_bloc/shop_bloc.dart';
import 'package:solfy_flutter/bloc/store_bloc/store_bloc.dart';
import 'package:solfy_flutter/bloc/store_shops_update_bloc/store_shops_update_bloc.dart';
import 'package:solfy_flutter/helpers/color_utils.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/api/catalog/filter_request.dart';
import 'package:solfy_flutter/models/api/wallet/operation/operation_operation_item_response.dart';
import 'package:solfy_flutter/repository/static_repository.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/custom_google_map.dart';
import 'package:solfy_flutter/widgets/header_app_bar.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/operation_payment_row.dart';
import 'package:solfy_flutter/widgets/shop_operation_detail_row.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Страница с деталями по операции
class WalletPaymentDetailsView extends StatefulWidget {
  const WalletPaymentDetailsView(this.operation);

  final OperationOperationItemResponse operation;

  @override
  State<WalletPaymentDetailsView> createState() => _WalletPaymentDetailsViewState();
}

class _WalletPaymentDetailsViewState extends State<WalletPaymentDetailsView> {
  final ScrollController _scrollController = ScrollController();
  bool isTitleVisible = false;

  void toggleHeaderVisible() {
    if (_scrollController.position.pixels > 90 && !isTitleVisible) {
      setState(() {
        isTitleVisible = true;
      });
    }
    if (_scrollController.position.pixels < 90 && isTitleVisible) {
      setState(() {
        isTitleVisible = false;
      });
    }
  }

  @override
  void initState() {
    _scrollController.addListener(() {
      toggleHeaderVisible();
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(() {
      toggleHeaderVisible();
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();
    StaticRepository static = context.read<StaticRepository>();

    Color getActualColor(Color color) {
      AppTheme theme = context.read<AppTheme>();
      return color != Colors.transparent
          ? ColorUtils.isLighten(color)
              ? Colors.black
              : Colors.white
          : theme.colors.secondaryItemsColor;
    }

    Color getStoreColor(String? color) {
      return color != null
          ? ColorUtils.getColorFromHex(color.substring(1, color.length))
          : Colors.transparent;
    }

    return BlocListener<ShopBloc, ShopState>(
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
            storeColor: getStoreColor(widget.operation.brand?.color),
            storeTextColor: getActualColor(getStoreColor(widget.operation.brand?.color)),
          );
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
          appBar: HeaderAppBar(
            customTitle: AnimatedOpacity(
              duration: Duration(milliseconds: 150),
              opacity: isTitleVisible ? 1 : 0,
              child: Container(
                width: 200.w,
                alignment: Alignment.centerLeft,
                child: TextOneLine(
                  widget.operation.brand?.name ?? "",
                  style: theme.textStyles.mainText.copyWith(
                    color: Colors.black,
                    height: 1.2,
                  ),
                ),
              ),
            ),
          ),
          body: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        children: [
                          widget.operation.picture != null && widget.operation.picture != ""
                              ? Container(
                                  width: 56.r,
                                  height: 56.r,
                                  child: CachedNetworkImage(
                                    imageUrl: widget.operation.picture!,
                                    imageBuilder: (context, imageProvider) => Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: imageProvider),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.black.withOpacity(0.05),
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                    fit: BoxFit.scaleDown,
                                    placeholder: (context, url) =>
                                        LoadingRingAnimation(lineWidth: 1),
                                    errorWidget: (context, url, error) =>
                                        Icon(SolfyIcons.solfy_smile),
                                  ),
                                )
                              : Container(
                                  width: 56.r,
                                  height: 56.r,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                    color: Colors.black.withOpacity(0.05),
                                    border: Border.all(
                                      color: Colors.black.withOpacity(0.05),
                                      width: 1,
                                    ),
                                  ),
                                  child: Icon(
                                    SolfyIcons.category___smile,
                                    color: theme.colors.gray1,
                                  ),
                                ),
                          SizedBox(height: 8.r),
                          Text(
                            widget.operation.title ?? "",
                            style: theme.textStyles.mainText,
                          ),
                          SizedBox(height: 32.r),
                          Text(
                            widget.operation.amount ?? "",
                            style: theme.textStyles.mainBigText,
                          ),
                          SizedBox(height: 16.r),
                          Stack(
                            children: [
                              Container(
                                width: 172.w,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: theme.colors.gray2,
                                  borderRadius: BorderRadius.circular(42),
                                ),
                              ),
                              Container(
                                width: widget.operation.paymentsChart!.count! > 0
                                    ? (172 /
                                            widget.operation.paymentsChart!.count! *
                                            (widget.operation.paymentsChart!.repaymentedCount!))
                                        .w
                                    : 172.w,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: theme.colors.secondaryItemsColor,
                                  borderRadius: BorderRadius.circular(42),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.r),
                          widget.operation.payments != null &&
                                  widget.operation.payments!.length == 0
                              ? Column(
                                  children: [
                                    Text("Выплачено",
                                        style: theme.textStyles.descriptionText
                                            .copyWith(color: theme.colors.secondaryItemsColor)),
                                  ],
                                )
                              : SizedBox(),
                          Text(
                            widget.operation.paymentsChart?.caption ?? "",
                            style: theme.textStyles.descriptionText,
                          ),
                          SizedBox(height: 44.r),
                          Divider(),
                          SizedBox(height: 16.r),
                          widget.operation.payments != null &&
                                  widget.operation.payments!.length != 0
                              ? Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        "Платежи",
                                        style: theme.textStyles.blackRoboto1,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(height: 8.r),
                                    ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: widget.operation.payments?.length ?? 0,
                                      itemBuilder: (context, index) => !widget
                                              .operation.payments![index].isRepaymented!
                                          ? OperationPaymentRow(
                                              widget.operation.payments![index],
                                              inactive: index >
                                                  widget.operation.paymentsChart!.repaymentedCount!,
                                            )
                                          : SizedBox(),
                                    ),
                                    SizedBox(height: 14.r),
                                    Divider(),
                                    SizedBox(height: 16.r),
                                  ],
                                )
                              : SizedBox(),
                          Container(
                            width: double.infinity,
                            child: Text(
                              "Детали операции",
                              style: theme.textStyles.blackRoboto1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 16.r),
                        ],
                      ),
                    ),
                    widget.operation.shop?.type == "offline"
                        ? Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 120.r,
                                    child: CustomGoogleMap(
                                      optimizeMode: true,
                                      showLocationButton: false,
                                      initialLatLng: LatLng(
                                        widget.operation.shop!.geo!.latitude!,
                                        widget.operation.shop!.geo!.longitude!,
                                      ),
                                      markers: {
                                        Marker(
                                          markerId: MarkerId("1"),
                                          position: LatLng(
                                            widget.operation.shop!.geo!.latitude!,
                                            widget.operation.shop!.geo!.longitude!,
                                          ),
                                          icon: static.icon!,
                                        ),
                                      },
                                    ),
                                  ),
                                  GestureDetector(
                                    behavior: HitTestBehavior.opaque,
                                    onTap: () => context.router.push(StoreMapRoute(
                                        shopsUpdateBloc: context.read<StoreShopsUpdateBloc>(),
                                        children: [
                                          StoreMapView(
                                            storeName: widget.operation.brand?.name ?? "",
                                            headerColor:
                                                getStoreColor(widget.operation.brand?.color),
                                            textHeaderColor: getActualColor(
                                                getStoreColor(widget.operation.brand?.color)),
                                            initialLatLng: LatLng(
                                              widget.operation.shop!.geo!.latitude!,
                                              widget.operation.shop!.geo!.longitude!,
                                            ),
                                            customFilter: FilterRequest(
                                              brandId: widget.operation.brand?.id,
                                              sortVisible: false,
                                              closeSortVisible: false,
                                              onlineOfflineVisible: false,
                                            ),
                                            id: widget.operation.shop!.id,
                                          ),
                                        ])),
                                    child: Container(
                                      height: 120.r,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 14.r),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    widget.operation.shop?.address ?? "",
                                    style: theme.textStyles.chooseFormText,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          )
                        : SizedBox(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        children: [
                          SizedBox(height: 14.r),
                          widget.operation.shop?.site != null
                              ? ShopOperationDetailsRow(
                                  "Адрес",
                                  widget.operation.shop?.site ?? "",
                                )
                              : SizedBox(),
                          ShopOperationDetailsRow(
                            "Дата",
                            widget.operation.date ?? "",
                          ),
                          ShopOperationDetailsRow(
                            "Статус",
                            widget.operation.status ?? "Успешно",
                          ),
                          SizedBox(height: 2.h),
                          Divider(),
                          SizedBox(height: 4.h),
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () async {
                              context.read<StoreBloc>().add(GetBrand(widget.operation.brand!.id!));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      SolfyIcons.market,
                                      size: 18.r,
                                      color: theme.colors.buttonPrimary,
                                    ),
                                    SizedBox(width: 12.w),
                                    Text(
                                      widget.operation.title ?? "",
                                      style: theme.textStyles.chooseFormText,
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                Icon(
                                  SolfyIcons.arrow,
                                  color: theme.colors.virtualKeyboardNumbers,
                                  size: 12.r,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12.h),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
