import 'package:MyWebsite/ui/mobile_size/mobile_const.dart';
import 'package:MyWebsite/ui/web_size/web_const.dart';
import 'package:flutter/material.dart';

import 'ui/component/fancy_background.dart';
import 'ui/component/flat_border_button.dart';
import 'ui/mobile_size/home/top_buttons.dart';
import 'ui/page2.dart';
import 'ui/web_size/ability/abilities.dart';
import 'ui/web_size/about/about1.dart';
import 'ui/web_size/bio/bio.dart';
import 'ui/web_size/home/top_buttons.dart';
import 'ui/web_size/project/progect_size1.dart';
import 'ui/web_size/project/project_size2.dart';
import 'ui/web_size/project/project_size3.dart';

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

enum States { HOME, ABOUT, ABILITY, PROJECTS }

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
  var flareAnimation = "On";
  double size = 0.0;

  @override
  void initState() {
    animationIcon = showRepeatedAnimation ? Icons.pause : Icons.play_arrow;
    super.initState();
  }

  changeState(States newState) => setState(() {
        state = newState;
      });

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
                    ? About1(screen: screen)
                    : state == States.ABILITY
                        ? Abilities(
                            showRepeatedAnimation: showRepeatedAnimation)
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
                      onTap: () => changeState(States.HOME),
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
                      onTap: () => Navigator.of(context).push(createRoute(
                        Page2(
                          screen: screen,
                        ),
                      )),
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
            /*GestureDetector(
              child: Container(
                width: 100,
                height: 100,
                child: FlareActor(
                  "assets/happy_sad_switch.flr",
                  fit: BoxFit.contain,
                  animation: flareAnimation,
                ),
              ),
              onTap: () {
                setState(() {
                  showRepeatedAnimation = !showRepeatedAnimation;
                  flareAnimation = flareAnimation == "On" ? "Off" : "On";
                });
              },
            )*/
          ),
          isWeb
              ? WebTopButtons(
                  changeState: changeState,
                  screen: screen,
                )
              : MobileTopButtons(
                  changeState: changeState,
                  screen: screen,
                ),
        ],
      ),
    );
  }
}
