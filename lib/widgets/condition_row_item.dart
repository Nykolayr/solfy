import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/models/entities/wallet/condition_item_view_model.dart';
import 'package:solfy_flutter/styles/themes.dart';

/// Виджет состояния рассрочки
class ConditionRowItem extends StatelessWidget {
  const ConditionRowItem(this.condition);

  final ConditionItemViewModel condition;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 200.w,
          child: Text(
            condition.title ?? "",
            style: theme.textStyles.textInputStyle,
          ),
        ),
        Text(
          condition.term ?? "",
          style: theme.textStyles.inputStyle,
        ),
      ],
    );
  }
}
