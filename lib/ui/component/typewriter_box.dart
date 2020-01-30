import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class TypewriterText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool showRepeatedAnimation;

  TypewriterText({this.text, this.style, this.showRepeatedAnimation});

  @override
  Widget build(BuildContext context) {
    return ControlledAnimation(
        duration: Duration(milliseconds: 800),
        delay: Duration(milliseconds: 800),
        tween: IntTween(begin: 0, end: text.length),
        builder: (context, textLength) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text.substring(0, textLength), style: style),
              ControlledAnimation(
                playback: showRepeatedAnimation ? Playback.LOOP : Playback.PLAY_FORWARD,
                duration: Duration(milliseconds: 600),
                tween: IntTween(begin: 0, end: 1),
                builder: (context, oneOrZero) {
                  return Opacity(
                      opacity: oneOrZero == 1 ? 1.0 : 0.0,
                      child: Text("_", style: style));
                },
              )
            ],
          );
        });
  }
}
