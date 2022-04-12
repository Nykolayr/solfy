import 'package:flutter/material.dart';

/// Отключение стремных дефолтных эффектов оверскролла на андройде
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
