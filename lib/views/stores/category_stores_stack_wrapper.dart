import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:solfy_flutter/bloc/feed_bloc/feed_bloc.dart';
import 'package:solfy_flutter/bloc/region_search_bloc/region_search_bloc.dart';
import 'package:solfy_flutter/bloc/store_bloc/store_bloc.dart';
import 'package:solfy_flutter/bloc/store_shops_update_bloc/store_shops_update_bloc.dart';
import 'package:solfy_flutter/repository/catalog_repository.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';

/// Класс-обертка с внедрением зависимостей
class CategoryStoresStackWrapper extends StatefulWidget {
  const CategoryStoresStackWrapper({Key? key}) : super(key: key);

  @override
  State<CategoryStoresStackWrapper> createState() => _CategoryStoresStackWrapperState();
}

class _CategoryStoresStackWrapperState extends State<CategoryStoresStackWrapper> {
  final StoreBloc storeBloc = StoreBloc(
    Injector().get<CatalogRepository>(),
  );
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => storeBloc,
        ),
        BlocProvider(
          create: (context) => FeedBloc(
            Injector().get<ProfileRepository>(),
          ),
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
