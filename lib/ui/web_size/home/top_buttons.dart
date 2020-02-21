import 'package:MyWebsite/ui/component/flat_border_button.dart';
import 'package:MyWebsite/ui/page2.dart';
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
              onTap: () => Navigator.of(context).push(_createRoute()),
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

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Page2(screen: screen,),
      transitionDuration: Duration(seconds: 2),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.fastOutSlowIn;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
