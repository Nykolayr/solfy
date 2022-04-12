import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/services/database/global_settings_db_service.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/base_icon_gestures_wrapper.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

class WalletCarouselModal extends StatefulWidget {
  const WalletCarouselModal({Key? key}) : super(key: key);

  @override
  _WalletCarouselModalState createState() => _WalletCarouselModalState();
}

class _WalletCarouselModalState extends State<WalletCarouselModal> {
  final _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Column(
      children: [
        SizedBox(height: 4.r),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 4.w),
            BaseIconGesturesWrapper(
              onTap: () => Navigator.pop(context),
              child: Icon(
                SolfyIcons.close,
                color: theme.colors.secondaryItemsColor,
                size: 24.r,
              ),
              iconSize: 24,
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Container(
          height: 520.h,
          child: CarouselSlider(
            controller: _controller,
            slideIndicator: CircularWaveSlideIndicator(
              padding: EdgeInsets.only(bottom: 70.h),
              currentIndicatorColor: theme.colors.gray1,
              indicatorBackgroundColor: theme.colors.gray2,
              indicatorRadius: 4.r,
              itemSpacing: 16.w,
            ),
            children: [1, 2, 3].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Lottie.asset(
                        i == 1
                            ? 'assets/swiper_one.json'
                            : i == 2
                                ? 'assets/swiper_two.json'
                                : 'assets/swiper_three.json',
                        repeat: false,
                        width: 400.w,
                        height: 300.h,
                      ),
                      Column(
                        children: [
                          Text(
                            i == 1
                                ? "intro_comfort_payment_1".tr()
                                : i == 2
                                    ? "intro_comfort_payment_2".tr()
                                    : "intro_comfort_payment_3".tr(),
                            style: theme.textStyles.carouselText,
                          ),
                          SizedBox(height: 60.h),
                          LongButtonWithText(
                            text: "continue_button".tr(),
                            onTap: () async {
                              if (i != 3) {
                                _controller.nextPage(Duration(milliseconds: 500));
                              } else {
                                await GlobalSettingsDbService.markWalletCarouselWatched();
                                context.router.pop();
                              }
                            },
                          ),
                        ],
                      ),
                    ],
                  );
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
