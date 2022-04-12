import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solfy_flutter/helpers/color_utils.dart';
import 'package:vector_math/vector_math.dart' as vmath;

/// Виджет с отрисовкой графика кошелька
///
/// [selectedValue] - заполненное значение
///
/// [fullValue] - полное значение
///
/// [fillColor] - цвет заполненного участка
///
/// [strokeWidth] - ширина полосы графика
class WalletChart extends CustomPainter {
  WalletChart(
    this.selectedValue,
    this.fullValue, {
    this.fillColor,
    this.strokeWidth,
  });
  final double selectedValue;
  final double fullValue;
  final double? strokeWidth;
  final Color? fillColor;

  @override
  void paint(Canvas canvas, Size size) {
    final Offset center = Offset(size.width / 2.0, size.height / 2.0);

    canvas.drawArc(
      Rect.fromCenter(center: center, width: size.width, height: size.height),
      vmath.radians(130),
      vmath.radians(280),
      false,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..color = ColorUtils.getColorFromHex("E3E5E8")
        ..strokeWidth = strokeWidth != null ? strokeWidth! : 10.r,
    );
    final selectedDegree = (selectedValue / fullValue) * 280;
    canvas.drawArc(
      Rect.fromCenter(center: center, width: size.width, height: size.height),
      vmath.radians(130),
      vmath.radians(selectedDegree),
      false,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..color = fillColor != null
            ? fillColor!
            : ColorUtils.getColorFromHex("4E36C4")
        ..strokeWidth = strokeWidth != null ? strokeWidth! : 10.r,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
