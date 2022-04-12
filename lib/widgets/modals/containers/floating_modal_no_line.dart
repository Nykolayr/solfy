import 'package:flutter/material.dart';

/// Floating-контейнер для модальных окон без верхней черточки

class FloatingModalNoLine extends StatefulWidget {
  final Widget child;
  final Color? backgroundColor;
  final void Function()? onPop;

  const FloatingModalNoLine({
    Key? key,
    required this.child,
    this.backgroundColor,
    this.onPop,
  }) : super(key: key);

  @override
  _FloatingModalNoLineState createState() => _FloatingModalNoLineState();
}

class _FloatingModalNoLineState extends State<FloatingModalNoLine> {
  @override
  void dispose() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      widget.onPop?.call();
    });

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Material(
            color: widget.backgroundColor,
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(16),
            child: Container(
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
