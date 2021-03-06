import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class DynamicCard extends StatelessWidget {
  final Widget child;

  const DynamicCard({Key key, this.child}) : super(key: key);

  static final boxDecoration = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
            color: Colors.black.withAlpha(60),
            blurRadius: 5,
            offset: Offset(0, 8),
            spreadRadius: 2)
      ]);

  @override
  Widget build(BuildContext context) {
    return CustomAnimation(
      duration: Duration(milliseconds: 400),
      tween: Tween(begin: 0.0, end: MediaQuery.of(context).size.height * 0.8),
      builder: (context, animationChild, height) => CustomAnimation(
        duration: Duration(milliseconds: 1200),
        delay: Duration(milliseconds: 500),
        tween: Tween(begin: 2.0, end: MediaQuery.of(context).size.width * 0.7),
        builder: (context, animationChild, width) => Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Container(
            decoration: boxDecoration,
            width: width,
            height: height,
            child: child,
          ),
        ),
      ),
    );
  }
}
