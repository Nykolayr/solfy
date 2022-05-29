import 'dart:async';

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/bloc/choosing_filial_bloc/choosing_filial_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'dart:ui' as direction;

import 'package:solfy_flutter/repository/static_repository.dart';
import 'package:solfy_flutter/services/database/global_settings_db_service.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/custom_divider.dart';
import 'package:solfy_flutter/widgets/custom_google_map.dart';
import 'package:solfy_flutter/widgets/header_app_bar.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/modals/containers/floating_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/choosing_filial_modal.dart';
import 'package:solfy_flutter/widgets/modals/content/choosing_modal.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Шестой шаг анкеты
class ChoosingFilialFormView extends StatefulWidget {
  const ChoosingFilialFormView({Key? key}) : super(key: key);

  @override
  _ChoosingFilialFormViewState createState() => _ChoosingFilialFormViewState();
}

class _ChoosingFilialFormViewState extends State<ChoosingFilialFormView> {
  bool isMapView = false;
  String? currentRegion = "all_regions".tr();
  int? regionId;

  @override
  void initState() {
    context.read<ChoosingFilialBloc>().add(const GetMarkers());
    Future.microtask(
      () async {
        final permission = await Geolocator.checkPermission();
        final isGeoRequested = await GlobalSettingsDbService.isGeoRequested();

        if ((permission == LocationPermission.denied ||
                permission == LocationPermission.deniedForever) &&
            !isGeoRequested) {
          await ModalHelpers.showGeoRequestModal(context);
          await GlobalSettingsDbService.markGeoRequested();
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();
    StaticRepository static = context.read<StaticRepository>();

    bool hasTextOverflow(String text, TextStyle style,
        {double minWidth = 0,
        double maxWidth = double.infinity,
        int maxLines = 2}) {
      final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: maxLines,
        textDirection: direction.TextDirection.ltr,
      )..layout(minWidth: minWidth, maxWidth: maxWidth);
      return textPainter.didExceedMaxLines;
    }

    void showModalWithVariants(
      String title,
      List<String?> variants,
      void Function(String text) onTap, {
      bool canSearch = false,
      String? selectedVariant,
    }) {
      showCupertinoModalBottomSheet(
        enableDrag: false,
        context: context,
        topRadius: Radius.circular(16),
        backgroundColor: Colors.white,
        builder: (context) => ChoosingModal(
          title: title,
          variants: variants,
          onVariantTap: onTap,
          canSearch: canSearch,
          selectedVariant: selectedVariant,
          leadingVariant: "all_regions".tr(),
          onLeadingTap: () {
            setState(() {
              currentRegion = "all_regions".tr();
              context.read<ChoosingFilialBloc>().add(GetMarkers());
            });
          },
        ),
      );
    }

    return Scaffold(
      appBar: HeaderAppBar(
        customTitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "choose_filial".tr(),
              style: theme.textStyles.mainText,
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 2.h),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                text: 'step_5'.tr(),
                style: theme.textStyles.headerSubtitleText,
                children: [
                  TextSpan(text: ' '),
                  TextSpan(
                    text: 'from_6'.tr(),
                    style: theme.textStyles.headerSubtitleText.copyWith(
                      color: theme.colors.virtualKeyboardNumbers,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        suffix: Row(
          children: [
            GestureDetector(
              onTap: () => setState(() => isMapView = !isMapView),
              child: Text(isMapView ? "Списком" : "На карте",
                  style: theme.textStyles.profileClickableText),
            ),
            SizedBox(width: 16.w),
          ],
        ),
      ),
      body: BlocBuilder<ChoosingFilialBloc, ChoosingFilialState>(
        builder: (context, state) {
          if (state is Markers) {
            return isMapView
                ? CustomGoogleMap(
                    initialLatLng: static.citiesCoordinates[1],
                    initialZoom: 10,
                    markers: state.markers
                        .map(
                          (e) => Marker(
                            onTap: () => showCustomModalBottomSheet(
                              context: context,
                              containerWidget: (_, animation, child) =>
                                  FloatingModal(child: child),
                              builder: (context) => FloatModalChoosingFilial(
                                filialName: e.value,
                                filialAddress: e.hint,
                                filialId: e.id.toString(),
                              ),
                            ),
                            icon: e.icon,
                            markerId: MarkerId(e.id.toString()),
                            position: LatLng(e.lat, e.lon),
                          ),
                        )
                        .toSet(),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        SizedBox(height: 8.h),
                        Container(
                          width: double.infinity,
                          child: Text(
                            "choose_filial_to_get_solfy_card".tr(),
                            style: theme.textStyles.formSubtitleText,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        CustomDivider(12),
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => showModalWithVariants(
                            "region_oblast".tr(),
                            static.geo.regions
                                    ?.map((element) => element.name)
                                    .toList() ??
                                [],
                            (text) {
                              final id = static.geo.regions
                                  ?.firstWhere(
                                      (element) => element.name == text)
                                  .id;
                              regionId = id;
                              setState(
                                () {
                                  currentRegion = text;
                                  context
                                      .read<ChoosingFilialBloc>()
                                      .add(GetMarkers(filterById: id));
                                },
                              );
                            },
                            selectedVariant: currentRegion,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    currentRegion ?? "all_regions".tr(),
                                    style: theme.textStyles.blackRoboto1,
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    state.markers.length.toString() +
                                        "branches_count".tr(),
                                    style: theme.textStyles.inputHintText,
                                  ),
                                ],
                              ),
                              Icon(
                                SolfyIcons.arrow,
                                color: theme.colors.gray1,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                        CustomDivider(12),
                        Expanded(
                          child: ListView.builder(
                            itemCount: state.markers.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(bottom: 28.0),
                              child: GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () => showCustomModalBottomSheet(
                                  context: context,
                                  containerWidget: (_, animation, child) =>
                                      FloatingModal(child: child),
                                  builder: (context) =>
                                      FloatModalChoosingFilial(
                                    filialName: state.markers[index].value,
                                    filialAddress: state.markers[index].hint,
                                    filialId:
                                        state.markers[index].id.toString(),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: state.markers[index]
                                                      .distance !=
                                                  null
                                              ? hasTextOverflow(
                                                  state.markers[index].value,
                                                  theme.textStyles
                                                      .chooseFormText,
                                                  maxLines: 1,
                                                  maxWidth: 230.w,
                                                )
                                                  ? 230.w
                                                  : null
                                              : null,
                                          child: TextOneLine(
                                            state.markers[index].value,
                                            style:
                                                theme.textStyles.chooseFormText,
                                          ),
                                        ),
                                        state.markers[index].distance != null
                                            ? Row(
                                                children: [
                                                  SizedBox(width: 9.w),
                                                  Icon(
                                                    SolfyIcons.geo,
                                                    size: 12.r,
                                                    color: theme.colors.gray1,
                                                  ),
                                                  SizedBox(width: 4.w),
                                                  Text(
                                                    state.markers[index]
                                                                .distance! <
                                                            1000
                                                        ? state.markers[index]
                                                                .distance!
                                                                .toStringAsFixed(
                                                                    0) +
                                                            " м"
                                                        : (state.markers[index]
                                                                        .distance! /
                                                                    1000)
                                                                .toStringAsFixed(
                                                                    0) +
                                                            ' км',
                                                    style: theme.textStyles
                                                        .inputHintText,
                                                  ),
                                                ],
                                              )
                                            : SizedBox(),
                                      ],
                                    ),
                                    SizedBox(height: 3.h),
                                    Text(
                                      state.markers[index].hint,
                                      style: theme.textStyles.inputHintText,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
          }

          return LoadingRingAnimation();
        },
      ),
    );
  }
}
