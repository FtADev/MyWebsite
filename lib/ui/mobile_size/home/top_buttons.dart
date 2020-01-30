import 'package:MyWebsite/ui/component/flat_border_button.dart';
import 'package:MyWebsite/ui/mobile_size/const.dart';
import 'package:flutter/material.dart';

class MobileTopButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: EdgeInsets.only(
          top: MobileConst.marginTop,
          right: MobileConst.marginLeft,
        ),
        child: Column(
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
              height: MobileConst.sizedBox,
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
              height: MobileConst.sizedBox,
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
