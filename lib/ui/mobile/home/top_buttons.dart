import 'package:flutter/material.dart';
import 'package:MyWebsite/main.dart';
import 'package:MyWebsite/ui/component/flat_border_button.dart';


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
          top: 26,
          right: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
//            FlatBorderButton(
//              text: "My Abilities",
//              onTap: () => changeState(States.ABILITY),
//              screen: screen,
//            ),
//            SizedBox(
//              height: screen.sizedBox,
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
