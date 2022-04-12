import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:solfy_flutter/bloc/pin_change_bloc/pin_change_bloc.dart';
import 'package:solfy_flutter/repository/account_repository.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';

/// Класс-обертка с внедрением зависимостей
class ChangePinStackWrapper extends StatelessWidget {
  const ChangePinStackWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PinChangeBloc(
        Injector().get<ProfileRepository>(),
        Injector().get<AccountRepository>(),
      ),
      child: AutoRouter(),
    );
  }
}
