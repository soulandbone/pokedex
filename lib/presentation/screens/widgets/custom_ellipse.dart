import 'package:flutter/material.dart';

class CustomEllipse extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.green; // your color

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final startAngle = 0.0; // start at 0 radians
    final sweepAngle = 3.14; // 180 degrees in radians

    // Draw semi-ellipse: use drawArc with a rect, start, sweep, and 'useCenter: true' to fill
    canvas.drawArc(rect, startAngle, sweepAngle, true, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // static shape no need to repaint
  }
}
