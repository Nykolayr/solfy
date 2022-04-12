import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

class FilterIcon extends StatelessWidget {
  final bool isFiltered;
  final double size;
  final Color color;
  FilterIcon({required this.isFiltered, this.size = 20.0, this.color = const Color(0xFF4E36C4)});

  Widget build(BuildContext context) {
    final theme = context.read<AppTheme>();
    final padding = size == 20.0 ? 12.0 : 11.0;
    return Stack(
      children: [
        Visibility(
          visible: isFiltered,
          child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: padding, right: padding),
              child: Container(
                width: 6.w,
                height: 6.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Icon(
            SolfyIcons.filters,
            size: size,
            color: theme.colors.secondaryItemsColor,
          ),
        ),
      ],
    );
  }
}
