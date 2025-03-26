import 'dart:math';

import 'package:app_family_materials/chart/chartPoint.dart';
import 'package:flutter/material.dart';

class ChartPainter extends CustomPainter {
  final List<ChartPoint> data;
  final double minValue;
  final double maxValue;
  final DateTime minTime;
  final DateTime maxTime;
  final double lineWidth;
  final Color lineColor;

  ChartPainter({
    required this.data,
    required this.minValue,
    required this.maxValue,
    required this.minTime,
    required this.maxTime,
    required this.lineWidth,
    required this.lineColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = lineColor
          ..strokeWidth = lineWidth
          ..strokeJoin =
              StrokeJoin
                  .round // round line
          ..style = PaintingStyle.stroke;

    final fillPaint =
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [lineColor.withValues(alpha: 0.3), lineColor.withValues(alpha: 0.0005)],
            // stops: [0.0, 0.8],
          ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
          ..style = PaintingStyle.fill;

    final axisPaint =
        Paint()
          ..color = Colors.transparent
          ..strokeWidth = 1;

    // Draw X and Y axes
    canvas.drawLine(Offset(0, size.height), Offset(size.width, size.height), axisPaint);
    canvas.drawLine(Offset(0, 0), Offset(0, size.height), axisPaint);

    // Calculate points
    final points =
        data.map((point) {
          final x =
              (point.timestamp.millisecondsSinceEpoch - minTime.millisecondsSinceEpoch) /
              (maxTime.millisecondsSinceEpoch - minTime.millisecondsSinceEpoch) *
              size.width;
          final y = size.height - ((point.value - minValue) / (maxValue - minValue)) * size.height;
          return Offset(x, y);
        }).toList();

    if (points.isEmpty) return;

    // Draw filled area
    // sharp style
    // final path = Path();
    // path.moveTo(0, size.height);
    // for (final point in points) {
    //   path.lineTo(point.dx, point.dy);
    // }
    // path.lineTo(size.width, size.height);
    // path.close();
    // canvas.drawPath(path, fillPaint);
    //
    // // Draw line
    // for (int i = 0; i < points.length - 1; i++) {
    //   canvas.drawLine(points[i], points[i + 1], paint);
    // }

    // Draw filled area
    // round style
    final fillPath = Path();
    fillPath.moveTo(0, size.height);
    for (final point in points) {
      fillPath.lineTo(point.dx, point.dy);
    }
    fillPath.lineTo(size.width, size.height);
    fillPath.close();
    canvas.drawPath(fillPath, fillPaint);

    final linePath = Path();
    linePath.moveTo(points.first.dx, points.first.dy);

    for (int i = 1; i < points.length; i++) {
      final p0 = points[i - 1];
      final p1 = points[i];

      final controlPoint1 = Offset(p0.dx + (p1.dx - p0.dx) * 0.3, p0.dy + (p1.dy - p0.dy) * 0.3);

      final controlPoint2 = Offset(p0.dx + (p1.dx - p0.dx) * 0.7, p0.dy + (p1.dy - p0.dy) * 0.7);

      linePath.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx, controlPoint2.dy, p1.dx, p1.dy);
    }

    canvas.drawPath(linePath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
