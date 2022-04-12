import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/models/entities/wallet/shop_view_model.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Элемент магазина в списке магазинов на странице бренда
///
/// [shop] - вью-модель магазина
class ShopListItem extends StatelessWidget {
  const ShopListItem(this.shop);

  final ShopViewModel shop;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return SizedBox(
      height: 70.h,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 250.w,
                    child: TextOneLine(
                      shop.address ?? "",
                      style: theme.textStyles.textInputStyle,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      shop.ranges != null && shop.ranges != ""
                          ? Container(
                              decoration: BoxDecoration(
                                color: theme.colors.lightSecondaryItemsColor,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                                child: Text(
                                  shop.ranges!,
                                  style: theme.textStyles.creditRangeText,
                                ),
                              ),
                            )
                          : SizedBox(),
                      SizedBox(width: 6.w),
                      shop.currentWorkTime != null
                          ? Text(shop.currentWorkTime!, style: theme.textStyles.inputHintText)
                          : const SizedBox(),
                    ],
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  shop.distance != null
                      ? Row(
                          children: [
                            SizedBox(width: 6.w),
                            Icon(
                              SolfyIcons.geo,
                              size: 10.r,
                              color: Colors.grey,
                            ),
                            Text(
                              shop.distance!,
                              style: theme.textStyles.descriptionText,
                            ),
                          ],
                        )
                      : SizedBox(),
                ],
              )
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
