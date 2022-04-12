import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/bloc/store_bloc/store_bloc.dart';
import 'package:solfy_flutter/bloc/store_shops_update_bloc/store_shops_update_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/api/catalog/filter_request.dart';

import 'package:solfy_flutter/models/entities/wallet/shop_view_model.dart';
import 'package:solfy_flutter/models/entities/wallet/worktime_item_view_model.dart';
import 'package:solfy_flutter/repository/static_repository.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/contact_info_item.dart';
import 'package:solfy_flutter/widgets/custom_google_map.dart';
import 'package:solfy_flutter/widgets/expanded_animation.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';
import 'package:solfy_flutter/widgets/store_row_item.dart';
import 'package:solfy_flutter/widgets/work_time_row_item.dart';

class CardShopModal extends StatefulWidget {
  final ShopViewModel shop;
  final bool showMap;
  final Color? storeColor;
  final Color? storeTextColor;
  const CardShopModal({
    Key? key,
    required this.shop,
    this.storeColor,
    this.storeTextColor,
    this.showMap = false,
  }) : super(key: key);

  @override
  State<CardShopModal> createState() => _CardShopModalState();
}

class _CardShopModalState extends State<CardShopModal> {
  bool worktimeVisible = false;
  bool contactInfoVisible = false;

  bool get hasContactInfo =>
      (widget.shop.phones != null && widget.shop.phones!.isNotEmpty) || widget.shop.site != null;

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();
    StaticRepository static = context.read<StaticRepository>();

    Color getColorByStatus(String status) {
      switch (status) {
        case "Открыт":
          return theme.colors.openStoreColor;
        case "Скоро закроется":
          return theme.colors.subTitleCaptionColor;
        case "Закрыт":
          return theme.colors.errorInputBorderColor;
        default:
          return theme.colors.virtualKeyboardNumbers;
      }
    }

