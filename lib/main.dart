import 'package:flutter/material.dart';

import 'Projects.dart';
import 'abilities.dart';
import 'about2.dart';
import 'bio.dart';
import 'fancy_background.dart';
import 'flat_border_button.dart';

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showRepeatedAnimation = true;
  bool showBio = true;
  bool showAbout = false;
  bool showAbilities = false;
  bool showProjects = false;
  IconData animationIcon;

  @override
  void initState() {
    animationIcon = showRepeatedAnimation ? Icons.pause : Icons.play_arrow;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          FancyBackgroundApp(
            showRepeatedAnimation: showRepeatedAnimation,
          ),
          Align(
            alignment: Alignment.center,
            child: showBio
                ? Bio(
                    showRepeatedAnimation: showRepeatedAnimation,
                  )
                : showAbout
                    ? About2()
                    : showAbilities
                        ? Abilities(
                            showRepeatedAnimation: showRepeatedAnimation,
                          )
                        : showProjects ? Projects() : Container(),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(top: 50, left: 50),
              child: FlatBorderButton(
                text: "Home",
                onTap: () {
                  setState(() {
                    showBio = true;
                    showAbout = false;
                    showAbilities = false;
                    showProjects = false;
                  });
                },
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
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(top: 50, right: 50),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FlatBorderButton(
                    text: "About Me",
                    onTap: () {
                      setState(() {
                        showBio = false;
                        showAbout = true;
                        showAbilities = false;
                        showProjects = false;
                      });
                    },
                  ),
                  SizedBox(width: 20),
                  FlatBorderButton(
                    text: "My Abilities",
                    onTap: () {
                      setState(() {
                        showBio = false;
                        showAbout = false;
                        showAbilities = true;
                        showProjects = false;
                      });
                    },
                  ),
                  SizedBox(width: 20),
                  FlatBorderButton(
                    text: "My Projects",
                    onTap: () {
                      setState(() {
                        showBio = false;
                        showAbout = false;
                        showAbilities = false;
                        showProjects = true;
                      });
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
