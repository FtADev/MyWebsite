import 'package:MyWebsite/ui/mobile/mobile_const.dart';
import 'package:MyWebsite/ui/mobile/about/mobile_about.dart';
import 'package:MyWebsite/ui/web/project/progect_size1.dart';
import 'package:MyWebsite/ui/web/project/project_size2.dart';
import 'package:MyWebsite/ui/web/project/project_size3.dart';
import 'package:MyWebsite/ui/web/web_const.dart';
import 'package:flutter/material.dart';

import 'ui/component/fancy_background.dart';
import 'ui/component/flat_border_button.dart';
import 'ui/mobile/home/top_buttons.dart';
import 'ui/web/ability/abilities.dart';
import 'ui/web/about/about.dart';
import 'ui/common/bio.dart';
import 'ui/web/home/top_buttons.dart';
import 'ui/mobile/project/Projects.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FtaDev',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

enum States { HOME, ABOUT, ABILITY, PROJECTS, WEB, MOBILE }

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isWeb = true;
  bool showRepeatedAnimation = true;
  IconData animationIcon;
  var state = States.HOME;
  var screen;
  double size = 0.0;

  @override
  void initState() {
    animationIcon = showRepeatedAnimation ? Icons.pause : Icons.play_arrow;
    super.initState();
  }

  webChangeState(States newState) => setState(() {
        state = newState;
      });

  mobileChangeState(States newState) => Navigator.of(context).push(createRoute(
        newState,
      ));

  @override
  Widget build(BuildContext context) {
    screen =
        (MediaQuery.of(context).size.width > 600) ? WebConst() : MobileConst();
    isWeb = MediaQuery.of(context).size.width > 600;
    size = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          FancyBackgroundApp(
            showRepeatedAnimation: showRepeatedAnimation,
          ),
          Align(
            alignment: Alignment.center,
            child: state == States.HOME
                ? WebBio(
                    showRepeatedAnimation: showRepeatedAnimation,
                    screen: screen,
                  )
                : state == States.ABOUT
                    ? About(screen: screen)
                    : state == States.ABILITY
                        ? Abilities(
                            showRepeatedAnimation: showRepeatedAnimation,
                          )
                        : state == States.PROJECTS
                            ? (size < 1000
                                ? ProjectsSize1()
                                : size < 1600
                                    ? ProjectsSize2()
                                    : ProjectsSize3())
                            : Container(),
          ),
          isWeb
              ? Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: screen.marginTop,
                      left: screen.marginLeft,
                    ),
                    child: FlatBorderButton(
                      text: "Home",
                      onTap: () => webChangeState(States.HOME),
                      screen: screen,
                    ),
                  ),
                )
              : Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: screen.marginTop,
                      left: screen.marginLeft,
                    ),
                    child: FlatBorderButton(
                      text: "About Me",
                      onTap: () => mobileChangeState(States.ABOUT),
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
    if (state == States.PROJECTS) page = Projects(screen: MobileConst(),);
    else if (state == States.ABOUT) page = MobileAbout(screen: MobileConst(),);
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
}
