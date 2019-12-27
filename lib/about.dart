import 'package:flutter/material.dart';

import 'dynamic_card.dart';
import 'fade_in_ui.dart';

class About extends StatelessWidget {

  final String startingText = "I started programming from 2015 since I went to college. I start with C++! After some .... I tested Java! I learn it's intermidiate rules and program more efficient....";
  final String middling = "I try a bit C# as a Windows Form, too! And after one year, rolling stone, I found my goal! Mobile Developing!";
  final String now = "On 2017, with 4 of my friends made a small team and start working together with a lot of Motivation! After a year, we make the team bigger. "
      "And now I'm in ExceptionalDev Team! The best team that I ever had...";

  @override
  Widget build(BuildContext context) {
    return DynamicCard(
      child: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeIn(
              2,
              Text(
                "About Me",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'dekko'
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      FadeIn(2.5, Sampling(title: "Starting", text: startingText,)),
                      FadeIn(3, Sampling(title: "Middeling", text: middling,)),
                      FadeIn(3.5, Sampling(title: "And Now...", text: now,)),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: FadeIn(
                    1.0,
                    Stack(
                      children: [
                        FadeIn(
                          2,
                          Image.asset(
                            'assets/me.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Opacity(
                          opacity: 0.2,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: 'dekko',
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        text,
                        style: TextStyle(
                            fontFamily: 'dekko',
                            fontSize: 20
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
