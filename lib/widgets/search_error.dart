import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Виджет с ошибкой/пустыми результатами поиска
class SearchError extends StatelessWidget {
  const SearchError({this.errorText});

  final String? errorText;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            SolfyIcons.sad_solfy,
            color: theme.colors.gray1,
            size: 56.r,
          ),
          SizedBox(height: 16.h),
          Text(
            errorText != null ? errorText! : "city_not_found".tr(),
            style: theme.textStyles.inputStyle,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
