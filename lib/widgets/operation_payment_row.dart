import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/models/api/wallet/operation/operation_payment_item_response.dart';
import 'package:solfy_flutter/styles/themes.dart';

/// Строка с операций в списке операций на экране кошелька
class OperationPaymentRow extends StatelessWidget {
  const OperationPaymentRow(this.payment, {this.inactive = false});

  final OperationPaymentItemResponse payment;
  final bool inactive;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Container(
      height: 66.r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 14.r),
              Text(
                payment.title ?? "",
                style: theme.textStyles.chooseFormText
                    .copyWith(color: inactive ? theme.colors.virtualKeyboardNumbers : null),
              ),
              SizedBox(height: 4.r),
              Text(payment.caption ?? "", style: theme.textStyles.inputHintText),
              SizedBox(height: 14.r),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 14.r),
              Text(
                payment.amount ?? "",
                style: theme.textStyles.chooseFormText
                    .copyWith(color: inactive ? theme.colors.virtualKeyboardNumbers : null),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
