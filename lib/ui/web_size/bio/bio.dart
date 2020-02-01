import 'package:flutter/material.dart';

import '../../component/typewriter_box.dart';

class WebBio extends StatelessWidget {
  final bool showRepeatedAnimation;
  final screen;

  const WebBio({Key key, this.showRepeatedAnimation, this.screen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TypewriterText(
          text: "Hello, It's Me!",
          style: TextStyle(
            color: Colors.white,
            fontSize: screen.bioFont1,
            fontFamily: 'dekko',
          ),
          showRepeatedAnimation: showRepeatedAnimation,
        ),
        TypewriterText(
          text: "Fatemeh Akhlaghi",
          style: TextStyle(
            color: Colors.white,
            fontSize: screen.bioFont2,
            fontWeight: FontWeight.bold,
            fontFamily: 'dekko',
          ),
          showRepeatedAnimation: showRepeatedAnimation,
        ),
        TypewriterText(
          text: "I Am A Developer",
          style: TextStyle(
            color: Colors.white,
            fontSize: screen.bioFont3,
            fontFamily: 'dekko',
          ),
          showRepeatedAnimation: showRepeatedAnimation,
        )
      ],
    );
  }
}
