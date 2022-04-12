import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/input_base.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Инпут для номера телефона
class InputNumber extends StatefulWidget {
  const InputNumber(this.textController);

  final TextEditingController textController;

  @override
  _InputNumberState createState() => _InputNumberState();
}

class _InputNumberState extends State<InputNumber> {
  final focusNode = FocusNode();

  @override
  void initState() {
    focusNode.requestFocus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return InputBase(
      widget.textController,
      height: 44.h,
      width: 328.w,
      readOnly: true,
      focusNode: focusNode,
      prefix: Container(
        width: 95.w,
        child: Row(
          children: [
            SizedBox(width: 17.w),
            Icon(
              SolfyIcons.phone,
              color: theme.colors.secondaryItemsColor,
              size: 20.sp,
            ),
            SizedBox(width: 12.w),
            Text(
              "+998 ",
              style: theme.textStyles.inputStyle.copyWith(height: 1.2),
            ),
          ],
        ),
      ),
    );
  }
}
