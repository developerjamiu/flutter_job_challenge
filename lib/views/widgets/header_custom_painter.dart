import 'package:flutter/material.dart';

import '../../core/constants.dart';

class HeaderCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var rect = Offset.zero & size;

    Paint paint_0 = new Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    paint_0.shader = kPrimaryGradient.createShader(rect);

    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, (size.height + 40) * 0.60);
    path_0.quadraticBezierTo(size.width * 0.99, (size.height + 40) * 0.70,
        size.width * 0.94, (size.height + 40) * 0.70);
    path_0.cubicTo(
        size.width * 0.92,
        (size.height + 40) * 0.70,
        size.width * 0.32,
        (size.height + 40) * 0.70,
        size.width * 0.31,
        (size.height + 40) * 0.70);
    path_0.cubicTo(
        size.width * 0.30,
        (size.height + 40) * 0.70,
        size.width * 0.28,
        (size.height + 40) * 0.80,
        size.width * 0.19,
        (size.height + 40) * 0.80);
    path_0.cubicTo(
        size.width * 0.10,
        (size.height + 40) * 0.80,
        size.width * 0.08,
        (size.height + 40) * 0.70,
        size.width * 0.06,
        (size.height + 40) * 0.70);
    path_0.quadraticBezierTo(size.width * -0.00, (size.height + 40) * 0.70, 0,
        (size.height + 40) * 0.60);
    path_0.lineTo(0, 0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
