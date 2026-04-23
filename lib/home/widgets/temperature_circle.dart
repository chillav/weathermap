import 'dart:math';

import 'package:flutter/material.dart';

import '../../core/extensions/int_extensions.dart';

class TemperatureCircle extends StatelessWidget {
  final int temperature;
  final String sunrise;
  final String sunset;

  const TemperatureCircle({
    super.key,
    required this.temperature,
    required this.sunrise,
    required this.sunset,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      height: 260,
      child: CustomPaint(painter: _CirclePainter(), child: _buildContent()),
    );
  }

  Widget _buildContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          sunrise,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 12,
          ), //TODO стили вынести
        ),
        Text(
          temperature.asDegree,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 64,
            fontWeight: FontWeight.w200, //TODO стили вынести
          ),
        ),
        Text(
          sunset,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 12,
          ), //TODO стили вынести
        ),
      ],
    );
  }
}

class _CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 8;

    final paint = Paint()
      ..color = Colors.white.withValues(alpha: 0.15)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final arcPaint = Paint()
      ..shader = const LinearGradient(
        colors: [Colors.orange, Colors.blue],
      ).createShader(Rect.fromCircle(center: center, radius: radius))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius, paint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      pi,
      pi,
      false,
      arcPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
