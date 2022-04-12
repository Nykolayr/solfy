import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/models/api/static/geo/geo_country_item_response.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/search_input.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

class CountryChoosingModal extends StatefulWidget {
  CountryChoosingModal({
    required this.title,
    required this.variants,
    this.selectedVariant,
    this.onVariantTap,
    this.canSearch = false,
  });

  final String title;
  final List<GeoCountryItemResponse?> variants;
  final void Function(String variant)? onVariantTap;
  final bool canSearch;
  final String? selectedVariant;

  @override
  _CountryChoosingModalState createState() => _CountryChoosingModalState();
}

class _CountryChoosingModalState extends State<CountryChoosingModal> {
  final TextEditingController _searchController = TextEditingController();
  final List<String> items = [];
  List<String?> searchedItems = [];

  @override
  void initState() {
    for (var variant in widget.variants) {
      if (variant?.countries != null) {
        for (var item in variant!.countries!) {
          if (item.name != null) {
            items.add(item.name!);
          }
        }
      }
    }
    _searchController.addListener(() {
      searchedItems = items
          .where((element) => element.toLowerCase().contains(_searchController.text.toLowerCase()))
          .toList();
      if (_searchController.text == "") {
        searchedItems = [];
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    void onCountryTap(String text) {
      widget.onVariantTap?.call(text);
      Navigator.pop(context);
    }

    return Material(
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 4.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 4.w),
                BaseIconGesturesWrapper(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    SolfyIcons.close,
                    color: theme.colors.secondaryItemsColor,
                    size: 24.sp,
                  ),
                  iconSize: 24,
                ),
                SizedBox(width: 12.w),
                Container(
                  alignment: Alignment.centerLeft,
                  width: 260.w,
                  child: TextOneLine(
                    widget.title,
                    style: theme.textStyles.mainText,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: widget.canSearch
                  ? Column(
                      children: [
                        SizedBox(height: 14.h),
                        SearchInput(textEditingController: _searchController),
                        SizedBox(height: 14.h),
                      ],
                    )
                  : SizedBox(height: 22.h),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: searchedItems.isEmpty ? widget.variants.length : searchedItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: searchedItems.isNotEmpty
                              ? GestureDetector(
                                  onTap: () => onCountryTap(searchedItems[index] ?? ""),
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 26.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 290.w,
                                          child: Text(
                                            searchedItems[index] ?? "",
                                            style: theme.textStyles.chooseFormText,
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        searchedItems[index] == widget.selectedVariant
                                            ? Row(
                                                children: [
                                                  Icon(SolfyIcons.checkmark,
                                                      size: 16,
                                                      color: theme.colors.secondaryItemsColor),
                                                  SizedBox(width: 8.w),
                                                ],
                                              )
                                            : SizedBox(),
                                      ],
                                    ),
                                  ),
                                )
                              : Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        widget.variants[index]?.caption ?? "",
                                        style: theme.textStyles.headerSubtitleText,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    widget.variants[index]?.caption != null
                                        ? SizedBox(height: 26.h)
                                        : SizedBox(),
                                    ListView.builder(
                                      physics: ScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: widget.variants[index]?.countries?.length ?? 0,
                                      itemBuilder: (BuildContext context, int nestedIndex) {
                                        return GestureDetector(
                                          onTap: () => onCountryTap(widget
                                                  .variants[index]?.countries?[nestedIndex].name ??
                                              ""),
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 26),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  width: 290.w,
                                                  child: Text(
                                                    widget.variants[index]?.countries?[nestedIndex]
                                                            .name ??
                                                        '',
                                                    style: theme.textStyles.chooseFormText,
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                widget.variants[index]?.countries?[nestedIndex]
                                                            .name ==
                                                        widget.selectedVariant
                                                    ? Row(
                                                        children: [
                                                          Icon(SolfyIcons.checkmark,
                                                              size: 16,
                                                              color:
                                                                  theme.colors.secondaryItemsColor),
                                                          SizedBox(width: 8.w),
                                                        ],
                                                      )
                                                    : SizedBox(),
                                              ],
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
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
