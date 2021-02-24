import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

import 'stars_bg.dart';

class FancyBackgroundApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: AnimatedBackground(),
        ),
        onBottom(
          AnimatedWave(
            height: 180,
            speed: 1.0,
          ),
        ),
        onBottom(
          AnimatedWave(
            height: 120,
            speed: 0.9,
            offset: pi,
          ),
        ),
        onBottom(
          AnimatedWave(
            height: 220,
            speed: 1.2,
            offset: pi / 2,
          ),
        ),
        StarsBackground(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
      ],
    );
  }

  onBottom(Widget child) => Positioned.fill(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: child,
        ),
      );
}

class AnimatedWave extends StatelessWidget {
  final double height;
  final double speed;
  final double offset;

  AnimatedWave({
    this.height,
    this.speed,
    this.offset = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: height,
        width: constraints.biggest.width,
        child: LoopAnimation<double>(
          tween: Tween(begin: 0.0, end: 2 * pi),
          duration: Duration(milliseconds: (5000 / speed).round()),
          builder: (context, child, value) => CustomPaint(
            foregroundPainter: CurvePainter(value + offset),
          ),
        ),
      );
    });
  }
}

class CurvePainter extends CustomPainter {
  final double value;

  CurvePainter(this.value);

  @override
  void paint(Canvas canvas, Size size) {
    final white = Paint()..color = Colors.white.withAlpha(60);
    final path = Path();

    final y1 = sin(value);
    final y2 = sin(value + pi / 2);
    final y3 = sin(value + pi);

    final startPointY = size.height * (0.5 + 0.4 * y1);
    final controlPointY = size.height * (0.5 + 0.4 * y2);
    final endPointY = size.height * (0.5 + 0.4 * y3);

    path.moveTo(size.width * 0, startPointY);
    path.quadraticBezierTo(
        size.width * 0.5, controlPointY, size.width, endPointY);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, white);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class AnimatedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<DefaultAnimationProperties>()
      ..add(
        DefaultAnimationProperties.color1,
        ColorTween(begin: Color(0xffD38312), end: Colors.lightBlue.shade900),
        Duration(seconds: 3),
      )
      ..add(
        DefaultAnimationProperties.color2,
        ColorTween(begin: Color(0xffA83279), end: Colors.blue.shade600),
        Duration(seconds: 3),
      );

    return MirrorAnimation(
      tween: tween,
      duration: tween.duration,
      curve: Curves.easeInOutSine,
      builder: (context, child, MultiTweenValues value) => Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              value.get(DefaultAnimationProperties.color1),
              value.get(DefaultAnimationProperties.color2)
            ],
          ),
        ),
      ),
    );
  }
}
