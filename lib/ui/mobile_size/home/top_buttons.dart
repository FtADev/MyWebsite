import 'package:MyWebsite/ui/component/flat_border_button.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class MobileTopButtons extends StatelessWidget {
  final Function changeState;
  final screen;

  const MobileTopButtons({Key key, this.screen, this.changeState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: EdgeInsets.only(
          top: screen.marginTop,
          right: screen.marginLeft,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlatBorderButton(
              text: "About Me",
              onTap: () => changeState(States.ABOUT),
            ),
            SizedBox(
              height: screen.sizedBox,
            ),
            FlatBorderButton(
              text: "My Abilities",
              onTap: () => changeState(States.ABILITY),
            ),
            SizedBox(
              height: screen.sizedBox,
            ),
            FlatBorderButton(
              text: "My Projects",
              onTap: () => changeState(States.PROJECTS),
            ),
          ],
        ),
      ),
    );
  }
}
