import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

class HeaderAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HeaderAppBar({
    this.header,
    this.customLeading,
    this.onDefaultLeadingTap,
    this.customTitle,
    this.suffix,
    this.bottom,
    this.adaptiveHeight = false,
    this.leadingVisible = true,
    this.customTitleOverflow = false,
    this.shadowColor,
  });

  final String? header;
  final Widget? customLeading;
  final Widget? customTitle;
  final Widget? suffix;
  final bool adaptiveHeight;
  final bool leadingVisible;
  final bool customTitleOverflow;
  final PreferredSizeWidget? bottom;
  final void Function(BuildContext context)? onDefaultLeadingTap;
  final Color? shadowColor;

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 0.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              leadingVisible
                  ? Row(
                      children: [
                        SizedBox(width: 4.w),
                        customLeading == null
                            ? BaseIconGesturesWrapper(
                                onTap: () => onDefaultLeadingTap != null
                                    ? onDefaultLeadingTap?.call(context)
                                    : context.router.pop(),
                                child: Icon(
                                  SolfyIcons.arrow2,
                                  color: theme.colors.secondaryItemsColor,
                                  size: 15.4.sp,
                                ),
                                iconSize: 16,
                              )
                            : customLeading!,
                      ],
                    )
                  : SizedBox(),
              customTitle == null
                  ? Row(
                      children: [
                        SizedBox(width: 12.w),
                        SizedBox(
                          width: customTitleOverflow ? 190.w : null,
                          child: TextOneLine(
                            header ?? "",
                            style: theme.textStyles.mainText,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    )
                  : customTitle!,
            ],
          ),
          suffix ?? SizedBox(),
        ],
      ),
      bottom: bottom,
      backgroundColor: Colors.white,
      shadowColor: shadowColor != null ? shadowColor : Colors.transparent,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(
      (adaptiveHeight ? 56.r : kToolbarHeight) + (bottom?.preferredSize.height ?? 0));
}
