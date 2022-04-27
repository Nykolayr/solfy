import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/bloc/schedules_bloc/schedules_bloc.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/empty_balance_tab.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/schedule_row_item.dart';

/// Лист с графиком на экране кошелька
class ScheduleWalletList extends StatefulWidget {
  const ScheduleWalletList({Key? key}) : super(key: key);

  @override
  State<ScheduleWalletList> createState() => _ScheduleWalletListState();
}

class _ScheduleWalletListState extends State<ScheduleWalletList> {
  List<ExpandableController> controllers = [];

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Scaffold(
      backgroundColor: theme.colors.gray2,
      body: BlocConsumer<SchedulesBloc, SchedulesState>(
        listener: (context, state) {
          if (state is GetSchedulesError) {
            ModalHelpers.showError(context, state.errors);
          }
        },
        builder: (context, state) {
          if (state is GetSchedulesSuccess) {
            controllers = List.generate(
                state.response.schedules?.length ?? 0,
                (index) => index == 0
                    ? ExpandableController(initialExpanded: true)
                    : ExpandableController());
            return state.response.schedules!.isEmpty
                ? EmptyBalanceTab(
                    "У вас нет графика платежей",
                    "Сделайте покупку у нашего партнера\nи мы рассчитаем график платежей",
                  )
                : ListView.builder(
                    physics: ClampingScrollPhysics(),
                    itemCount: state.response.schedules?.length ?? 0,
                    itemBuilder: (context, index) => Padding(
                      key: ValueKey(state.response.schedules![index].title),
                      padding: EdgeInsets.only(bottom: 8.0, top: index == 0 ? 20.r : 0),
                      child: ScheduleRowItem(
                        controller: controllers[index],
                        schedule: state.response.schedules![index],
                        key: ValueKey(state.response.schedules![index].title),
                        isFirst: index == 0,
                      ),
                    ),
                  );
          }
          return Padding(
            padding: EdgeInsets.only(top: 24.h),
            child: LoadingRingAnimation(),
          );
        },
      ),
    );
  }
}
