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
        const Duration(seconds: 8),
        Curves.easeInOutSine,
      )
      ..add(
        DefaultAnimationProperties.y,
        Tween(begin: 10.0, end: 0.0),
        const Duration(seconds: 6),
        Curves.easeInOutSine,
      )
      ..add(
        DefaultAnimationProperties.x,
        Tween(begin: 0.0, end: 10.0),
        const Duration(seconds: 7),
        Curves.easeInOutSine,
      )
      ..add(
        DefaultAnimationProperties.x,
        Tween(begin: 10.0, end: 0.0),
        const Duration(seconds: 5),
        Curves.easeInOutSine,
      )
      ..add(
        DefaultAnimationProperties.size,
        Tween(begin: 1.0, end: 2.0),
        const Duration(seconds: 3),
        Curves.fastOutSlowIn,
      )
      ..add(
        DefaultAnimationProperties.size,
        Tween(begin: 2.0, end: 1.0),
        const Duration(seconds: 5),
        Curves.fastOutSlowIn,
      )
      ..add(
        DefaultAnimationProperties.size,
        Tween(begin: 1.0, end: 2.0),
        const Duration(seconds: 7),
        Curves.fastOutSlowIn,
      )
      ..add(
        DefaultAnimationProperties.size,
        Tween(begin: 2.0, end: 1.0),
        const Duration(seconds: 9),
        Curves.fastOutSlowIn,
      );

    return MirrorAnimation(
      tween: movingTween,
      duration: movingTween.duration,
      builder: (context, child, MultiTweenValues value) => Positioned(
        top: top % 2 == 0 ? top + value.get(DefaultAnimationProperties.y) : top,
        right: right % 2 == 0
            ? right + value.get(DefaultAnimationProperties.x)
            : right,
        child: Container(
          width: value.get(DefaultAnimationProperties.size) + size * 0.5,
          height: value.get(DefaultAnimationProperties.size) + size * 0.5,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
