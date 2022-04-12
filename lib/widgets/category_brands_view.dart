import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/brands_bloc/brands_bloc.dart';
import 'package:solfy_flutter/bloc/feed_bloc/feed_bloc.dart';
import 'package:solfy_flutter/bloc/store_bloc/store_bloc.dart';
import 'package:solfy_flutter/bloc/store_shops_update_bloc/store_shops_update_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/entities/catalog/brands/brand_item_view_model.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/feed_item.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/region_with_stores_row.dart';
import 'package:solfy_flutter/widgets/store_row_item.dart';
import 'package:solfy_flutter/widgets/no_stores.dart';

/// Список брендов
class CategoryBrandsView extends StatelessWidget {
  const CategoryBrandsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    List<Widget> buildItems(List<BrandItemViewModel> brands) {
      final List<Widget> items = [];
      if (brands.isEmpty) return [NoStores(heightFactor: 2)];

      for (var brand in brands) {
        items.add(Padding(
          padding: EdgeInsets.all(16.r),
          child: StoreRowItem(
            name: brand.name ?? "",
            description: brand.shortDescription ?? "",
            logo: brand.logo ?? "",
            range: brand.ranges,
            distance: brand.distance,
            onTap: () => context.read<StoreBloc>().add(GetBrand(brand.id ?? 1)),
          ),
        ));
      }

      return items;
    }

    return BlocListener<FeedBloc, FeedState>(
      listener: (context, state) async {
        if (state is FeedLoading) {
          ModalHelpers.showLoadingModal(context);
        }
        if (state is FeedEndLoading) {
          await context.router.root.pop();
        }
        if (state is GetFeedSuccess) {
          context.router.push(
            FeedDetailRoute(
              children: [FeedDetailView(feed: state.response)],
            ),
          );
        }
        if (state is GetFeedError) {
          ModalHelpers.showError(context, state.errors);
        }
      },
      child: BlocListener<StoreBloc, StoreState>(
        listener: (context, state) async {
          if (state is BrandLoading) {
            ModalHelpers.showLoadingModal(context);
          }
          if (state is BrandEndLoading) {
            await context.router.root.pop();
          }
          if (state is GetBrandSuccess) {
            context.router.push(StoreRoute(
              shopsUpdateBloc: context.read<StoreShopsUpdateBloc>(),
              brandBloc: context.read<StoreBloc>(),
            ));
          }
          if (state is GetBrandError) {
            ModalHelpers.showError(context, state.errors);
          }
        },
        child: BlocConsumer<BrandsBloc, BrandsState>(
          listener: (context, state) {
            if (state is GetBrandsError) {
              ModalHelpers.showError(context, state.errors);
            }
          },
          builder: (context, state) {
            if (state is GetBrandsSuccess) {
              return CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.r),
                          child: RegionWithStoresRow(state.brands.info),
                        ),
                        Divider(height: 0),
                        state.brands.feeds.isNotEmpty
                            ? Container(
                                height: 250.h,
                                color: theme.colors.white1,
                                child: Container(
                                  height: 218.h,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: state.brands.feeds.length,
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.only(left: index == 0 ? 12.w : 0),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(vertical: 22.h),
                                        child: Container(
                                          width: 280.w,
                                          child: FeedShortItem(
                                            state.brands.feeds[index],
                                            customImageHeight: 110.h,
                                            categoriesMode: true,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : SizedBox(),
                        ...buildItems(state.brands.brands),
                      ],
                    ),
                  ),
                ],
              );
            }
            return LoadingRingAnimation();
          },
        ),
      ),
    );
  }
}
