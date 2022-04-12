import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/models/api/catalog/filter_request.dart';
import 'package:solfy_flutter/models/enums.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/dynamic_button.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/modals/content/filter_selector_row.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

class FilterModal extends StatefulWidget {
  const FilterModal(this.request, {this.onSubmit});

  final FilterRequest request;
  final void Function()? onSubmit;
  @override
  _FilterModalState createState() => _FilterModalState();
}

class _FilterModalState extends State<FilterModal> {
  late List<bool> ranges;
  late FilterRequest copy;
  bool closeSortVisible = false;
  final List<bool> filters = List.generate(3, (index) => true);
  final List<bool> sort = List.generate(3, (index) => index == 0);

  @override
  void initState() {
    Future.microtask(() async {
      final permission = await Geolocator.checkPermission();
      if ((permission == LocationPermission.always ||
          permission == LocationPermission.whileInUse)) {
        setState(() {
          closeSortVisible = true;
        });
      }
    });
    copy = FilterRequest.clone(widget.request);
    ranges = List.generate(
      5,
      (index) => (widget.request.term ?? 0) ~/ 2 == index,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    void setRanges(int index) {
      HapticFeedback.lightImpact();
      for (var i = 0; i < ranges.length; i++) {
        if (i == index) {
          ranges[i] = true;
        } else {
          ranges[i] = false;
        }
      }
      setState(() {
        final term = index * 2;
        if (term == 0) {
          widget.request.term = null;
        } else {
          widget.request.term = term;
        }
      });
    }

    void clearFilters() {
      HapticFeedback.lightImpact();
      setState(() {
        widget.request.term = null;
        widget.request.typeAll = true;
        widget.request.worktime = null;
      });
    }

    void setSort(int index) {
      HapticFeedback.lightImpact();
      switch (index) {
        case 0:
          widget.request.sort = "popular";
          break;
        case 1:
          widget.request.sort = "distance";
          break;
        case 2:
          widget.request.sort = "term";
          break;
        default:
      }

      setState(() {});
    }

    void clearAll() {
      clearFilters();
      setRanges(0);
      setSort(0);
    }

    return Scaffold(
      body: SafeArea(
        top: false,
        child: FooterLayout(
          footer: !copy.isEqual(widget.request)
              ? Padding(
                  padding: EdgeInsets.all(16.w),
                  child: LongButtonWithText(
                    text: "Показать",
                    onTap: () {
                      widget.onSubmit?.call();
                      Navigator.pop(context);
                    },
                  ),
                )
              : null,
          child: CustomScrollView(
            physics: ClampingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    SizedBox(height: 5.r),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              BaseIconGesturesWrapper(
                                onTap: () {
                                  if (!copy.isEqual(widget.request)) {
                                    widget.request.setFilter(copy);
                                  }
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  SolfyIcons.close,
                                  color: theme.colors.secondaryItemsColor,
                                  size: 24.r,
                                ),
                                iconSize: 24,
                              ),
                              SizedBox(width: 24.w),
                              Text("parameters".tr(), style: theme.textStyles.mainText),
                            ],
                          ),
                          GestureDetector(
                            onTap: clearAll,
                            child: Text("clear".tr(), style: theme.textStyles.profileClickableText),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.r),
                    Divider(height: 0),
                    SizedBox(height: 18.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            child: Text("debt_period_months".tr(),
                                style: theme.textStyles.profileTitleText),
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            children: [
                              DynamicButton(
                                text: "Любой",
                                onTap: () => setRanges(0),
                                isEnabled: ranges[0],
                                width: 71.w,
                              ),
                              SizedBox(width: 8.w),
                              DynamicButton(
                                text: "2+",
                                isEnabled: ranges[1],
                                onTap: () => setRanges(1),
                              ),
                              SizedBox(width: 8.w),
                              DynamicButton(
                                text: "4+",
                                isEnabled: ranges[2],
                                onTap: () => setRanges(2),
                              ),
                              SizedBox(width: 8.w),
                              DynamicButton(
                                text: "6+",
                                isEnabled: ranges[3],
                                onTap: () => setRanges(3),
                              ),
                              SizedBox(width: 8.w),
                              DynamicButton(
                                text: "8+",
                                isEnabled: ranges[4],
                                onTap: () => setRanges(4),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Divider(height: 0),
                    SizedBox(height: 18.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            child: Text("filters".tr(), style: theme.textStyles.profileTitleText),
                          ),
                          SizedBox(height: 14.h),
                          FilterSelectorRow(
                            text: "opened_now".tr(),
                            isEnabled: widget.request.worktime == "opened_now",
                            onChanged: (flag) => setState(() {
                              HapticFeedback.lightImpact();
                              if (flag) {
                                widget.request.worktime = "opened_now";
                              } else {
                                widget.request.worktime = null;
                              }
                            }),
                          ),
                          widget.request.onlineOfflineVisible
                              ? Column(
                                  children: [
                                    SizedBox(height: 7.h),
                                    FilterSelectorRow(
                                      text: "stationary_shops".tr(),
                                      isEnabled: widget.request.type == "offline" ||
                                          (widget.request.typeAll ?? false),
                                      onChanged: (flag) => setState(() {
                                        HapticFeedback.lightImpact();
                                        if (flag) {
                                          if (widget.request.type == "online") {
                                            widget.request.typeAll = true;
                                          }
                                          widget.request.type = "offline";
                                        } else {
                                          widget.request.type = null;
                                          if (widget.request.typeAll != null &&
                                              widget.request.typeAll!) {
                                            widget.request.type = "online";
                                            widget.request.typeAll = false;
                                          }
                                        }
                                      }),
                                    ),
                                    SizedBox(height: 7.h),
                                    FilterSelectorRow(
                                      text: "internet_shops".tr(),
                                      isEnabled: widget.request.type == "online" ||
                                          (widget.request.typeAll ?? false),
                                      onChanged: (flag) => setState(() {
                                        HapticFeedback.lightImpact();
                                        if (flag) {
                                          if (widget.request.type == "offline") {
                                            widget.request.typeAll = true;
                                          }
                                          widget.request.type = "online";
                                        } else {
                                          widget.request.type = null;
                                          if (widget.request.typeAll != null &&
                                              widget.request.typeAll!) {
                                            widget.request.type = "offline";
                                            widget.request.typeAll = false;
                                          }
                                        }
                                      }),
                                    ),
                                  ],
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                    widget.request.sortVisible
                        ? Column(
                            children: [
                              SizedBox(height: 16.h),
                              Divider(height: 0),
                              SizedBox(height: 18.h),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      child: Text("sort".tr(),
                                          style: theme.textStyles.profileTitleText),
                                    ),
                                    SizedBox(height: 16.h),
                                    FilterSelectorRow(
                                      text: "popular_first".tr(),
                                      isEnabled: widget.request.sort == "popular",
                                      onChanged: (flag) => setSort(0),
                                      filterRowType: FilterRowType.Checkmark,
                                    ),
                                    widget.request.closeSortVisible && closeSortVisible
                                        ? Column(
                                            children: [
                                              SizedBox(height: 24.h),
                                              FilterSelectorRow(
                                                text: "close_first".tr(),
                                                isEnabled: widget.request.sort == "distance",
                                                onChanged: (flag) => setSort(1),
                                                filterRowType: FilterRowType.Checkmark,
                                              ),
                                            ],
                                          )
                                        : SizedBox(),
                                    SizedBox(height: 24.h),
                                    FilterSelectorRow(
                                      text: "with_big_debt_period_first".tr(),
                                      isEnabled: widget.request.sort == "term",
                                      onChanged: (flag) => setSort(2),
                                      filterRowType: FilterRowType.Checkmark,
                                    ),
                                    SizedBox(height: 14.h),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