    List<Widget> buildWorkTime(List<WorktimeItemViewModel>? worktimes) {
      final List<Widget> items = [];
      if (worktimes != null) {
        for (var i = 1; i < worktimes.length; i++) {
          items.add(
            Padding(
              padding: EdgeInsets.only(bottom: 18.r, top: i == 1 ? 4.r : 0),
              child: WorkTimeRowItem(
                widget.shop.workTime?[i].day ?? "",
                widget.shop.workTime?[i].time ?? "",
              ),
            ),
          );
        }
        if (!(widget.showMap && widget.shop.geo?.latitude != null)) {
          items.add(
            Column(
              children: [
                Divider(),
                SizedBox(height: 6.r),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () async {
                    context.read<StoreBloc>().add(GetBrand(widget.shop.brand!.id!));
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
                            widget.shop.brand?.name ?? "",
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
                SizedBox(height: 10.r),
              ],
            ),
          );
        }
        return items;
      } else {
        return items;
      }
    }

    List<Widget> buildContactInfo() {
      final List<Widget> items = [];

      // items.add(ContactInfoItem(SolfyIcons.telephone, '+(999)111-222 333'));
      // items.add(ContactInfoItem(SolfyIcons.telephone, '+(999)555-666 777'));

      if (widget.shop.phones != null) {
        widget.shop.phones?.forEach((phone) {
          if (phone.isNotEmpty) {
            items.add(ContactInfoItem(SolfyIcons.telephone, phone));
          }
        });
      }
      if (widget.shop.site != null) {
        items.add(ContactInfoItem(SolfyIcons.network, widget.shop.site ?? ''));
      }
      return items;
    }

    return BlocListener<StoreBloc, StoreState>(
      listener: (context, state) async {
        if (state is BrandLoading) {
          ModalHelpers.showLoadingModal(context);
        }
        if (state is BrandEndLoading) {
          await context.router.root.pop();
        }
        if (state is GetBrandSuccess) {
          context.router.root.pop();
          context.router.push(StoreRoute(
            shopsUpdateBloc: context.read<StoreShopsUpdateBloc>(),
            brandBloc: context.read<StoreBloc>(),
            isModal: true,
          ));
        }
        if (state is GetBrandError) {
          ModalHelpers.showError(context, state.errors);
        }
      },
      child: AnimatedSize(
        duration: Duration(milliseconds: 300),
        curve: Curves.linear,
        child: SafeArea(
          top: false,
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        children: [
                          SizedBox(height: 30.r),
                          StoreRowItem(
                            name: widget.shop.brand?.name ?? "",
                            description: widget.shop.shortDescription ?? "",
                            logo: widget.shop.logo,
                            range: widget.shop.ranges,
                            conditions: widget.shop.conditions,
                            conditionsCount: widget.shop.conditionsCount,
                          ),
                          SizedBox(height: 24.r),
                          Container(
                            height: 20.r,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 236.w,
                                      child: TextOneLine(
                                        widget.shop.address ?? "",
                                        style: theme.textStyles.chooseFormText,
                                      ),
                                    ),
                                  ],
                                ),
                                widget.shop.distance != null
                                    ? Row(
                                        children: [
                                          SizedBox(width: 6.w),
                                          Icon(
                                            SolfyIcons.geo,
                                            size: 10.r,
                                            color: Colors.grey,
                                          ),
                                          Text(
                                            widget.shop.distance!,
                                            style: theme.textStyles.descriptionText,
                                          ),
                                        ],
                                      )
                                    : SizedBox(),
                              ],
                            ),
                          ),
                          SizedBox(height: 22.h),
                          hasContactInfo
                              ? GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    setState(() {
                                      contactInfoVisible = !contactInfoVisible;
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "contact_details".tr(),
                                            style: theme.textStyles.descriptionText,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            contactInfoVisible
                                                ? SolfyIcons.arrow_up
                                                : SolfyIcons.arrow_down,
                                            size: 8.r,
                                            color: theme.colors.virtualKeyboardNumbers,
                                          ),
                                          SizedBox(width: 2.w),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              : SizedBox(),
                          SizedBox(height: 14.h),
                          ExpandedAnimation(
                            expand: contactInfoVisible,
                            child: Column(
                              children: buildContactInfo(),
                            ),
                          ),
                          Divider(),
                          SizedBox(height: 8.h),
                          widget.shop.workTime != null
                              ? GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    setState(() {
                                      worktimeVisible = !worktimeVisible;
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            widget.shop.workTime!.first.day!,
                                            style: theme.textStyles.shopDayOfTheWeek,
                                          ),
                                          widget.shop.workTime?.first.status != null
                                              ? Row(
                                                  children: [
                                                    SizedBox(width: 4.w),
                                                    Text("·",
                                                        style: theme.textStyles.descriptionText),
                                                    SizedBox(width: 4.w),
                                                    Text(
                                                      widget.shop.workTime!.first.status!,
                                                      style: theme.textStyles.descriptionText
                                                          .copyWith(
                                                              color: getColorByStatus(widget
                                                                  .shop.workTime!.first.status!)),
                                                    )
                                                  ],
                                                )
                                              : SizedBox(),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            widget.shop.workTime!.first.time!,
                                            style: theme.textStyles.descriptionText,
                                          ),
                                          SizedBox(width: 10.w),
                                          Icon(
                                            worktimeVisible
                                                ? SolfyIcons.arrow_up
                                                : SolfyIcons.arrow_down,
                                            size: 8.r,
                                            color: theme.colors.virtualKeyboardNumbers,
                                          ),
                                          SizedBox(width: 2.w),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              : SizedBox(),
                          SizedBox(height: 12.h),
                          ExpandedAnimation(
                            expand: worktimeVisible,
                            child: Column(
                              children: buildWorkTime(widget.shop.workTime),
                            ),
                          ),
                        ],
                      ),
                    ),
                    widget.shop.geo?.longitude != null && widget.showMap
                        ? Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 120.r,
                                child: CustomGoogleMap(
                                  optimizeMode: true,
                                  showLocationButton: false,
                                  initialLatLng: LatLng(
                                    widget.shop.geo!.latitude!,
                                    widget.shop.geo!.longitude!,
                                  ),
                                  markers: {
                                    Marker(
                                      markerId: MarkerId("1"),
                                      position: LatLng(
                                        widget.shop.geo!.latitude!,
                                        widget.shop.geo!.longitude!,
                                      ),
                                      icon: static.icon!,
                                    ),
                                  },
                                ),
                              ),
                              GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  context.router.root.pop();
                                  context.router.push(StoreMapRoute(
                                      shopsUpdateBloc: context.read<StoreShopsUpdateBloc>(),
                                      children: [
                                        StoreMapView(
                                          storeName: widget.shop.brand?.name ?? "",
                                          headerColor: widget.storeColor!,
                                          textHeaderColor: widget.storeTextColor!,
                                          // headerColor:
                                          //     getStoreColor(widget.operation.brand?.color),
                                          // textHeaderColor: getActualColor(
                                          //     getStoreColor(widget.operation.brand?.color)),
                                          initialLatLng: LatLng(
                                            widget.shop.geo!.latitude!,
                                            widget.shop.geo!.longitude!,
                                          ),
                                          customFilter: FilterRequest(
                                            brandId: widget.shop.brand?.id,
                                            sortVisible: false,
                                            closeSortVisible: false,
                                            onlineOfflineVisible: false,
                                          ),
                                          id: widget.shop.id,
                                        ),
                                      ]));
                                },
                                child: Container(
                                  height: 120.r,
                                ),
                              )
                            ],
                          )
                        : SizedBox(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
