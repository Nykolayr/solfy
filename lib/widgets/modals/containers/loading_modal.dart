import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingModalContainer extends StatefulWidget {
  final Widget child;
  final Color? backgroundColor;
  final void Function()? onPop;

  const LoadingModalContainer({
    required this.child,
    this.backgroundColor,
    this.onPop,
  });

  @override
  _LoadingModalContainerState createState() => _LoadingModalContainerState();
}

class _LoadingModalContainerState extends State<LoadingModalContainer> {
  @override
  void dispose() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      widget.onPop?.call();
    });

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 128.w,
          height: 128.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.16),
                spreadRadius: 4,
                blurRadius: 9,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: Container(
            child: widget.child,
          ),
        ),
      ],
    );
  }
}
