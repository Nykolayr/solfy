import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/models/enums.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

class FilterSelectorRow extends StatelessWidget {
  const FilterSelectorRow({
    required this.text,
    this.isEnabled = false,
    this.onChanged,
    this.filterRowType = FilterRowType.Switch,
  });

  final String text;
  final bool isEnabled;
  final void Function(bool flag)? onChanged;
  final FilterRowType filterRowType;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => filterRowType == FilterRowType.Checkmark ? onChanged?.call(true) : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: theme.textStyles.textInputStyle),
          filterRowType == FilterRowType.Switch
              ? Switch(
                  activeColor: theme.colors.buttonPrimary,
                  value: isEnabled,
                  onChanged: onChanged,
                )
              : isEnabled
                  ? Padding(
                      padding: EdgeInsets.only(right: 20),
                      child:
                          Icon(SolfyIcons.checkmark, size: 16.r, color: theme.colors.buttonPrimary),
                    )
                  : SizedBox(),
        ],
      ),
    );
  }
}
