import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';

/// Виджет с отображением строки расписания в модалке магазина
///
/// [day] - день работы, обязательный параметр
///
/// [time] - время работы, обязательный параметр
class WorkTimeRowItem extends StatelessWidget {
  const WorkTimeRowItem(this.day, this.time);

  final String day;
  final String time;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(day, style: theme.textStyles.formSubtitleText),
        Row(
          children: [
            Text(
              time,
              style: theme.textStyles.formSubtitleText.copyWith(
                color: theme.colors.virtualKeyboardNumbers,
              ),
            ),
            SizedBox(width: (8.r + 12.w))
          ],
        ),
      ],
    );
  }
}
