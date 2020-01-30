import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../component/fade_in_ui.dart';

class New extends StatefulWidget {
  @override
  _About2State createState() => _About2State();
}

class _About2State extends State<New> with TickerProviderStateMixin {
  int page = 0;
  AnimationController animationController;
  Animation<double> animation;

  final String startingText =
      "My programming world was created on 2015 since I went to college! I said \"Hello, World\" with C++, and learnt basics of programming with it. After that I started to learn Java. I practice more and learnt Java Core. And then I tested a bit C# as a Windows Form, too :)";
  final String middling =
      "After one year, rolling stone, I found my way, Android Developing! I started android developing with java and after some experiences I switched to Kotlin, my lovely language!";
  final String now =
      "On 2017, with 4 of my friends, made a small team and start working together with a lot of Motivation! After a year, we make the team bigger. And now I'm in ExceptionalDev Team! The best team that I ever had...";

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 3000), vsync: this);
    animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Image.asset(
            "assets/pishi-s.jpg",
            fit: BoxFit.fitWidth,
          ),
        ),
//        Align(
//          alignment: Alignment.topCenter,
//          child: RepaintBoundary(
//            child: Container(
//              width: MediaQuery.of(context).size.width,
//              height: MediaQuery.of(context).size.height * 0.7,
//              decoration: BoxDecoration(
//                color: Colors.blue,
//                image: DecorationImage(
//                  image: AssetImage(
//                    'assets/pishi-s.jpg',
//                  ),
//                  fit: BoxFit.fitWidth
//                ),
//              ),
//            ),
//          ),
//        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(110),
              ),
              color: Colors.white,
            ),
            child: FadeIn(
              3,
              Sampling(
                title: "Starting",
                text: startingText,
              ),
            ),
          ),
        ),
        ScaleTransition(
          scale: Tween<double>(begin: 0.9, end: 1.0).animate(
            CurvedAnimation(
              parent: animationController,
              curve: Interval(0.1, 1.0, curve: Curves.fastOutSlowIn),
            ),
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.all(20),
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Sampling extends StatelessWidget {
  final String title;
  final String text;

  const Sampling({Key key, this.text, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
//                    Text(
//                      title,
//                      style: TextStyle(
//                          fontFamily: 'dekko',
//                          fontWeight: FontWeight.bold,
//                          fontSize: 25),
//                    ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  text,
                  style: TextStyle(fontFamily: 'dekko', fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
