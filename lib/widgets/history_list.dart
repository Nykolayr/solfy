import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/history_bloc/history_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/history_group_list.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';

import 'empty_balance_tab.dart';

/// Лист с историей
class ScheduleHistoryList extends StatelessWidget {
  const ScheduleHistoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return BlocConsumer<HistoryBloc, HistoryState>(
      listener: (context, state) {
        if (state is GetHistoryError) {
          ModalHelpers.showError(context, state.errors);
        }
      },
      builder: (context, state) {
        if (state is GetHistorySuccess) {
          return state.response.groups!.isEmpty
              ? EmptyBalanceTab(
                  "У вас нет истории операций",
                  "Сделайте покупку у нашего партнера\nи информация появится в этом разделе",
                )
              : Container(
                  color: Colors.white,
                  child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: state.response.groups?.length ?? 0,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(bottom: 8.0, top: index == 0 ? 20.r : 0),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Container(
                              width: double.infinity,
                              child: Text(
                                state.response.groups?[index].title ?? "",
                                style: theme.textStyles.mainText,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          SizedBox(height: 12.r),
                          ScheduleHistoryGroupList(state.response.operations
                                  ?.where((element) =>
                                      element.groupId == state.response.groups?[index].id)
                                  .toList() ??
                              []),
                        ],
                      ),
                    ),
                  ),
                );
        }
        return Padding(
          padding: EdgeInsets.only(top: 24.h),
          child: LoadingRingAnimation(),
        );
      },
    );
  }
}
