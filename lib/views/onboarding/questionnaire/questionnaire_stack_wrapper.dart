import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// Класс-обертка с внедрением зависимостей
class QuestionnaireStackWrapper extends StatelessWidget {
  const QuestionnaireStackWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}
