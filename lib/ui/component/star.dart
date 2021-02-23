import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class Star extends StatelessWidget {
  final top;
  final right;

  const Star({Key key, this.top, this.right,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right,
      child: CustomAnimation<double>(
        control: CustomAnimationControl.MIRROR,
        tween: Tween(begin: 1.5, end: 3.0),
        duration: Duration(milliseconds: 1000),
        curve: Curves.fastOutSlowIn,
        animationStatusListener: (status) {},
        builder: (context, child, value) {
          return Container(
                  width: value,
                  height: value,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                );
        },
      ),
    );
  }
}
