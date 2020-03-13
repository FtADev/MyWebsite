import 'package:MyWebsite/ui/component/flat_border_button.dart';
import 'package:MyWebsite/ui/page2.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';
import '../project/Projects.dart';

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
              onTap: () => Navigator.of(context).push(createRoute(Projects(),)),
              screen: screen,
            ),
          ],
        ),
      ),
    );
  }
}

Route createRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
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
