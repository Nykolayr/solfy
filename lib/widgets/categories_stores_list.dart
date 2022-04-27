import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/categories_bloc/categories_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/widgets/category_row_item.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/region_with_stores_row.dart';

class CategoriesStoresList extends StatefulWidget {
  const CategoriesStoresList();

  @override
  _CategoriesStoresListState createState() => _CategoriesStoresListState();
}

class _CategoriesStoresListState extends State<CategoriesStoresList> {
  @override
  void initState() {
    final bloc = context.read<CategoriesBloc>();
    if (!(bloc.state is GetCategoriesSuccess)) {
      context.read<CategoriesBloc>().add(GetCategories());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoriesBloc, CategoriesState>(
      listener: (context, state) {
        if (state is GetCategoriesError) {
          ModalHelpers.showError(context, state.errors);
        }
      },
      builder: (context, state) {
        if (state is GetCategoriesSuccess) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.r),
                      child: RegionWithStoresRow(state.categories.info),
                    ),
                    Divider(height: 0),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: state.categories.categories.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(14.r),
                          child: GestureDetector(
                            onTap: () {
                              context
                                  .read<CategoriesBloc>()
                                  .add(SetCategoryId(state.categories.categories[index].id));
                              context.router.push(BrandsRoute(children: [
                                CategoryStoresView(
                                  categoryName: state.categories.categories[index].name ?? "",
                                )
                              ]));
                            },
                            child: CategoryRowItem(
                              name: state.categories.categories[index].name ?? "",
                              logo: state.categories.categories[index].icon ?? "",
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        }
        return LoadingRingAnimation();
      },
    );
  }
}
