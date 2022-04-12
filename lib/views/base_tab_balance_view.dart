import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:solfy_flutter/bloc/base_tab_updater_bloc/base_tab_updater_bloc.dart';
import 'package:solfy_flutter/bloc/brands_bloc/brands_bloc.dart';
import 'package:solfy_flutter/bloc/categories_bloc/categories_bloc.dart';
import 'package:solfy_flutter/bloc/history_bloc/history_bloc.dart';
import 'package:solfy_flutter/bloc/language_changer_bloc/language_changer_bloc.dart';
import 'package:solfy_flutter/bloc/operation_bloc/operation_bloc.dart';
import 'package:solfy_flutter/bloc/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:solfy_flutter/bloc/region_search_bloc/region_search_bloc.dart';
import 'package:solfy_flutter/bloc/schedules_bloc/schedules_bloc.dart';
import 'package:solfy_flutter/bloc/shop_bloc/shop_bloc.dart';
import 'package:solfy_flutter/bloc/store_bloc/store_bloc.dart';
import 'package:solfy_flutter/bloc/store_shops_update_bloc/store_shops_update_bloc.dart';
import 'package:solfy_flutter/bloc/wallet_bloc/wallet_bloc.dart';
import 'package:solfy_flutter/repository/catalog_repository.dart';
import 'package:solfy_flutter/repository/wallet_repository.dart';

/// Класс-обертка с внедрением зависимостей стека "Баланс"
class BaseTabBalanceView extends StatefulWidget {
  @override
  State<BaseTabBalanceView> createState() => _BaseTabBalanceViewState();
}

class _BaseTabBalanceViewState extends State<BaseTabBalanceView> {
  late WalletBloc walletBloc;
  late SchedulesBloc schedulesBloc;
  final StoreBloc storeBloc = StoreBloc(
    Injector().get<CatalogRepository>(),
    isCatalogBloc: false,
  );

  @override
  void initState() {
    walletBloc = WalletBloc(
      Injector().get<WalletRepository>(),
      context.read<QuestionnaireBloc>(),
      context.read<BaseTabUpdaterBloc>(),
    );
    schedulesBloc = SchedulesBloc(
      Injector().get<WalletRepository>(),
      walletBloc,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => walletBloc,
        ),
        BlocProvider(
          create: (context) => schedulesBloc,
          lazy: false,
        ),
        BlocProvider(
          create: (context) => OperationBloc(
            Injector().get<WalletRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => HistoryBloc(
            Injector().get<WalletRepository>(),
            walletBloc,
          ),
          lazy: false,
        ),
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
      ],
      child: AutoRouter(),
    );
  }
}
