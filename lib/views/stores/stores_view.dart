import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/categories_bloc/categories_bloc.dart';
import 'package:solfy_flutter/bloc/language_changer_bloc/language_changer_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/api/catalog/filter_request.dart';
import 'package:solfy_flutter/repository/catalog_repository.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/categories_stores_list.dart';
import 'package:solfy_flutter/widgets/filter_icon.dart';
import 'package:solfy_flutter/widgets/header_app_bar.dart';
import 'package:solfy_flutter/widgets/map_stores.dart';
import 'package:solfy_flutter/widgets/no_stores.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Стартовая страница магазинов
class StoresView extends StatefulWidget {
  const StoresView({Key? key}) : super(key: key);

  @override
  _StoresViewState createState() => _StoresViewState();
}

class _StoresViewState extends State<StoresView> {
  int currentIndex = 0;
  bool _isFiltered = false;

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return BlocListener<LanguageChangerBloc, LanguageChangerState>(
      listener: (context, state) {
        if (state is LanguageChanged) {
          Timer(Duration(milliseconds: 100), () => setState(() {}));
        }
      },
      child: BlocListener<CategoriesBloc, CategoriesState>(
        listener: (context, state) {
          if (state is Loading) {
            _isFiltered = state.request.typeAll == false ||
                state.request.term != null ||
                state.request.worktime != null;
            setState(() {});
          }
        },
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: HeaderAppBar(
              shadowColor: Colors.black.withOpacity(0.24),
              adaptiveHeight: true,
              leadingVisible: false,
              customTitleOverflow: true,
              customLeading: SizedBox(),
              header: "Магазины",
              suffix: Row(
                children: [
                  currentIndex == 1
                      ? BaseIconGesturesWrapper(
                          onTap: () => ModalHelpers.showFilterModal(
                            context,
                            Injector().get<CatalogRepository>().categoriesMapFilter,
                            onSubmit: () => context.read<CategoriesBloc>().add(GetCategories()),
                          ),
                          child: FilterIcon(isFiltered: _isFiltered),
                          iconSize: 20,
                        )
                      : SizedBox(),
                  BaseIconGesturesWrapper(
                    onTap: () => context.router.push(SearchStoresRoute()),
                    child: Icon(
                      SolfyIcons.find,
                      size: 16.r,
                      color: theme.colors.secondaryItemsColor,
                    ),
                    iconSize: 16,
                  ),
                  SizedBox(width: 4.w),
                ],
              ),
              bottom: TabBar(
                onTap: (index) => setState(() => currentIndex = index),
                labelColor: theme.colors.smsCodeColor,
                labelStyle: theme.textStyles.blackRoboto1,
                indicatorColor: theme.colors.secondaryItemsColor,
                tabs: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.h),
                    child: Tab(text: "list".tr()),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.h),
                    child: Tab(text: "map".tr()),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                CategoriesStoresList(),
                MapStores(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
