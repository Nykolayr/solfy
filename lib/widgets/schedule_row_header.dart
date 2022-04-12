import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/models/api/wallet/schedules/schedules_schedule_item_response.dart';
import 'package:solfy_flutter/styles/themes.dart';

/// Хедер элемента графика в списке графиков на странице кошелька
///
/// [schedule] - элемент ответа с графиком
class ScheduleRowHeader extends StatelessWidget {
  const ScheduleRowHeader(this.schedule, {Key? key}) : super(key: key);

  final SchedulesScheduleItemResponse schedule;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 13.r),
              Text(schedule.title ?? "", style: theme.textStyles.formTitleText),
              SizedBox(height: 4.r),
              Text(schedule.caption ?? "", style: theme.textStyles.descriptionText),
              SizedBox(height: 13.r),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 13.r),
              Text(schedule.amount ?? "", style: theme.textStyles.chooseFormText),
              SizedBox(height: 4.r),
              Text(schedule.amountCaption ?? "", style: theme.textStyles.descriptionText),
              SizedBox(height: 13.r),
            ],
          ),
        ],
      ),
    );
  }
}
