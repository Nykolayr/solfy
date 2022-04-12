import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solfy_flutter/bloc/faq_bloc/faq_bloc.dart';

/// Класс-обертка с внедрением зависимостей
class FaqStackWrapper extends StatelessWidget {
  const FaqStackWrapper(this.bloc, {Key? key}) : super(key: key);
  final FaqBloc bloc;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: AutoRouter(),
    );
  }
}
