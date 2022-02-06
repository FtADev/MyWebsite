import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class Star extends StatelessWidget {
  final top;
  final right;
  final size;

  const Star({
    Key? key,
    this.top,
    this.right,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movingTween = MultiTween<DefaultAnimationProperties>()
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
    final sizedTween = MultiTween<DefaultAnimationProperties>()
      ..add(
        DefaultAnimationProperties.x,
        Tween(begin: 1.0, end: 2.0),
        Duration(seconds: 3),
      )
      ..add(
        DefaultAnimationProperties.x,
        Tween(begin: 2.0, end: 1.0),
        Duration(seconds: 5),
      )
      ..add(
        DefaultAnimationProperties.x,
        Tween(begin: 1.0, end: 2.0),
        Duration(seconds: 7),
      )
      ..add(
        DefaultAnimationProperties.x,
        Tween(begin: 2.0, end: 1.0),
        Duration(seconds: 9),
      );

    return MirrorAnimation(
      tween: movingTween,
      duration: movingTween.duration,
      curve: Curves.easeInOutSine,
      builder: (context, child, MultiTweenValues positionValue) => MirrorAnimation(
        tween: sizedTween,
        duration: sizedTween.duration,
        curve: Curves.fastOutSlowIn,
        builder: (context, child, MultiTweenValues value) => Positioned(
          top: top % 2 == 0
              ? top + positionValue.get(DefaultAnimationProperties.y)
              : top,
          right: right % 2 == 0
              ? right + positionValue.get(DefaultAnimationProperties.x)
              : right,
          child: Container(
            width: value.get(DefaultAnimationProperties.x) + size * 0.5,
            height: value.get(DefaultAnimationProperties.x) + size * 0.5,
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
