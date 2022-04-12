import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solfy_flutter/bloc/biometric_set_bloc/biometric_set_bloc.dart';

/// Класс-обертка с внедрением зависимостей
class BiometricSetStackWrapper extends StatelessWidget {
  const BiometricSetStackWrapper(this.biometricBloc, {Key? key}) : super(key: key);

  final BiometricSetBloc biometricBloc;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: biometricBloc,
      child: AutoRouter(),
    );
  }
}
