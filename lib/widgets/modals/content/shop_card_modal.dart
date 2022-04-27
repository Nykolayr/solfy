import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapping_sheet/snapping_sheet.dart';
import 'package:solfy_flutter/bloc/store_bloc/store_bloc.dart';
import 'package:solfy_flutter/bloc/store_shops_update_bloc/store_shops_update_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/entities/wallet/shop_view_model.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';
import 'package:solfy_flutter/widgets/store_row_item.dart';
import 'package:solfy_flutter/widgets/work_time_row_item.dart';

class ShopCardModal extends StatefulWidget {
  const ShopCardModal(this.shop);

  final ShopViewModel shop;

  @override
  _ShopCardModalState createState() => _ShopCardModalState();
}

class _ShopCardModalState extends State<ShopCardModal> {
  final _controller = SnappingSheetController();

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

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
      child: SnappingSheet(
        controller: _controller,
        onSnapCompleted: (data, position) {
          if (data.relativeToSnappingPositions == 0.0) {
            Navigator.pop(context);
          }
        },
        snappingPositions: [
          SnappingPosition.factor(
            positionFactor: 0.0,
            snappingCurve: Curves.easeOutExpo,
            snappingDuration: Duration(milliseconds: 500),
            grabbingContentOffset: GrabbingContentOffset.top,
          ),
          SnappingPosition.factor(
            positionFactor: -1.0,
            snappingCurve: Curves.easeOutExpo,
            snappingDuration: Duration(milliseconds: 500),
            grabbingContentOffset: GrabbingContentOffset.top,
          ),
          SnappingPosition.pixels(
            positionPixels: 250.r + MediaQuery.of(context).padding.top,
            snappingCurve: Curves.easeOutExpo,
            snappingDuration: Duration(milliseconds: 500),
            grabbingContentOffset: GrabbingContentOffset.top,
          ),
        ],
        sheetBelow: SnappingSheetContent(
          sizeBehavior: SheetSizeFill(),
          draggable: false,
          child: Container(
            height: 300.r,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: (widget.shop.workTime?.length ?? 0) + 1,
                shrinkWrap: true,
                itemBuilder: (context, index) => index != 0 && index != widget.shop.workTime?.length
                    ? Padding(
                        padding: EdgeInsets.only(bottom: 18.r),
                        child: WorkTimeRowItem(
                          widget.shop.workTime?[index].day ?? "",
                          widget.shop.workTime?[index].time ?? "",
                        ),
                      )
                    : index != widget.shop.workTime?.length
                        ? SizedBox(height: 5.r)
                        : Column(
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
                            ],
                          ),
              ),
            ),
          ),
        ),
        grabbingHeight: 200.r,
        // grabbingHeight: widget.shop.geo?.latitude == null ? 252.h : 372.h,
        grabbing: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16),
            ),
          ),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 12.h),
                              width: 48.w,
                              height: 4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2.r),
                                color: theme.colors.gray1.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 18.r),
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
                              // widget.shop.geo?.latitude != null
                              //     ? Row(
                              //         children: [
                              //           SizedBox(width: 6.w),
                              //           Icon(
                              //             SolfyIcons.geo,
                              //             size: 10.r,
                              //             color: Colors.grey,
                              //           ),
                              //           Text(
                              //             "1",
                              //             style: theme.textStyles.descriptionText,
                              //           ),
                              //         ],
                              //       )
                              //     : SizedBox(),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Divider(),
                        SizedBox(height: 8.h),
                        widget.shop.workTime != null
                            ? GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () => _controller.snapToPosition(
                                  SnappingPosition.pixels(
                                    positionPixels: 250.r + MediaQuery.of(context).padding.top,
                                    snappingCurve: Curves.easeOutExpo,
                                    snappingDuration: Duration(milliseconds: 500),
                                    grabbingContentOffset: GrabbingContentOffset.top,
                                  ),
                                ),
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
                                                    style:
                                                        theme.textStyles.descriptionText.copyWith(
                                                      color: getColorByStatus(
                                                          widget.shop.workTime!.first.status!),
                                                    ),
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
                                          SolfyIcons.arrow_down,
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
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
