import 'package:MyWebsite/ui/common/states.dart';
import 'package:flutter/material.dart';
import 'package:MyWebsite/ui/component/flat_border_button.dart';


class MobileTopButtons extends StatelessWidget {
  final Function? moveToPage;
  final screen;

  const MobileTopButtons({Key? key, this.screen, this.moveToPage}) : super(key: key);

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
              onTap: () => moveToPage!(2),
              screen: screen,
            ),
          ],
        ),
      ),
    );
  }
}
