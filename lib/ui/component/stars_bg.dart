import 'dart:math';

import 'package:flutter/material.dart';

import 'star.dart';

class StarsBackground extends StatefulWidget {
  final width, height;

  const StarsBackground(
      {Key? key, this.width, this.height})
      : super(key: key);

  @override
  _StarsBackgroundState createState() => _StarsBackgroundState();
}

class _StarsBackgroundState extends State<StarsBackground> {
  double? starsNum;
  List<Widget> stars = [];
  var random = Random();

  @override
  void initState() {
    double? starsInRow = widget.width / 50;
    double? starsInColumn = widget.height / 50;

    starsNum = starsInRow != 0
        ? starsInRow! * (starsInColumn != 0 ? starsInColumn! : starsInRow)
        : starsInColumn;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: List.generate(starsNum!.floor(), (index) => Star(
          top: random.nextInt(widget.height.floor()).toDouble(),
          right: random.nextInt(widget.width.floor()).toDouble(),
          size: random.nextInt(3).toDouble(),
        )),
    );
  }
}
