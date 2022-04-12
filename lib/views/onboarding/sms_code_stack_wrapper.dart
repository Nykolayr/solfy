import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:solfy_flutter/bloc/sms_code_bloc/sms_code_bloc.dart';
import 'package:solfy_flutter/repository/account_repository.dart';

/// Класс-обертка с внедрением зависимостей
class SmsCodeStackWrapper extends StatelessWidget {
  const SmsCodeStackWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => Injector().get<AccountRepository>(),
      child: BlocProvider(
        create: (context) => SmsCodeBloc(Injector().get<AccountRepository>()),
        child: AutoRouter(),
      ),
    );
  }
}
