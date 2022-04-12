import 'package:flutter/cupertino.dart';
import 'package:solfy_flutter/models/enums.dart';

/// Анимированный расширяющийся виджет
///
/// [child] - Выпадающий виджет
/// [expand] - При каком условии должен появляться/скрываться
/// [direction] - Направление анимации
class ExpandedAnimation extends StatefulWidget {
  final Widget child;
  final bool expand;
  final Direction direction;
  ExpandedAnimation({this.expand = true, this.direction = Direction.downToUp, required this.child});

  @override
  _ExpandedAnimationState createState() => _ExpandedAnimationState();
}

class _ExpandedAnimationState extends State<ExpandedAnimation> with SingleTickerProviderStateMixin {
  late AnimationController expandController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    if (widget.expand) {
      expandController.forward();
    }
  }

  void prepareAnimations() {
    expandController = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    Animation<double> curve = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(curve)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void didUpdateWidget(ExpandedAnimation oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.expand) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axisAlignment: widget.direction == Direction.downToUp ? 1.0 : -1.0,
      sizeFactor: animation,
      child: widget.child,
    );
  }
}
