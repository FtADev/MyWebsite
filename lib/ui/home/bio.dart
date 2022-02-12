import 'package:flutter/material.dart';
import 'package:MyWebsite/ui/component/typewriter_box.dart';


class Bio extends StatelessWidget {
  final screen;

  const Bio({Key? key, this.screen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TypewriterText(
            text: "Hello, It's Me!",
            style: TextStyle(
              color: Colors.white,
              fontSize: screen.bioFont1,
              fontFamily: 'dekko',
            ),
          ),
          TypewriterText(
            text: "Fatemeh Akhlaghi",
            style: TextStyle(
              color: Colors.white,
              fontSize: screen.bioFont2,
              fontWeight: FontWeight.bold,
              fontFamily: 'dekko',
            ),
          ),
          TypewriterText(
            text: "I Am A Mobile Application Developer",
            style: TextStyle(
              color: Colors.white,
              fontSize: screen.bioFont3,
              fontFamily: 'dekko',
            ),
          )
        ],
      ),
    );
  }
}