import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:solfy_flutter/bloc/pin_code_login_bloc/pin_code_login_bloc.dart';
import 'package:solfy_flutter/repository/account_repository.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';

/// Класс-обертка с внедрением зависимостей
class PinCodeLoginStackWrapper extends StatelessWidget {
  const PinCodeLoginStackWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PinCodeLoginBloc(
        Injector().get<ProfileRepository>(),
        Injector().get<AccountRepository>(),
        Injector("Initial").get<FlutterSecureStorage>(),
      ),
      child: AutoRouter(),
    );
  }
}
