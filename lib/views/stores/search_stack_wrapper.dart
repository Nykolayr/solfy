import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:solfy_flutter/bloc/region_search_bloc/region_search_bloc.dart';
import 'package:solfy_flutter/bloc/search_stores_bloc/search_stores_bloc.dart';
import 'package:solfy_flutter/bloc/store_bloc/store_bloc.dart';
import 'package:solfy_flutter/bloc/store_shops_update_bloc/store_shops_update_bloc.dart';
import 'package:solfy_flutter/repository/catalog_repository.dart';

/// Класс-обертка с внедрением зависимостей
class SearchStackWrapper extends StatefulWidget {
  const SearchStackWrapper({Key? key}) : super(key: key);

  @override
  State<SearchStackWrapper> createState() => _SearchStackWrapperState();
}

class _SearchStackWrapperState extends State<SearchStackWrapper> {
  final StoreBloc storeBloc = StoreBloc(
    Injector().get<CatalogRepository>(),
    isCatalogBloc: false,
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchStoresBloc(
            Injector().get<CatalogRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => storeBloc,
        ),
        BlocProvider(
          create: (context) => StoreShopsUpdateBloc(
            Injector().get<CatalogRepository>(),
            context.read<RegionSearchBloc>(),
          ),
          lazy: false,
        ),
      ],
      child: AutoRouter(),
    );
  }
}
