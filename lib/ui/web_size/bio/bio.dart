import 'package:flutter/material.dart';

import '../../component/typewriter_box.dart';
import '../const.dart';

class WebBio extends StatelessWidget {
  final bool showRepeatedAnimation;

  const WebBio({Key key, this.showRepeatedAnimation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TypewriterText(
          text: "Hello, It's Me!",
          style: TextStyle(
            color: Colors.white,
            fontSize: WebConst.bioFont1,
            fontFamily: 'dekko',
          ),
          showRepeatedAnimation: showRepeatedAnimation,
        ),
        TypewriterText(
          text: "Fatemeh Akhlaghi",
          style: TextStyle(
            color: Colors.white,
            fontSize: WebConst.bioFont2,
            fontWeight: FontWeight.bold,
            fontFamily: 'dekko',
          ),
          showRepeatedAnimation: showRepeatedAnimation,
        ),
        TypewriterText(
          text: "I Am A Developer",
          style: TextStyle(
            color: Colors.white,
            fontSize: WebConst.bioFont3,
            fontFamily: 'dekko',
          ),
          showRepeatedAnimation: showRepeatedAnimation,
        )
      ],
    );
  }
}
