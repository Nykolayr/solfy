import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:solfy_flutter/bloc/base_tab_updater_bloc/base_tab_updater_bloc.dart';
import 'package:solfy_flutter/bloc/settings_bloc/settings_bloc.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';

/// Класс-обертка с внедрением зависимостей стека всех табов
class BaseTabStackWrapper extends StatelessWidget {
  const BaseTabStackWrapper({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => Injector().get<ProfileRepository>(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SettingsBloc(
              Injector().get<ProfileRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => BaseTabUpdaterBloc(),
          ),
        ],
        child: AutoRouter(),
      ),
    );
  }
}
