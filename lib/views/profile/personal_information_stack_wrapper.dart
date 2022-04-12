import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:solfy_flutter/bloc/personal_information_bloc/personal_information_bloc.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';

/// Класс-обертка с внедрением зависимостей
class PersonalInformationStackWrapper extends StatelessWidget {
  const PersonalInformationStackWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => Injector().get<ProfileRepository>(),
      child: BlocProvider(
        create: (context) => PersonalInformationBloc(
          Injector().get<ProfileRepository>(),
        ),
        child: AutoRouter(),
      ),
    );
  }
}
