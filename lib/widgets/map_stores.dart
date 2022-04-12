import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/bloc/categories_bloc/categories_bloc.dart';
import 'package:solfy_flutter/bloc/shop_bloc/shop_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/repository/static_repository.dart';
import 'package:solfy_flutter/widgets/custom_google_map.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';

/// Карта с магазинами
class MapStores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    StaticRepository staticStore = context.read<StaticRepository>();

    return BlocListener<ShopBloc, ShopState>(
      listener: (context, shopState) async {
        if (shopState is ShopLoading) {
          ModalHelpers.showLoadingModal(context);
        }
        if (shopState is ShopEndLoading) {
          await context.router.root.pop();
        }
        if (shopState is GetShopError) {
          ModalHelpers.showError(context, shopState.errors);
        }
        if (shopState is GetShopSuccess) {
          ModalHelpers.showCardModal(context, shopState.shop);
        }
      },
      child: BlocBuilder<CategoriesBloc, CategoriesState>(
        builder: (context, state) {
          if (state is GetCategoriesSuccess) {
            return CustomGoogleMap(
              initialZoom: 11,
              initialLatLng: staticStore.citiesCoordinates[state.cityId ?? 1],
              markers: {},
              onTap: (point) async {
                context.read<ShopBloc>().add(GetShop(point.shopId?.toString() ?? ""));
              },
              clusterMarkers: state.points,
            );
          }
          return LoadingRingAnimation();
        },
      ),
    );
  }
}
