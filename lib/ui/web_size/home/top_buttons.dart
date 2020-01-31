import 'package:MyWebsite/ui/component/flat_border_button.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';
import '../const.dart';

class WebTopButtons extends StatelessWidget {
  final Function changeState;

  const WebTopButtons({Key key, this.changeState}) : super(key: key);

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
              onTap: () => changeState(States.ABOUT),
            ),
            SizedBox(
              width: WebConst.sizedBox,
            ),
            FlatBorderButton(
              text: "My Abilities",
              onTap: () => changeState(States.ABILITY),
            ),
            SizedBox(
              width: WebConst.sizedBox,
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
