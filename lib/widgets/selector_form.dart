import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/helpers/modal_helpers.dart';
import 'package:solfy_flutter/models/form_selector_item.dart';
import 'package:solfy_flutter/styles/themes.dart';
import 'package:solfy_flutter/widgets/solfy_icons.dart';

/// Кастомный селектор для формы
///
/// [selectors] - варианты селектора
///
/// [rowMode] - отрисовка элементов в одну строку
///
/// [isErrorVisible] - показывается ли ошибка
class SelectorForm extends StatefulWidget {
  SelectorForm(
    List<FormSelectorItem?> selectors, {
    this.rowMode = false,
    this.isErrorVisible = false,
    this.isUneditableMode = false,
  }) : this.selectors = selectors.whereType<FormSelectorItem>().toList();

  final List<FormSelectorItem> selectors;
  final bool rowMode;
  final bool isErrorVisible;
  final bool isUneditableMode;
  @override
  _SelectorFormState createState() => _SelectorFormState();
}

class _SelectorFormState extends State<SelectorForm> {
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.read<AppTheme>();

    void onTap(int index) {
      if (!widget.isUneditableMode) {
        setState(() {
          for (var i = 0; i < widget.selectors.length; i++) {
            if (i == index) {
              widget.selectors[i].isEnabled = true;
            } else {
              widget.selectors[i].isEnabled = false;
            }
          }
        });
        widget.selectors[index].onTap?.call();
      } else {
        ModalHelpers.showUneditableValueModal(context);
      }
    }

    List<Widget> _buildRowList() {
      List<Widget> lines = [];
      for (var selector in widget.selectors) {
        lines.add(
          GestureDetector(
            onTap: () => onTap(widget.selectors.indexOf(selector)),
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  selector.isEnabled
                      ? Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 24.w,
                              height: 24.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 12.w,
                                  color: widget.isUneditableMode
                                      ? theme.colors.gray1
                                      : theme.colors.buttonPrimary,
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 2.0),
                              child: Icon(SolfyIcons.checkmark, color: Colors.white, size: 12),
                            ),
                          ],
                        )
                      : Container(
                          width: 24.w,
                          height: 24.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2.w,
                              color: theme.colors.gray1,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                  SizedBox(width: 16.w),
                  Text(
                    selector.text,
                    style: theme.textStyles.chooseFormText,
                  ),
                ],
              ),
            ),
          ),
        );
      }
      return lines;
    }

    return Column(
      children: [
        Column(
          children: [
            !widget.rowMode
                ? Column(
                    children: [
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: widget.selectors.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () => onTap(index),
                          child: Padding(
                            padding: EdgeInsets.only(
                                bottom: widget.selectors.length - 1 == index ? 0 : 20),
                            child: IntrinsicHeight(
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      widget.selectors[index].isEnabled
                                          ? Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Container(
                                                  width: 24.w,
                                                  height: 24.h,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      width: 12.w,
                                                      color: widget.isUneditableMode
                                                          ? theme.colors.gray1
                                                          : theme.colors.buttonPrimary,
                                                      style: BorderStyle.solid,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 2.0),
                                                  child: Icon(SolfyIcons.checkmark,
                                                      color: Colors.white, size: 12),
                                                ),
                                              ],
                                            )
                                          : Container(
                                              width: 24.w,
                                              height: 24.h,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  width: 2.w,
                                                  color: theme.colors.gray1,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                            ),
                                    ],
                                  ),
                                  SizedBox(width: 16.w),
                                  Text(
                                    widget.selectors[index].text,
                                    style: theme.textStyles.chooseFormText,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Row(
                    children: _buildRowList(),
                  ),
          ],
        ),
        widget.isErrorVisible
            ? Column(
                children: [
                  SizedBox(height: 12.h),
                  Row(
                    children: [
                      SizedBox(),
                      Text("Пожалуйста, заполните поле",
                          style: theme.textStyles.errorMessageTextField),
                    ],
                  ),
                ],
              )
            : SizedBox(),
      ],
    );
  }
}
