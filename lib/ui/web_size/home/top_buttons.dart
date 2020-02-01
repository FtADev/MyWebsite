import 'package:MyWebsite/ui/component/flat_border_button.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class WebTopButtons extends StatelessWidget {
  final Function changeState;
  final screen;

  const WebTopButtons({Key key, this.changeState, this.screen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: EdgeInsets.only(
          top: screen.marginTop,
          right: screen.marginLeft,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlatBorderButton(
              text: "About Me",
              onTap: () => changeState(States.ABOUT),
              screen: screen,
            ),
            SizedBox(
              width: screen.sizedBox,
            ),
            FlatBorderButton(
              text: "My Abilities",
              onTap: () => changeState(States.ABILITY),
              screen: screen,
            ),
            SizedBox(
              width: screen.sizedBox,
            ),
            FlatBorderButton(
              text: "My Projects",
              onTap: () => changeState(States.PROJECTS),
              screen: screen,
            ),
          ],
        ),
      ),
    );
  }
}
