import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/views/onboarding/questionnaire/card/bloc/card_bloc.dart';
import 'package:solfy_flutter/widgets/loading_ring_animation.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Кнопка с отправкой запроса на получение нового кода
class GetNewSmsCodeCard extends StatefulWidget {
  GetNewSmsCodeCard({Key? key}) : super(key: key);

  @override
  _GetNewSmsCodeCardState createState() => _GetNewSmsCodeCardState();
}

class _GetNewSmsCodeCardState extends State<GetNewSmsCodeCard> {
  bool isSending = false;
  bool isSent = false;
  bool isTimerEnded = false;
  int seconds = 5;
  int time = 6;
  late StopWatchTimer _stopWatchTimer;

  @override
  void initState() {
    _stopWatchTimer = StopWatchTimer(
      mode: StopWatchMode.countDown,
      onEnded: () => setState(() => isTimerEnded = true),
    );
    _stopWatchTimer.setPresetSecondTime(time);
    _stopWatchTimer.onExecute.add(StopWatchExecute.start);
    _stopWatchTimer.secondTime.listen((value) => setState(() => null));
    super.initState();
  }

  @override
  void dispose() {
    _stopWatchTimer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    void onTap() async {
      setState(() {
        isSending = true;
      });

      Timer(Duration(seconds: seconds), () {
        context.read<CardBloc>().add(SendResCode());
        setState(() {
          isSending = false;
          isSent = true;

          Timer(Duration(seconds: seconds), () {
            setState(() {
              isSent = false;
              isTimerEnded = false;
              _stopWatchTimer.setPresetSecondTime(seconds);
              _stopWatchTimer.onExecute.add(StopWatchExecute.start);
            });
          });
        });
      });
    }

    return BlocListener<CardBloc, CardState>(
      listener: (context, state) {},
      child: Container(
        height: 35,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isSending || isSent
                ? isSending
                    ? Container(
                        height: 22,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LoadingRingAnimation(lineWidth: 2, ringSize: 16.r),
                            SizedBox(width: 8),
                            Text(
                              "sending_code".tr(),
                              style: theme.textStyles.mediumMainText,
                            ),
                          ],
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(SolfyIcons.checkmark,
                              size: 14, color: theme.colors.gray1),
                          SizedBox(width: 10.w),
                          Text(
                            "code_sent".tr(),
                            style: theme.textStyles.mediumMainText,
                          ),
                        ],
                      )
                : !isTimerEnded
                    ? Text(
                        tr(
                          "get_new_sms_code_seconds_left",
                          args: [
                            StopWatchTimer.getDisplayTime(
                              _stopWatchTimer.rawTime.value,
                              hours: false,
                              milliSecond: false,
                            ),
                          ],
                        ),
                        style: theme.textStyles.mediumMainText,
                      )
                    : GestureDetector(
                        onTap: onTap,
                        child: Text(
                          "get_new_sms_code".tr(),
                          style: theme.textStyles.mediumMainText
                              .copyWith(color: theme.colors.buttonPrimary),
                        ),
                      ),
          ],
        ),
      ),
    );
  }
}
