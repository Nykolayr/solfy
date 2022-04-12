import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';
import 'package:solfy_flutter/styles/themes.dart';

class NoStores extends StatelessWidget {
  NoStores({this.heightFactor});

  final double? heightFactor;

  @override
  Widget build(BuildContext context) {
    final theme = context.read<AppTheme>();
    return Center(
      heightFactor: heightFactor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(SolfyIcons.sad_solfy, size: 56.r, color: theme.colors.gray1),
            SizedBox(height: 32.h),
            Text(
              "К сожалению, мы не нашли магазины с\u{00A0}заданными параметрами",
              textAlign: TextAlign.center,
              style: theme.textStyles.descriptionModalText,
            ),
            SizedBox(height: 16.h),
            Text(
              "Попробуйте выбрать другой регион или\u{00A0}изменить параметры фильтров",
              textAlign: TextAlign.center,
              style: theme.textStyles.descriptionModalText,
            ),
          ],
        ),
      ),
    );
  }
}
