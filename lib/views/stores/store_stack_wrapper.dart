import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solfy_flutter/bloc/store_bloc/store_bloc.dart';
import 'package:solfy_flutter/bloc/store_shops_update_bloc/store_shops_update_bloc.dart';

/// Класс-обертка с внедрением зависимостей
class StoreStackWrapper extends StatelessWidget {
  const StoreStackWrapper({
    required this.brandBloc,
    required this.shopsUpdateBloc,
    this.isModal = false,
    Key? key,
  }) : super(key: key);

  final StoreShopsUpdateBloc shopsUpdateBloc;
  final StoreBloc brandBloc;
  final bool isModal;
  @override
  Widget build(BuildContext context) {
    if (isModal) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => brandBloc,
          ),
          BlocProvider(
            create: (context) => shopsUpdateBloc,
          ),
        ],
        child: AutoRouter(),
      );
    } else {
      return MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: brandBloc,
          ),
          BlocProvider.value(
            value: shopsUpdateBloc,
          ),
        ],
        child: AutoRouter(),
      );
    }
  }
}
