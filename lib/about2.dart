import 'package:flutter/material.dart';

import 'about_middling.dart';
import 'about_now.dart';
import 'about_starting.dart';
import 'dynamic_card.dart';
import 'fade_in_ui.dart';

class About2 extends StatefulWidget {
  @override
  _About2State createState() => _About2State();
}

class _About2State extends State<About2> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: DynamicCard(
            child: Container(
              padding: EdgeInsets.all(50),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeIn(
                    2,
                    Text(
                      page == 0
                          ? "Starting"
                          : page == 1 ? "Middling" : "And Now...",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'dekko',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  page == 0
                      ? AboutStaring()
                      : page == 1 ? AboutMiddling() : AboutNow(),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: FadeIn(
            4,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                page > 0
                    ? FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {
                          setState(() {
                            if (page > 0) page--;
                          });
                        },
                        child: Icon(Icons.arrow_left, color: Colors.blue),
                      )
                    : Container(
                        width: 50,
                        height: 500,
                      ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.67,
                ),
                page < 2
                    ? FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {
                          setState(() {
                            if (page < 2) page++;
                          });
                        },
                        child: Icon(Icons.arrow_right, color: Colors.blue),
                      )
                    : Container(
                        width: 50,
                        height: 500,
                      ),
              ],
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
            ],
          ),
        ),
      ),
    );
  }
}
