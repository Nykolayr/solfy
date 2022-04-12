import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/entities/wallet/condition_item_view_model.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Виджет строки бренда
///
/// [name] - название бренда, обязательный параметр
///
/// [description] - описание бренда, обязательный параметр
///
/// [logo] - ссылка на логотип бренда
///
/// [range] - промежуток рассрочки
///
/// [distance] - расстояние до бренда
///
/// [onTap] - действие при тапе на строку
///
/// [conditions] - состояния рассрочки
///
/// [conditionsCount] - количество состояний рассрочки
class StoreRowItem extends StatelessWidget {
  const StoreRowItem({
    required this.name,
    required this.description,
    this.logo,
    this.range,
    this.distance,
    this.onTap,
    this.conditions,
    this.conditionsCount,
  });

  final String name;
  final String description;
  final String? logo;
  final String? range;
  final String? distance;
  final List<ConditionItemViewModel>? conditions;
  final int? conditionsCount;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    bool hasTextOverflow(String text, TextStyle style,
        {double minWidth = 0,
        double maxWidth = double.infinity,
        int maxLines = 2}) {
      final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: maxLines,
        textDirection: TextDirection.ltr,
      )..layout(minWidth: minWidth, maxWidth: maxWidth);
      return textPainter.didExceedMaxLines;
    }

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => onTap?.call(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              logo != null && logo != ""
                  ? Container(
                      width: 56.r,
                      height: 56.r,
                      child: CachedNetworkImage(
                        imageUrl: logo!,
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
              SizedBox(
                width: 12.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: hasTextOverflow(
                          name,
                          theme.textStyles.blackRoboto1,
                          maxWidth: 140.w,
                          maxLines: 1,
                        )
                            ? 140.w
                            : null,
                        child: TextOneLine(
                          name,
                          style: theme.textStyles.blackRoboto1,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      distance != null
                          ? Row(
                              children: [
                                SizedBox(width: 6.w),
                                Icon(
                                  SolfyIcons.geo,
                                  size: 10.r,
                                  color: Colors.grey,
                                ),
                                Text(
                                  distance!,
                                  style: theme.textStyles.descriptionText,
                                ),
                              ],
                            )
                          : SizedBox(),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Container(
                    width: 170.w,
                    child: TextOneLine(
                      description,
                      style: theme.textStyles.descriptionText,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.h),
            child: range != null && range != ""
                ? GestureDetector(
                    onTap: () => conditions != null
                        ? ModalHelpers.showConditionsModal(
                            context, name, conditions!)
                        : null,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: theme.colors.lightSecondaryItemsColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Row(
                          children: [
                            Text(
                              range!,
                              style: theme.textStyles.creditRangeText,
                            ),
                            Row(
                              children: [
                                conditionsCount != null && conditionsCount! > 1
                                    ? Row(
                                        children: [
                                          SizedBox(width: 2.w),
                                          Icon(
                                            SolfyIcons.arrow_down,
                                            size: 7.r,
                                            color: theme
                                                .colors.secondaryItemsColor,
                                          ),
                                          SizedBox(width: 7.w)
                                        ],
                                      )
                                    : SizedBox(),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}
