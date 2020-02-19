import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:url_launcher/url_launcher.dart';

import 'component/fade_in_ui.dart';

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
      body: Stack(
        children: <Widget>[
          Image.asset(
            currentState == AboutStates.START ? 'assets/pishi-s.jpg'
            : currentState == AboutStates.MIDDLE ? 'assets/pishi-m.jpg'
            : 'assets/pishi-n.jpg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Opacity(
            opacity: 0.5,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 150,
                vertical: 150,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currentState == AboutStates.START ? "Starting"
                        : currentState == AboutStates.MIDDLE ? "Middling"
                        : "And Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      fontFamily: 'dekko',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    currentState == AboutStates.START ? startingText
                        : currentState == AboutStates.MIDDLE ? middling
                        : now,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'dekko',
                    ),
                  ),
                ],
              ),
            ),
          ),
          currentState != AboutStates.NOW ? Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(
                right: 150,
                bottom: 150,
              ),
              child: FlatButton(
                child: Icon(Icons.arrow_right, color: Colors.white, size: 50,),
                onPressed: () {
                  setState(() {
                    currentState == AboutStates.START ? currentState = AboutStates.MIDDLE
                        : currentState = AboutStates.NOW;
                  });
                },
              ),
            ),
          ) : Container(),
          currentState != AboutStates.START ? Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(
                left: 150,
                bottom: 150,
              ),
              child: FlatButton(
                child: Icon(Icons.arrow_left, color: Colors.white, size: 50,),
                onPressed: () {
                  setState(() {
                    currentState == AboutStates.NOW ? currentState = AboutStates.MIDDLE
                        : currentState = AboutStates.START;
                  });
                },
              ),
            ),
          ) : Container(),
          currentState == AboutStates.NOW ?
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 50,
                  ),
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
                        height: 30,
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
                ),
              )
          : Container(),
          Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                child: Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: Image.asset('assets/back.png'),
                ),
                onTap: () => Navigator.of(context).pop(),
              ))
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
