import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:solfy_flutter/bloc/base_tab_updater_bloc/base_tab_updater_bloc.dart';
import 'package:solfy_flutter/bloc/biometric_set_bloc/biometric_set_bloc.dart';
import 'package:solfy_flutter/bloc/faq_bloc/faq_bloc.dart';
import 'package:solfy_flutter/bloc/language_changer_bloc/language_changer_bloc.dart';
import 'package:solfy_flutter/bloc/profile_bloc/profile_bloc.dart';
import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/bloc/region_search_bloc/region_search_bloc.dart';
import 'package:solfy_flutter/repository/account_repository.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';

/// Класс-обертка с внедрением зависимостей стека "Профиля"
class BaseTabProfileView extends StatefulWidget {
  @override
  State<BaseTabProfileView> createState() => _BaseTabProfileViewState();
}

class _BaseTabProfileViewState extends State<BaseTabProfileView> {
  final biometricBloc = BiometricSetBloc(
    Injector().get<ProfileRepository>(),
    Injector().get<AccountRepository>(),
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProfileBloc(
            Injector().get<ProfileRepository>(),
            context.read<RegionSearchBloc>(),
            biometricBloc,
            context.read<QuestionnaireBloc>(),
            context.read<BaseTabUpdaterBloc>(),
            context.read<LanguageChangerBloc>(),
          ),
        ),
        BlocProvider(
          create: (context) => FaqBloc(
            Injector().get<ProfileRepository>(),
          ),
        ),
        BlocProvider(create: (context) => biometricBloc),
      ],
      child: AutoRouter(),
    );
  }
}
