import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/bloc/region_search_bloc/region_search_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/api/static/geo/geo_city_response.dart';
import 'package:solfy_flutter/models/api/static/geo/geo_region_response.dart';
import 'package:solfy_flutter/repository/profile_repository.dart';
import 'package:solfy_flutter/repository/static_repository.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/header_app_bar.dart';
import 'package:solfy_flutter/widgets/region_search_item.dart';
import 'package:solfy_flutter/widgets/search_error.dart';
import 'package:solfy_flutter/widgets/search_input.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Экран с установкой региона приложения
class RegionSearchView extends StatefulWidget {
  const RegionSearchView({this.isModal = false});

  final bool isModal;
  @override
  _RegionSearchViewState createState() => _RegionSearchViewState();
}

class _RegionSearchViewState extends State<RegionSearchView> {
  final TextEditingController _searchController = TextEditingController();
  List<GeoCityResponse>? searchedItems;
  bool _isLengthErrorVisible = false;

  void search(String text) {
    StaticRepository static = context.read<StaticRepository>();
    if (_searchController.text.length < 3 && _searchController.text.length > 0) {
      setState(() {
        _isLengthErrorVisible = true;
        searchedItems = [];
      });
    } else {
      setState(() {
        _isLengthErrorVisible = false;
      });
      if (static.geo.cities != null && _searchController.text != "") {
        searchedItems = static.geo.cities!
            .where((element) =>
                element.name?.toLowerCase().startsWith(_searchController.text.toLowerCase()) ??
                false)
            .toList();
        setState(() {});
      } else {
        searchedItems = null;
        setState(() {});
      }
    }
  }

  @override
  void initState() {
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
    StaticRepository static = context.read<StaticRepository>();
    ProfileRepository profileRepository = context.read<ProfileRepository>();

    return BlocConsumer<RegionSearchBloc, RegionSearchState>(
      listener: (context, state) async {
        // if (state is Loading) {
        // ModalHelpers.showLoadingModal(context);
        // }
        // if (state is EndLoading) {
        //   await context.router.root.pop();
        // }
        if (state is SetSuccess) {
          if (widget.isModal) {
            await context.router.root.pop();
          } else {
            await context.router.pop();
          }
        }
        if (state is SetError) {
          ModalHelpers.showError(context, state.errors);
        }
        if (state is ShowGoToSettings) {
          ModalHelpers.showGeoRequestModalSettings(context);
        }
        if (state is ShowRequestGeoAccess) {
          await ModalHelpers.showGeoRequestModalFeed(context).then((value) {
            context.read<RegionSearchBloc>().add(const OnCloseToMe());
          });
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: HeaderAppBar(
            header: "region".tr(),
            customLeading: BaseIconGesturesWrapper(
              onTap: () => context.router.pop(),
              child: Icon(
                widget.isModal ? SolfyIcons.close : SolfyIcons.arrow2,
                color: theme.colors.secondaryItemsColor,
                size: widget.isModal ? 22.sp : 15.4.sp,
              ),
              iconSize: widget.isModal ? 22 : 15,
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    SizedBox(height: 2.h),
                    SearchInput(
                      textEditingController: _searchController,
                      hintText: "enter_city".tr(),
                    ),
                    _isLengthErrorVisible
                        ? Column(
                            children: [
                              SizedBox(height: 16.h),
                              Text(
                                "please_enter_at_least_3_characters".tr(),
                                style: theme.textStyles.profileTitleText,
                              ),
                            ],
                          )
                        : SizedBox(),
                    SizedBox(height: 14.h),
                  ],
                ),
              ),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Column(
                          children: [
                            SizedBox(height: 16.r),
                            searchedItems != null &&
                                    searchedItems!.length == 0 &&
                                    !_isLengthErrorVisible
                                ? SearchError()
                                : SizedBox(),
                            searchedItems == null
                                ? Column(
                                    children: [
                                      GestureDetector(
                                        behavior: HitTestBehavior.opaque,
                                        onTap: () => context
                                            .read<RegionSearchBloc>()
                                            .add(const OnCloseToMe()),
                                        child: RegionSearchItem(
                                          isSelected: profileRepository.isMyLocationEnabled,
                                          name: "close_to_me".tr(),
                                          customIcon: SolfyIcons.geo_1,
                                        ),
                                      ),
                                      SizedBox(height: 21.r),
                                      Divider(height: 0),
                                      SizedBox(height: 7.r),
                                      Container(
                                        width: double.infinity,
                                        child: Text("all_cities".tr(),
                                            style: theme.textStyles.profileTitleText),
                                      ),
                                      SizedBox(height: 22.h),
                                    ],
                                  )
                                : SizedBox(),
                            ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: searchedItems != null
                                  ? searchedItems!.length
                                  : static.geo.cities?.length ?? 0,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => Padding(
                                padding: EdgeInsets.only(bottom: 24.r),
                                child: GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () => context.read<RegionSearchBloc>().add(
                                        OnRegion(searchedItems != null
                                            ? searchedItems![index].id!
                                            : static.geo.cities![index].id!),
                                      ),
                                  child: RegionSearchItem(
                                      isSelected: profileRepository.isMyLocationEnabled
                                          ? false
                                          : searchedItems != null
                                              ? profileRepository.cityId == searchedItems![index].id
                                              : profileRepository.cityId ==
                                                  static.geo.cities![index].id,
                                      name: searchedItems != null
                                          ? searchedItems![index].name!
                                          : static.geo.cities![index].name!,
                                      caption: static.geo.regions
                                          ?.firstWhere(
                                            (element) =>
                                                element.id ==
                                                (searchedItems != null
                                                    ? searchedItems![index].regionId
                                                    : static.geo.cities?[index].regionId),
                                            orElse: () => Region(),
                                          )
                                          .name),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
