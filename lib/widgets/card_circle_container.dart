import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

class CardCircleContainer extends StatelessWidget {
  const CardCircleContainer({
    this.isCheckmark = false,
    this.isEnabled = false,
  });

  final bool isEnabled;
  final bool isCheckmark;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return !isCheckmark
        ? Container(
            width: 16.r,
            height: 16.r,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                width: 3,
                color: isEnabled ? theme.colors.secondaryItemsColor : theme.colors.gray2,
              ),
            ),
          )
        : Stack(
            children: [
              Container(
                width: 16.r,
                height: 16.r,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.colors.secondaryItemsColor,
                  border: Border.all(
                    width: 3,
                    color: isEnabled ? theme.colors.secondaryItemsColor : theme.colors.gray2,
                  ),
                ),
              ),
              Container(
                width: 16.r,
                height: 16.r,
                child: Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Icon(
                    SolfyIcons.checkmark,
                    size: 8.r,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          );
  }
}
