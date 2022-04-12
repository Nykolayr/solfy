import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/models/api/static/dictionaries/dictionaries_dictionary_response.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/search_input.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

class ChoosingModal extends StatefulWidget {
  ChoosingModal({
    required this.title,
    List<String?>? variants,
    DictionariesDictionaryResponse? dictVariants,
    this.selectedVariant,
    this.onVariantTap,
    this.canSearch = false,
    this.leadingVariant,
    this.onLeadingTap,
  }) : variants = variants != null
            ? variants.where((element) => element != null).toList()
            : dictVariants?.dictionaryItems
                    ?.map((e) => e.value)
                    .where((element) => element != null)
                    .toList() ??
                [];

  final String title;
  final List<String?> variants;
  final void Function(String variant)? onVariantTap;
  final bool canSearch;
  final String? selectedVariant;
  final String? leadingVariant;
  final void Function()? onLeadingTap;

  @override
  _ChoosingModalState createState() => _ChoosingModalState();
}

class _ChoosingModalState extends State<ChoosingModal> {
  final TextEditingController _searchController = TextEditingController();
  List<String?> searchedItems = [];

  @override
  void initState() {
    _searchController.addListener(() {
      searchedItems = widget.variants
          .where((element) =>
              element?.toLowerCase().contains(_searchController.text.toLowerCase()) ?? true)
          .toList();
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
            Expanded(
              flex: widget.variants.length > 9 ? 1 : 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    widget.canSearch
                        ? Column(
                            children: [
                              SizedBox(height: 14.h),
                              SearchInput(textEditingController: _searchController),
                              SizedBox(height: 14.h),
                            ],
                          )
                        : SizedBox(height: 10),
                    widget.leadingVariant != null
                        ? Padding(
                            padding: EdgeInsets.only(bottom: 14.h),
                            child: GestureDetector(
                              onTap: () {
                                widget.onLeadingTap?.call();
                                Navigator.pop(context);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 290.w,
                                    child: Text(
                                      widget.leadingVariant!,
                                      style: theme.textStyles.formTitleText,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  widget.leadingVariant! == widget.selectedVariant
                                      ? Row(
                                          children: [
                                            Icon(SolfyIcons.checkmark,
                                                size: 16.r,
                                                color: theme.colors.secondaryItemsColor),
                                            SizedBox(width: 8.w),
                                          ],
                                        )
                                      : SizedBox(),
                                ],
                              ),
                            ),
                          )
                        : SizedBox(),
                    Expanded(
                      flex: widget.variants.length > 9 ? 1 : 0,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount:
                            searchedItems.isEmpty ? widget.variants.length : searchedItems.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 14.r),
                            child: GestureDetector(
                              onTap: () {
                                widget.onVariantTap?.call(widget.variants[index]!);
                                Navigator.pop(context);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 290.w,
                                    child: Text(
                                      searchedItems.isEmpty
                                          ? widget.variants[index]!
                                          : searchedItems[index]!,
                                      style: theme.textStyles.chooseFormText,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  widget.variants[index]! == widget.selectedVariant
                                      ? Row(
                                          children: [
                                            Icon(SolfyIcons.checkmark,
                                                size: 16.r,
                                                color: theme.colors.secondaryItemsColor),
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
