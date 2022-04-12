import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:solfy_flutter/bloc/email_bloc/email_bloc.dart';
import 'package:solfy_flutter/repository/account_repository.dart';

/// Класс-обертка с внедрением зависимостей
class EmailInputStackWrapper extends StatelessWidget {
  const EmailInputStackWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmailBloc(Injector().get<AccountRepository>()),
      child: AutoRouter(),
    );
  }
}
