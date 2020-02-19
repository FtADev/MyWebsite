import 'package:flutter/material.dart';

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
                        : "Now",
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
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 150,
                vertical: 150,
              ),
              child: FlatButton(
                child: Icon(Icons.arrow_right, color: Colors.white, size: 50,),
                onPressed: () {
                  setState(() {
                    currentState == AboutStates.START ? currentState = AboutStates.MIDDLE
                        : currentState == AboutStates.MIDDLE ? currentState = AboutStates.NOW
                        : currentState = AboutStates.START;
                  });
                },
              ),
            ),
          ),
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
}
