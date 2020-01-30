import 'package:MyWebsite/ui/component/flat_border_button.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class WebTopButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: EdgeInsets.only(
          top: WebConst.marginTop,
          right: WebConst.marginLeft,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlatBorderButton(
              text: "About Me",
//              onTap: () {
//                setState(() {
//                  showBio = false;
//                  showAbout = true;
//                  showAbilities = false;
//                  showProjects = false;
//                });
//              },
            ),
            SizedBox(
              width: WebConst.sizedBox,
            ),
            FlatBorderButton(
              text: "My Abilities",
//              onTap: () {
//                setState(() {
//                  showBio = false;
//                  showAbout = false;
//                  showAbilities = true;
//                  showProjects = false;
//                });
//              },
            ),
            SizedBox(
              width: WebConst.sizedBox,
            ),
            FlatBorderButton(
              text: "My Projects",
//              onTap: () {
//                setState(() {
//                  showBio = false;
//                  showAbout = false;
//                  showAbilities = false;
//                  showProjects = true;
//                });
//              },
            ),
          ],
        ),
      ),
    );
  }
}
