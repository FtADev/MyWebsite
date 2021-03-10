import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeIn extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeIn(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<DefaultAnimationProperties>()
      ..add(DefaultAnimationProperties.color, Tween(begin: 0.0, end: 1.0),
          Duration(milliseconds: 2000))
      ..add(DefaultAnimationProperties.x, Tween(begin: 130.0, end: 0.0),
          Duration(milliseconds: 2000), Curves.easeOut);

    return PlayAnimation(
        delay: Duration(milliseconds: (300 * delay).round()),
        duration: tween.duration,
        tween: tween,
        child: child,
        builder: (context, child, MultiTweenValues<DefaultAnimationProperties> value) {
          return Opacity(
              opacity: value.get(DefaultAnimationProperties.color),
              child: Transform.translate(
                  offset: Offset(value.get(DefaultAnimationProperties.x), 0), child: child));
        });
  }
}
