import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/models/entities/wallet/condition_item_view_model.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/condition_row_item.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';

class FloatModalConditions extends StatelessWidget {
  FloatModalConditions(
    this.shopName,
    this.conditions,
  );

  final String shopName;
  final List<ConditionItemViewModel> conditions;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 40.h),
          Text(
            "installment_terms".tr(),
            style: theme.textStyles.mainModalText,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            shopName,
            style: theme.textStyles.inputStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 22.h),
          conditions.isNotEmpty
              ? ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: conditions.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                      bottom: (conditions.length - 1) == index ? 0 : 28.h,
                    ),
                    child: ConditionRowItem(
                      conditions[index],
                    ),
                  ),
                )
              : Container(
                  width: double.infinity,
                  child: Text(
                    "Уточняйте условия рассрочки\nв магазинах",
                    style: theme.textStyles.textInputStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
          SizedBox(height: 20.h),
          LongButtonWithText(
            text: "understand".tr(),
            onTap: () => Navigator.pop(context),
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
