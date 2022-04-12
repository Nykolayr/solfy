import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:solfy_flutter/bloc/send_letter_bloc/send_letter_bloc.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';

/// Класс-обертка с внедрением зависимостей
class SendLetterStackWrapper extends StatelessWidget {
  const SendLetterStackWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => Injector().get<ProfileRepository>(),
      child: BlocProvider(
        create: (context) => SendLetterBloc(
          Injector().get<ProfileRepository>(),
        ),
        child: AutoRouter(),
      ),
    );
  }
}
