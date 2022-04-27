import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/bloc/brands_bloc/brands_bloc.dart' as brandBloc;
import 'package:solfy_flutter/bloc/search_stores_bloc/search_stores_bloc.dart';
import 'package:solfy_flutter/bloc/store_bloc/store_bloc.dart' as storeBloc;
import 'package:solfy_flutter/bloc/store_shops_update_bloc/store_shops_update_bloc.dart'
    as storeUpdateBloc;
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/services/database/user_settings_db_service.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/category_row_item.dart';
import 'package:solfy_flutter/widgets/custom_divider.dart';
import 'package:solfy_flutter/widgets/header_app_bar.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/search_error.dart';
import 'package:solfy_flutter/widgets/search_input.dart';
import 'package:solfy_flutter/widgets/store_row_item.dart';

/// Экран поиска категорий и магазинов
class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final TextEditingController _searchController = TextEditingController();
  final List<String> _lastQueries = [];

  void search(String text) async {
    final bloc = context.read<SearchStoresBloc>();
    bloc.add(Search(_searchController.text));
  }

  Future<void> updateQueries() async {
    final searchQueries = await UserSettingsDbService.getLastQueries();
    setState(() {
      _lastQueries.clear();
      _lastQueries.addAll(searchQueries);
    });
  }

  Future<void> addNewQuery(String query) async {
    if (!_lastQueries.contains(query)) {
      _lastQueries.add(query);
      if (_lastQueries.length > 5) {
        _lastQueries.removeAt(0);
      }
      await UserSettingsDbService.saveLastQueries(_lastQueries);
      await updateQueries();
    }
  }

  @override
  void initState() {
    Future.microtask(() async => await updateQueries());
    _searchController.addListener(() {
      search(_searchController.text);
    });
    super.initState();
  }

  @override
  void dispose() {
    _searchController.removeListener(() {
      search(_searchController.text);
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return BlocListener<storeBloc.StoreBloc, storeBloc.StoreState>(
      listener: (context, state) async {
        if (state is storeBloc.BrandLoading) {
          ModalHelpers.showLoadingModal(context);
        }
        if (state is storeBloc.BrandEndLoading) {
          await context.router.root.pop();
        }
        if (state is storeBloc.GetBrandSuccess) {
          context.router.push(StoreRoute(
            shopsUpdateBloc: context.read<storeUpdateBloc.StoreShopsUpdateBloc>(),
            brandBloc: context.read<storeBloc.StoreBloc>(),
          ));
        }
        if (state is storeBloc.GetBrandError) {
          ModalHelpers.showError(context, state.errors);
        }
      },
      child: BlocConsumer<SearchStoresBloc, SearchStoresState>(
        listener: (context, state) {
          if (state is FoundError) {
            ModalHelpers.showError(context, state.errors);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: HeaderAppBar(
              header: "Поиск",
            ),
            body: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        SizedBox(height: 14.h),
                        SearchInput(
                          textEditingController: _searchController,
                          hintText: "store_or_category".tr(),
                          autoFocus: true,
                          prefix: state is Loading
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    LoadingRingAnimation(
                                      ringSize: 13.r,
                                      lineWidth: 1,
                                    ),
                                  ],
                                )
                              : null,
                        ),
                        SizedBox(height: 14.h),
                        state is LessThenThreeSymbols
                            ? Column(
                                children: [
                                  Text(
                                    "please_enter_at_least_3_characters".tr(),
                                    style: theme.textStyles.profileTitleText,
                                  ),
                                  SizedBox(height: 24.h),
                                ],
                              )
                            : SizedBox(),
                        (state is Initial || state is EmptyQuery) && _lastQueries.isNotEmpty
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Последние",
                                    style: theme.textStyles.profileTitleText,
                                  ),
                                  SizedBox(height: 22.h),
                                  ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: _lastQueries.length,
                                    shrinkWrap: true,
                                    reverse: true,
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.only(bottom: 22.h),
                                      child: GestureDetector(
                                        onTap: () => _searchController.text = _lastQueries[index],
                                        child: Text(
                                          _lastQueries[index],
                                          style: theme.textStyles.textInputStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                  (state is Initial || state is EmptyQuery) && _lastQueries.isEmpty
                      ? Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      "start_typing_category_name".tr(),
                                      style: theme.textStyles.profileTitleText,
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      : Expanded(
                          child: CustomScrollView(
                            slivers: [
                              SliverToBoxAdapter(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      state is EmptyResults
                                          ? Column(
                                              children: [
                                                SizedBox(height: 24.h),
                                                SearchError(
                                                    errorText: "cant_find_category_or_store".tr()),
                                              ],
                                            )
                                          : SizedBox(),
                                      state is FoundSuccess && state.isCategories
                                          ? Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 12.h),
                                                Text(
                                                  "Категории",
                                                  style: theme.textStyles.profileTitleText,
                                                ),
                                                SizedBox(height: 24.h),
                                                ListView.builder(
                                                  physics: NeverScrollableScrollPhysics(),
                                                  itemCount: state.search.categories!.length,
                                                  shrinkWrap: true,
                                                  itemBuilder: (context, index) => Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom:
                                                            (state.search.categories!.length - 1) ==
                                                                    index
                                                                ? 0
                                                                : 24.h),
                                                    child: GestureDetector(
                                                      onTap: () async {
                                                        context.read<SearchStoresBloc>().add(
                                                            SetCategoryId(state
                                                                .search.categories![index].id!));
                                                        context
                                                            .read<brandBloc.BrandsBloc>()
                                                            .add(brandBloc.GetBrands());
                                                        context.router.push(BrandsRoute(children: [
                                                          CategoryStoresView(
                                                              categoryName: state
                                                                  .search.categories![index].name!)
                                                        ]));
                                                        addNewQuery(
                                                            state.search.categories![index].name!);
                                                      },
                                                      child: CategoryRowItem(
                                                        logo: state.search.categories![index].icon!,
                                                        name: state.search.categories![index].name!,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                CustomDivider(12),
                                              ],
                                            )
                                          : SizedBox(),
                                      state is FoundSuccess && state.isBrands
                                          ? Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Магазины",
                                                  style: theme.textStyles.profileTitleText,
                                                ),
                                                SizedBox(height: 24.h),
                                                ListView.builder(
                                                  physics: NeverScrollableScrollPhysics(),
                                                  itemCount: state.search.brands!.length,
                                                  shrinkWrap: true,
                                                  itemBuilder: (context, index) => Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: (state.search.brands!.length - 1) ==
                                                                index
                                                            ? 0
                                                            : 24.h),
                                                    child: StoreRowItem(
                                                      onTap: () async {
                                                        context.read<storeBloc.StoreBloc>().add(
                                                            storeBloc.GetBrand(
                                                                state.search.brands![index].id!));
                                                        addNewQuery(
                                                            state.search.brands![index].name!);
                                                      },
                                                      name: state.search.brands![index].name!,
                                                      description: state
                                                          .search.brands![index].shortDescription!,
                                                      logo: state.search.brands?[index].logo == ""
                                                          ? null
                                                          : state.search.brands?[index].logo,
                                                      range:
                                                          state.search.brands?[index].ranges ?? "",
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          : SizedBox(),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
