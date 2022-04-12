import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:solfy_flutter/bloc/store_map_bloc/store_map_bloc.dart';
import 'package:solfy_flutter/bloc/store_shops_update_bloc/store_shops_update_bloc.dart';
import 'package:solfy_flutter/repository/catalog_repository.dart';

/// Класс-обертка с внедрением зависимостей
class MapStackWrapper extends StatelessWidget {
  const MapStackWrapper({
    required this.shopsUpdateBloc,
    Key? key,
  }) : super(key: key);

  final StoreShopsUpdateBloc shopsUpdateBloc;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: shopsUpdateBloc,
        ),
        BlocProvider(
          create: (context) => StoreMapBloc(
            Injector().get<CatalogRepository>(),
          ),
        )
      ],
      child: AutoRouter(),
    );
  }
}
