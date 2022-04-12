import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';

/// ShopCard-контейнер для модальных окон
class ShopCardContainer extends StatefulWidget {
  final Widget child;
  final Color? backgroundColor;
  final void Function()? onPop;

  const ShopCardContainer({
    Key? key,
    required this.child,
    this.backgroundColor,
    this.onPop,
  }) : super(key: key);

  @override
  _ShopCardContainerState createState() => _ShopCardContainerState();
}

class _ShopCardContainerState extends State<ShopCardContainer> {
  @override
  void dispose() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      widget.onPop?.call();
    });

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Material(
      color: Colors.white,
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(16),
        topLeft: Radius.circular(16),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 12),
                width: 48.w,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.r),
                  color: theme.colors.gray1.withOpacity(0.5),
                ),
              ),
            ],
          ),
          Container(
            child: widget.child,
          ),
        ],
      ),
    );
  }
}
