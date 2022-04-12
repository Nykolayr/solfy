import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:expandable/expandable.dart';
import 'package:solfy_flutter/bloc/operation_bloc/operation_bloc.dart';
import 'package:solfy_flutter/bloc/wallet_bloc/wallet_bloc.dart';
import 'package:solfy_flutter/models/api/wallet/schedules/schedules_schedule_item_response.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/long_button_with_text.dart';
import 'package:solfy_flutter/widgets/schedule_expanded_row_item.dart';
import 'package:solfy_flutter/widgets/schedule_row_header.dart';

/// Элемент строки в списке графиков на экране кошелька
///
/// [controller] - контроллер раскрытия элемента
///
/// [schedule] - элемент ответа с графиком
///
/// [isFirst] - является ли первым элементов в списке
class ScheduleRowItem extends StatefulWidget {
  const ScheduleRowItem({
    required this.controller,
    required this.schedule,
    required this.isFirst,
    Key? key,
  }) : super(key: key);

  final ExpandableController controller;
  final SchedulesScheduleItemResponse schedule;
  final bool isFirst;
  @override
  _ScheduleRowItemState createState() => _ScheduleRowItemState();
}

class _ScheduleRowItemState extends State<ScheduleRowItem> {
  final _shadowList = [
    BoxShadow(
      color: Colors.black.withOpacity(0.06),
      spreadRadius: 0,
      blurRadius: 2,
      offset: Offset(0, 2),
    ),
    BoxShadow(
      color: Colors.black.withOpacity(0.03),
      spreadRadius: 0,
      blurRadius: 2,
      offset: Offset(0, 0),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return ExpandableNotifier(
      controller: widget.controller,
      child: ScrollOnExpand(
        theme: ExpandableThemeData(
          animationDuration: Duration(milliseconds: 300),
        ),
        child: ExpandablePanel(
          controller: widget.controller,
          expanded: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
              boxShadow: _shadowList,
            ),
            child: Column(
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: widget.controller.toggle,
                  child: ScheduleRowHeader(widget.schedule),
                ),
                Divider(height: 5.r),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.schedule.operations?.length ?? 0,
                  itemBuilder: (context, index) => GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () async {
                      context
                          .read<OperationBloc>()
                          .add(GetOperation(widget.schedule.operations![index].id!));
                    },
                    child: ScheduleExpandedRowItem(widget.schedule.operations![index]),
                  ),
                ),
                SizedBox(height: 7.r),
                Divider(height: 0),
                SizedBox(height: 14.r),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("total".tr(), style: theme.textStyles.chooseFormText),
                      Text(widget.schedule.amount ?? "", style: theme.textStyles.chooseFormText),
                    ],
                  ),
                ),
                widget.isFirst
                    ? Column(
                        children: [
                          SizedBox(height: 26.r),
                          LongButtonWithText(
                              text: "pay".tr(),
                              onTap: () async {
                                if (widget.schedule.amount != null) {
                                  context
                                      .read<WalletBloc>()
                                      .add(Refillment(widget.schedule.amount!));
                                }
                              }),
                        ],
                      )
                    : SizedBox(),
                SizedBox(height: 16.r),
              ],
            ),
          ),
          collapsed: GestureDetector(
            onTap: widget.controller.toggle,
            child: Container(
              height: 66.r,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
                boxShadow: _shadowList,
              ),
              child: ScheduleRowHeader(
                widget.schedule,
                key: ValueKey(widget.schedule.title),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
