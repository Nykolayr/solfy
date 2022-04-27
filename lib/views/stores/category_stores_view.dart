import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:solfy_flutter/bloc/brands_bloc/brands_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/repository/catalog_repository.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/brands_map_stores.dart';
import 'package:solfy_flutter/widgets/category_brands_view.dart';
import 'package:solfy_flutter/widgets/filter_icon.dart';
import 'package:solfy_flutter/widgets/header_app_bar.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Страница со списком брендов по категории
///
/// [categoryName] - название категории, обязательный параметр
class CategoryStoresView extends StatefulWidget {
  const CategoryStoresView(this.categoryName);

  final String categoryName;
  @override
  _CategoryStoresViewState createState() => _CategoryStoresViewState();
}

class _CategoryStoresViewState extends State<CategoryStoresView> with TickerProviderStateMixin {
  late TabController _tabController;
  bool isScrollable = true;
  int currentIndex = 0;
  bool _isFiltered = false;
  bool _isListFiltered = false;
  bool _isMapFiltered = false;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    context.read<BrandsBloc>().add(const GetBrands());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Scaffold(
      appBar: HeaderAppBar(
        shadowColor: Colors.black.withOpacity(0.24),
        adaptiveHeight: true,
        customTitleOverflow: true,
        header: widget.categoryName,
        suffix: Row(
          children: [
            BlocListener<BrandsBloc, BrandsState>(
              listener: (context, state) {
                if (state is Loading) {
                  var request;
                  if (currentIndex == 0) {
                    request = state.request[CurrentTab.list];
                    _isListFiltered = request.typeAll == false ||
                        request.term != null ||
                        request.worktime != null;
                    _isFiltered = _isListFiltered;
                  } else {
                    request = state.request[CurrentTab.map];
                    _isMapFiltered = request.typeAll == false ||
                        request.term != null ||
                        request.worktime != null;
                    _isFiltered = _isMapFiltered;
                  }
                }
                setState(() {});
              },
              child: BaseIconGesturesWrapper(
                onTap: () => ModalHelpers.showFilterModal(
                    context,
                    currentIndex == 0
                        ? Injector().get<CatalogRepository>().brandsFilter
                        : Injector().get<CatalogRepository>().brandsMapFilter, onSubmit: () {
                  context.read<BrandsBloc>().add(const GetBrands());
                }),
                child: FilterIcon(isFiltered: _isFiltered),
                iconSize: 20,
              ),
            ),
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
          onTap: (index) {
            setState(() {
              currentIndex = index;
              _isFiltered = currentIndex == 0 ? _isListFiltered : _isMapFiltered;
            });
            if (index == 0) {
              setState(() => isScrollable = true);
            }
          },
          labelColor: theme.colors.smsCodeColor,
          labelStyle: theme.textStyles.blackRoboto1,
          indicatorColor: theme.colors.secondaryItemsColor,
          controller: _tabController,
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
        controller: _tabController,
        children: [
          CategoryBrandsView(),
          BrandsMapStores(() => null),
        ],
      ),
    );
  }
}
