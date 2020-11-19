import 'package:flutter/material.dart';

class BadgePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    paint.color = Color(0xff30a1df);
    path = Path();
    path.lineTo(0, size.height * 0.75);
    path.cubicTo(0, size.height * 0.75, size.width, size.height * 0.75,
        size.width, size.height * 0.75);
    path.cubicTo(size.width, size.height * 0.75, size.width / 2, size.height,
        size.width / 2, size.height);
    path.cubicTo(size.width / 2, size.height, 0, size.height * 0.75, 0,
        size.height * 0.75);
    path.lineTo(0, size.height * 0.75);
    path.cubicTo(0, size.height * 0.75, 0, 0, 0, 0);
    path.cubicTo(0, 0, size.width, 0, size.width, 0);
    path.cubicTo(size.width, 0, size.width, size.height * 0.75, size.width,
        size.height * 0.75);
    path.cubicTo(size.width, size.height * 0.75, 0, size.height * 0.75, 0,
        size.height * 0.75);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
