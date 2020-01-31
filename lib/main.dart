import 'package:MyWebsite/ui/mobile_size/const.dart';
import 'package:MyWebsite/ui/web_size/const.dart';
import 'package:flutter/material.dart';

import 'ui/component/fancy_background.dart';
import 'ui/component/flat_border_button.dart';
import 'ui/mobile_size/bio/bio.dart';
import 'ui/mobile_size/home/top_buttons.dart';
import 'ui/web_size/ability/abilities.dart';
import 'ui/web_size/about/about2.dart';
import 'ui/web_size/bio/bio.dart';
import 'ui/web_size/home/top_buttons.dart';
import 'ui/web_size/project/Projects.dart';

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
    isWeb = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          FancyBackgroundApp(
            showRepeatedAnimation: showRepeatedAnimation,
          ),
          Align(
            alignment: Alignment.center,
            child: state == States.HOME
                ? isWeb
                    ? WebBio(showRepeatedAnimation: showRepeatedAnimation)
                    : MobileBio(showRepeatedAnimation: showRepeatedAnimation)
                : state == States.ABOUT
                    ? About2()
                    : state == States.ABILITY
                        ? Abilities(
                            showRepeatedAnimation: showRepeatedAnimation)
                        : state == States.PROJECTS ? Projects() : Container(),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: isWeb
                  ? EdgeInsets.only(
                      top: WebConst.marginTop,
                      left: WebConst.marginLeft,
                    )
                  : EdgeInsets.only(
                      top: MobileConst.marginTop,
                      left: MobileConst.marginLeft,
                    ),
              child: FlatBorderButton(
                text: "Home",
                onTap: () => changeState(States.HOME),
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
              ? WebTopButtons(changeState: changeState)
              : MobileTopButtons(changeState: changeState),
        ],
      ),
    );
  }
}
