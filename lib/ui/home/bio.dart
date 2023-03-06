import 'package:MyWebsite/ui/common/styles.dart';
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
            style: Styles.bio2,
          ),
          TypewriterText(
            text: "Fatemeh Akhlaghi",
            style: Styles.bio1,
          ),
          TypewriterText(
            text: "I Am A Mobile Application Developer",
            style: Styles.bio3,
          )
        ],
      ),
    );
  }
}
