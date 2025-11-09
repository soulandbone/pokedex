import 'package:flutter/material.dart';

class CustomTopBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.green;

    // Define the path for the custom shape
    final path = Path()
      ..moveTo(0, 0) // Start at the top-left corner
      ..lineTo(size.width, 0) // Line to the top-right corner
      ..lineTo(size.width,
          size.height * 0.7) // Line down, create the height of the shape
      ..quadraticBezierTo(
        size.width / 2, size.height, // Control point for the curve
        0, size.height * 0.7, // End point for the curve
      )
      ..close(); // Close the path

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // Static shape, no need to repaint
  }
}
