import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class TypewriterText extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final Key loopKey = Key('loop');
  final Key playKey = Key('playKey');

  TypewriterText({this.text, this.style,});

  @override
  Widget build(BuildContext context) {
    return PlayAnimation(
      key: playKey,
      duration: Duration(milliseconds: 800),
      delay: Duration(milliseconds: 800),
      tween: IntTween(begin: 0, end: text!.length),
      builder: (context, child, dynamic textLength) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text!.substring(0, textLength), style: style),
            LoopAnimation(
              key: loopKey,
              duration: Duration(milliseconds: 600),
              tween: IntTween(begin: 0, end: 1),
              builder: (context, child, dynamic oneOrZero) {
                return Opacity(
                    opacity: oneOrZero == 1 ? 1.0 : 0.0,
                    child: Text("_", style: style));
              },
            )
          ],
        );
      },
    );
  }
}
