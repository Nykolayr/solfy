import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/bloc/operation_bloc/operation_bloc.dart';
import 'package:solfy_flutter/models/api/wallet/operations/operations_operation_item_response.dart';
import 'package:solfy_flutter/widgets/history_group_item.dart';

class ScheduleHistoryGroupList extends StatelessWidget {
  const ScheduleHistoryGroupList(this.operations);

  final List<OperationsOperationItemResponse> operations;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: operations.length,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () async {
            context.read<OperationBloc>().add(GetOperation(operations[index].id!));
          },
          child: ScheduleHistoryGroupItem(
            operations[index],
          ),
        ),
      ),
    );
  }
}
