import 'package:flutter/material.dart';
import 'package:MyWebsite/main.dart';
import 'package:MyWebsite/ui/component/flat_border_button.dart';


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
          top: 50,
          right: 50,
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
              width: 20,
            ),
//            FlatBorderButton(
//              text: "My Abilities",
//              onTap: () => changeState(States.ABILITY),
//              screen: screen,
//            ),
//            SizedBox(
//              width: screen.sizedBox,
//            ),
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
