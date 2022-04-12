import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/router/auto_router.gr.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Виджет для пустых табов кошелька
class EmptyBalanceTab extends StatelessWidget {
  const EmptyBalanceTab(this.title, this.subTitle, {Key? key}) : super(key: key);

  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            height: 400.h,
            child: Padding(
              padding: EdgeInsets.only(top: 80.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    SolfyIcons.happy_solfy,
                    color: theme.colors.gray1,
                    size: 56.r,
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    title,
                    style: theme.textStyles.smsCodeText,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    subTitle,
                    style: theme.textStyles.inputStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.h),
                  LongButtonWithText(
                    width: 166.w,
                    height: 34.h,
                    fontSize: 14.sp,
                    text: "Магазины-партнеры",
                    onTap: () => context.navigateTo(BaseTabStoresView()),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
