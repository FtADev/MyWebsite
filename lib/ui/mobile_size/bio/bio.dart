import 'package:flutter/material.dart';

import '../../component/typewriter_box.dart';
import '../const.dart';

class MobileBio extends StatelessWidget {
  final bool showRepeatedAnimation;

  const MobileBio({Key key, this.showRepeatedAnimation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TypewriterText(
          text: "Hello, It's Me!",
          style: TextStyle(
            color: Colors.white,
            fontSize: MobileConst.bioFont1,
            fontFamily: 'dekko',
          ),
          showRepeatedAnimation: showRepeatedAnimation,
        ),
        TypewriterText(
          text: "Fatemeh Akhlaghi",
          style: TextStyle(
            color: Colors.white,
            fontSize: MobileConst.bioFont2,
            fontWeight: FontWeight.bold,
            fontFamily: 'dekko',
          ),
          showRepeatedAnimation: showRepeatedAnimation,
        ),
        TypewriterText(
          text: "I Am A Developer",
          style: TextStyle(
            color: Colors.white,
            fontSize: MobileConst.bioFont3,
            fontFamily: 'dekko',
          ),
          showRepeatedAnimation: showRepeatedAnimation,
        )
      ],
    );
  }
}
