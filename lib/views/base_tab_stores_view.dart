import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:solfy_flutter/bloc/base_tab_updater_bloc/base_tab_updater_bloc.dart';
import 'package:solfy_flutter/bloc/brands_bloc/brands_bloc.dart';
import 'package:solfy_flutter/bloc/categories_bloc/categories_bloc.dart';
import 'package:solfy_flutter/bloc/feed_bloc/feed_bloc.dart';
import 'package:solfy_flutter/bloc/language_changer_bloc/language_changer_bloc.dart';
import 'package:solfy_flutter/bloc/region_search_bloc/region_search_bloc.dart';
import 'package:solfy_flutter/bloc/shop_bloc/shop_bloc.dart';
import 'package:solfy_flutter/bloc/store_bloc/store_bloc.dart';
import 'package:solfy_flutter/bloc/store_shops_update_bloc/store_shops_update_bloc.dart';
import 'package:solfy_flutter/repository/catalog_repository.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';

/// Класс-обертка с внедрением зависимостей стека "Магазинов"
class BaseTabStoresView extends StatefulWidget {
  @override
  State<BaseTabStoresView> createState() => _BaseTabStoresViewState();
}

class _BaseTabStoresViewState extends State<BaseTabStoresView> {
  final StoreBloc storeBloc = StoreBloc(
    Injector().get<CatalogRepository>(),
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CategoriesBloc(
            Injector().get<CatalogRepository>(),
            context.read<RegionSearchBloc>(),
            context.read<LanguageChangerBloc>(),
            context.read<BaseTabUpdaterBloc>(),
          ),
        ),
        BlocProvider(
          create: (context) => BrandsBloc(
            Injector().get<CatalogRepository>(),
            context.read<RegionSearchBloc>(),
          ),
        ),
        BlocProvider(
          create: (context) => storeBloc,
        ),
        BlocProvider(
          create: (context) => ShopBloc(
            Injector().get<CatalogRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => StoreShopsUpdateBloc(
            Injector().get<CatalogRepository>(),
            context.read<RegionSearchBloc>(),
          ),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => FeedBloc(
            Injector().get<ProfileRepository>(),
          ),
        ),
      ],
      child: AutoRouter(),
    );
  }
}
