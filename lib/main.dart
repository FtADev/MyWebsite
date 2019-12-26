import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'fancy_background.dart';
import 'flat_border_button.dart';
import 'star.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FtaDev',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  AnimationController animationController;

  var random = math.Random();

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
    super.initState();
  }

  void setAnimation() {
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (Timer t) => setAnimation());

    return Scaffold(
      body: Stack(
        children: <Widget>[
          FancyBackgroundApp(),
          ...makeStar(
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height,
          ),
//          WaveProgress(180.0, Colors.blue, Colors.blueAccent, 50.0),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(top: 50, right: 50),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FlatBorderButton(
                    text: "About Me",
                    onTap: () {},
                  ),
                  SizedBox(width: 20),
                  FlatBorderButton(
                    text: "My Abilities",
                    onTap: () {},
                  ),
                  SizedBox(width: 20),
                  FlatBorderButton(
                    text: "My Projects",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> makeStar(double width, double height) {
    double starsInRow = width / 50;
    double starsInColumn = height / 50;
    double starsNum = starsInRow != 0
        ? starsInRow * (starsInColumn != 0 ? starsInColumn : starsInRow)
        : starsInColumn;

    List<Widget> stars = [];

    for (int i = 0; i < starsNum; i++) {
      stars.add(Star(
        top: random.nextInt(height.floor()).toDouble(),
        right: random.nextInt(width.floor()).toDouble(),
        animationController: animationController,
      ));
    }

    return stars;
  }
}
