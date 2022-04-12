import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';

/// Floating-контейнер для модальных окон
class FloatingModal extends StatefulWidget {
  final Widget child;
  final Color? backgroundColor;
  final void Function()? onPop;

  const FloatingModal({
    Key? key,
    required this.child,
    this.backgroundColor,
    this.onPop,
  }) : super(key: key);

  @override
  _FloatingModalState createState() => _FloatingModalState();
}

class _FloatingModalState extends State<FloatingModal> {
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

    return SafeArea(
      child: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Material(
            color: widget.backgroundColor,
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 12),
                      width: 48.w,
                      height: 4,
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
          ),
        ),
      ),
    );
  }
}
