import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:solfy_flutter/bloc/shop_bloc/shop_bloc.dart';
import 'package:solfy_flutter/bloc/store_map_bloc/store_map_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/api/catalog/filter_request.dart';
import 'package:solfy_flutter/repository/catalog_repository.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/custom_google_map.dart';
import 'package:solfy_flutter/widgets/filter_icon.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Экран с раскрытой картой экрана бренда
///
/// [storeName] - название бренда
///
/// [headerColor] - цвет бренда в заголовке
///
/// [textHeaderColor] - цвет текста в заголовке
///
/// [initialLatLng] - начальная позиция карты
///
/// [customFilter] - кастомный фильтр
///
/// [id] - идентификатор магазина, модалка которого откроется при открытии карты
class StoreMapView extends StatefulWidget {
  const StoreMapView(this.storeName, this.headerColor, this.textHeaderColor,
      {this.initialLatLng, this.customFilter, this.id, Key? key})
      : super(key: key);

  final String storeName;
  final Color headerColor;
  final Color textHeaderColor;
  final LatLng? initialLatLng;
  final FilterRequest? customFilter;
  final int? id;
  @override
  State<StoreMapView> createState() => _StoreMapViewState();
}

class _StoreMapViewState extends State<StoreMapView> {
  bool _isFiltered = false;

  @override
  void initState() {
    context.read<StoreMapBloc>().add(GetStoreMapPoints(customFilter: widget.customFilter));
    if (widget.id != null) {
      context.read<ShopBloc>().add(GetShop(widget.id!.toString()));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: 60 + (MediaQuery.of(context).padding.top + 10),
            color: widget.headerColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 4.w),
                        BaseIconGesturesWrapper(
                          onTap: () => context.router.pop(),
                          child: Icon(
                            SolfyIcons.arrow2,
                            size: 15.4.sp,
                            color: widget.textHeaderColor,
                          ),
                          iconSize: 15,
                        ),
                        SizedBox(width: 24.w),
                        Container(
                          width: 200.w,
                          alignment: Alignment.centerLeft,
                          child: TextOneLine(
                            widget.storeName,
                            style: theme.textStyles.mainText.copyWith(
                              color: widget.textHeaderColor,
                              height: 1.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        BaseIconGesturesWrapper(
                          onTap: () => ModalHelpers.showFilterModal(
                            context,
                            widget.customFilter ??
                                Injector().get<CatalogRepository>().shopsFilter.getWithoutGeo(),
                            onSubmit: () async {
                              context.read<StoreMapBloc>().add(GetStoreMapPoints(
                                  customFilter: widget.customFilter ??
                                      Injector()
                                          .get<CatalogRepository>()
                                          .shopsFilter
                                          .getWithoutGeo()));
                            },
                          ),
                          child:
                              FilterIcon(isFiltered: _isFiltered, size: 24.r, color: Colors.white),
                          iconSize: 24,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocConsumer<StoreMapBloc, StoreMapState>(
              listener: (context, state) {
                if (state is StoreMapLoading) {
                  _isFiltered = state.request?.typeAll == false ||
                      state.request?.term != null ||
                      state.request?.worktime != null;
                  setState(() {});
                }
              },
              builder: (context, state) {
                if (state is StoreMapSuccess) {
                  return CustomGoogleMap(
                    initialLatLng: widget.initialLatLng ?? state.points.first.location,
                    onTap: (point) async {
                      context.read<ShopBloc>().add(GetShop(point.shopId?.toString() ?? ""));
                    },
                    clusterMarkers: state.points,
                    markers: {},
                  );
                }
                return LoadingRingAnimation();
              },
            ),
          ),
        ],
      ),
    );
  }
}
