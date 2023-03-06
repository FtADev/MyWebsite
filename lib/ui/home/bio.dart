import 'package:MyWebsite/ui/common/styles.dart';
import 'package:MyWebsite/ui/common/web_const.dart';
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
            style: (screen is WebConst ) ? Styles.bio2 : Styles.bio2m,
          ),
          TypewriterText(
            text: "Fatemeh Akhlaghi",
            style: (screen is WebConst ) ? Styles.bio1 : Styles.bio1m,
          ),
          TypewriterText(
            text: "I Am A Mobile Application Developer",
            style: (screen is WebConst ) ? Styles.bio3 : Styles.bio3m,
          )
        ],
      ),
    );
  }
}
