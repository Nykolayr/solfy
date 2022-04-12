import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/input_base.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Кастомный стилизованный инпут для поиска
class SearchInput extends StatefulWidget {
  SearchInput({
    this.textEditingController,
    this.hintText,
    this.onTap,
    this.autoFocus = false,
    this.onSubmitted,
    this.prefix,
  });

  final TextEditingController? textEditingController;
  final String? hintText;
  final void Function()? onTap;
  final bool autoFocus;
  final void Function(String text)? onSubmitted;
  final Widget? prefix;
  @override
  _SearchInputState createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  final TextEditingController textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    if (widget.autoFocus) {
      _focusNode.requestFocus();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    return GestureDetector(
      onTap: () => widget.onTap?.call(),
      child: InputBase(
        widget.textEditingController ?? textEditingController,
        focusNode: _focusNode,
        onSubmitted: widget.onSubmitted,
        readOnly: widget.textEditingController == null,
        enabled: widget.textEditingController != null,
        hintText: widget.hintText,
        prefix: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.w),
          child: widget.prefix != null
              ? widget.prefix
              : Icon(SolfyIcons.find, size: 14.r, color: theme.colors.virtualKeyboardNumbers),
        ),
      ),
    );
  }
}
