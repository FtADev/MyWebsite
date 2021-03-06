import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class Star extends StatelessWidget {
  final top;
  final right;

  const Star({
    Key key,
    this.top,
    this.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<DefaultAnimationProperties>()
      ..add(
        DefaultAnimationProperties.y,
        Tween(begin: 0.0, end: 10.0),
        Duration(seconds: 8),
      )
      ..add(
        DefaultAnimationProperties.y,
        Tween(begin: 10.0, end: 0.0),
        Duration(seconds: 6),
      )
      ..add(
        DefaultAnimationProperties.x,
        Tween(begin: 0.0, end: 10.0),
        Duration(seconds: 7),
      )
      ..add(
        DefaultAnimationProperties.x,
        Tween(begin: 10.0, end: 0.0),
        Duration(seconds: 5),
      );

    return MirrorAnimation(
      tween: tween,
      duration: tween.duration,
      curve: Curves.easeInOutSine,
      builder: (context, child, MultiTweenValues positionValue) => MirrorAnimation(
        tween: Tween(begin: 1.5, end: 3.0),
        duration: Duration(milliseconds: 1000),
        curve: Curves.fastOutSlowIn,
        builder: (context, child, value) => Positioned(
          top: top % 2 == 0
              ? top + positionValue.get(DefaultAnimationProperties.y)
              : top,
          right: right % 2 == 0
              ? right + positionValue.get(DefaultAnimationProperties.x)
              : right,
          child: Container(
            width: value,
            height: value,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
