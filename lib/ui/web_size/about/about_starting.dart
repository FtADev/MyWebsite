import 'package:flutter/material.dart';

import 'about2.dart';
import '../../component/fade_in_ui.dart';

class AboutStaring extends StatelessWidget {
  final String startingText =
      "My programming world was created on 2015 since I went to college! I said \"Hello, World\" with C++, and learnt basics of programming with it. After that I started to learn Java. I practice more and learnt Java Core. And then I tested a bit C# as a Windows Form, too :)";

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 3,
          child: FadeIn(
            2,
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/pishi-s.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: FadeIn(
            3,
            Sampling(
              title: "Starting",
              text: startingText,
            ),
          ),
        ),
      ],
    );
  }
}
