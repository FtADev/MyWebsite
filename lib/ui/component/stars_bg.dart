import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import 'star.dart';

class StarsBackground extends StatefulWidget {
  final bool showRepeatedAnimation;
  final width, height;

  const StarsBackground(
      {Key key, this.showRepeatedAnimation, this.width, this.height})
      : super(key: key);

  @override
  _StarsBackgroundState createState() => _StarsBackgroundState();
}

class _StarsBackgroundState extends State<StarsBackground>
    with TickerProviderStateMixin {
  AnimationController animationController;
  double starsNum;
  List<Widget> stars = [];

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          if (!mounted) return;
          animationController.reverse();
        }
      });

    double starsInRow = widget.width / 50;
    double starsInColumn = widget.height / 50;

    starsNum = starsInRow != 0
        ? starsInRow * (starsInColumn != 0 ? starsInColumn : starsInRow)
        : starsInColumn;

    Timer.periodic(Duration(seconds: 1), (Timer t) => setAnimation());

    super.initState();
  }

  void setAnimation() {
    if (widget.showRepeatedAnimation) animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    var random = Random();

    return Stack(
      children: List.generate(starsNum.floor(), (index) {
        return Star(
          top: random.nextInt(widget.height.floor()).toDouble(),
          right: random.nextInt(widget.width.floor()).toDouble(),
          animationController: animationController,
        );
      }),
    );
  }
}
