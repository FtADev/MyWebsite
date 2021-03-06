import 'package:MyWebsite/ui/common/bio.dart';
import 'package:MyWebsite/ui/common/states.dart';
import 'package:MyWebsite/ui/component/fancy_background.dart';
import 'package:MyWebsite/ui/component/flat_border_button.dart';
import 'package:MyWebsite/ui/mobile/home/top_buttons.dart';
import 'package:MyWebsite/ui/mobile/project/Projects.dart';
import 'package:MyWebsite/ui/web/about/about.dart';
import 'package:MyWebsite/ui/web/home/top_buttons.dart';
import 'package:MyWebsite/ui/web/project/project_size1.dart';
import 'package:flutter/material.dart';
import 'package:MyWebsite/ui/mobile/about/about.dart';
import 'package:MyWebsite/ui/mobile/mobile_const.dart';
import 'package:MyWebsite/ui/web/project/project_size2.dart';
import 'package:MyWebsite/ui/web/project/project_size3.dart';
import 'package:MyWebsite/ui/web/web_const.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isWeb = true;
  bool showRepeatedAnimation = true;
  IconData animationIcon;
  double screenSize = 0.0;
  var currentState = States.HOME;
  var screen;

  @override
  void initState() {
    animationIcon = showRepeatedAnimation ? Icons.pause : Icons.play_arrow;
    super.initState();
  }

  webChangeState(States newState) => setState(() {
    currentState = newState;
  });

  mobileChangeState(States newState) => Navigator.of(context).push(createRoute(
    newState,
  ));

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size.width;
    isWeb = screenSize > 600;
    screen = isWeb ? WebConst() : MobileConst();

    return Scaffold(
      body: Stack(
        children: <Widget>[
          FancyBackgroundApp(
            showRepeatedAnimation: showRepeatedAnimation,
          ),
          Align(
            alignment: Alignment.center,
            child: currentState == States.HOME
                ? Bio(
              showRepeatedAnimation: showRepeatedAnimation,
              screen: screen,
            )
                : isWeb
                ? currentState == States.ABOUT
                ? WebAbout(screen: screen)
                : currentState == States.PROJECTS
                ? (screenSize < 1000
                ? ProjectsSize1()
                : screenSize < 1600
                ? ProjectsSize2()
                : ProjectsSize3())
                : Container()
                : Container(),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(
                top: screen.marginTop,
                left: screen.marginLeft,
              ),
              child: FlatBorderButton(
                text: isWeb ? "Home" : "About Me",
                onTap: () => isWeb
                    ? webChangeState(States.HOME)
                    : mobileChangeState(States.ABOUT),
                screen: screen,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: FlatButton(
              child: Icon(
                animationIcon,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  showRepeatedAnimation = !showRepeatedAnimation;
                  animationIcon =
                  showRepeatedAnimation ? Icons.pause : Icons.play_arrow;
                });
              },
            ),
          ),
          isWeb
              ? WebTopButtons(
            changeState: webChangeState,
            screen: screen,
          )
              : MobileTopButtons(
            changeState: mobileChangeState,
            screen: screen,
          ),
        ],
      ),
    );
  }

  Route createRoute(States state) {
    Widget page;
    if (state == States.PROJECTS)
      page = Projects(
        screen: MobileConst(),
      );
    else if (state == States.ABOUT)
      page = MobileAbout(
        screen: MobileConst(),
      );
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionDuration: Duration(seconds: 2),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.fastOutSlowIn;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
