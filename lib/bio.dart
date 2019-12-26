import 'package:flutter/material.dart';

import 'typewriter_box.dart';

class Bio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TypewriterText(
          text: "Hi, It's Me!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
          ),
        ),
        TypewriterText(
          text: "Fatemeh Akhlaghi",
          style: TextStyle(
              color: Colors.white,
              fontSize: 70,
              fontWeight: FontWeight.bold,
              fontFamily: 'font1'),
        ),
        TypewriterText(
          text: "I Am Developer",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        )
      ],
    );
  }
}
