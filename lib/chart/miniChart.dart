import 'dart:math';

import 'package:app_family_materials/chart/chartPoint.dart';
import 'package:flutter/cupertino.dart';

import 'chartPainter.dart';

class MiniChart extends StatelessWidget {
  final List<ChartPoint> data;
  final double width;
  final double height;
  final double lineWidth;
  final Color lineColor;

  const MiniChart({
    super.key,
    required this.data,
    required this.width,
    required this.height,
    required this.lineColor,
    this.lineWidth = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) return SizedBox(width: width, height: height);

    // Find min and max values for scaling
    final minValue = data.map((e) => e.value).reduce((a, b) => a < b ? a : b);
    final maxValue = data.map((e) => e.value).reduce((a, b) => a > b ? a : b);
    final minTime = data.first.timestamp;
    final maxTime = data.last.timestamp;
    final baseLine = minValue - (maxValue - minValue) / 2;
    // final roofLine = maxValue + (maxValue - minValue) / 3;

    return SizedBox(
      width: width,
      height: height,
      child: CustomPaint(
        painter: ChartPainter(
          data: data,
          minValue: baseLine,
          maxValue: maxValue,
          minTime: minTime,
          maxTime: maxTime,
          lineWidth: lineWidth,
          lineColor: lineColor
        ),
      ),
    );
  }
}
