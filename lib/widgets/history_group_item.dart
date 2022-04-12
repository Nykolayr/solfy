import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/models/api/wallet/operations/operations_operation_item_response.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

class ScheduleHistoryGroupItem extends StatelessWidget {
  const ScheduleHistoryGroupItem(this.operation);

  final OperationsOperationItemResponse operation;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      height: 66.r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              operation.picture != null && operation.picture != ""
                  ? Container(
                      width: 56.r,
                      height: 56.r,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(operation.picture!),
                          fit: BoxFit.fitWidth,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.05),
                          width: 1,
                        ),
                      ),
                    )
                  : Container(
                      width: 56.r,
                      height: 56.r,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        color: Colors.black.withOpacity(0.05),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.05),
                          width: 1,
                        ),
                      ),
                      child: Icon(
                        SolfyIcons.market,
                        color: theme.colors.gray1,
                      ),
                    ),
              SizedBox(width: 12.r),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 14.r),
                  Text(operation.title ?? "", style: theme.textStyles.chooseFormText),
                  SizedBox(height: 4.r),
                  Text(operation.caption ?? "", style: theme.textStyles.inputHintText),
                  SizedBox(height: 14.r),
                ],
              )
            ],
          ),
          Column(
            children: [
              SizedBox(height: 14.r),
              Text(operation.amount ?? "", style: theme.textStyles.descriptionModalText),
            ],
          ),
        ],
      ),
    );
  }
}
