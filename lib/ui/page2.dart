import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:url_launcher/url_launcher.dart';

import 'component/fade_in_ui.dart';
import 'my_custom_shape.dart';

enum AboutStates { START, MIDDLE, NOW }

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final String startingText =
      "My programming world was created on 2015 since I went to college! I said \"Hello, World\" with C++, and learnt basics of programming with it. After that I started to learn Java. I practice more and learnt Java Core. And then I tested a bit C# as a Windows Form, too :)";
  final String middling =
      "After one year, rolling stone, I found my way, Android Developing! I started android developing with java and after some experiences I switched to Kotlin, my lovely language!";
  final String now =
      "On 2017, with 4 of my friends, made a small team and start working together with a lot of Motivation! After a year, we make the team bigger. And now I'm in ExceptionalDev Team! The best team that I ever had...";

  var currentState = AboutStates.START;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,
              child: MyCustomShape()
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currentState == AboutStates.START ? "Starting"
                      : currentState == AboutStates.MIDDLE ? "Middling"
                      : "And Now",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontFamily: 'dekko',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  currentState == AboutStates.START ? startingText
                      : currentState == AboutStates.MIDDLE ? middling
                      : now,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'dekko',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          currentState == AboutStates.NOW ?
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    FadeIn(
                      3.5,
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/gmail.png',
                            width: 25,
                            height: 25,
                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'akhlaghi.fatemeh@gmail.com',
                            style: TextStyle(
                              fontFamily: 'dekko',
                              fontSize: 20,
                              color: Colors.white
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        FadeIn(
                          4,
                          InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                border: Border.all(width: 1, color: Colors.white,)
                              ),
                              child: Image.asset(
                                'assets/github.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            onTap: githubLauncher,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FadeIn(
                          4.5,
                          InkWell(
                            child: Image.asset(
                              'assets/gitlab.png',
                              width: 50,
                              height: 50,
                            ),
                            onTap: gitlabLauncher,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FadeIn(
                          5,
                          InkWell(
                            child: Image.asset(
                              'assets/telegram.png',
                              width: 50,
                              height: 50,
                            ),
                            onTap: telegramLauncher,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
          : Container(),
        ],
      ),
    );
  }

  githubLauncher() async {
    const url = 'https://github.com/FtADev/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  gitlabLauncher() async {
    const url = 'https://gitlab.com/FtADev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  telegramLauncher() async {
    const url = 'https://t.me/ftadev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
