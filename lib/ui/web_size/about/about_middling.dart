import 'package:flutter/material.dart';

import 'about2.dart';
import '../../component/fade_in_ui.dart';

class AboutMiddling extends StatelessWidget {
  final String middling =
      "After one year, rolling stone, I found my way, Android Developing! I started android developing with java and after some experiences I switched to Kotlin, my lovely language!";

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: FadeIn(
            3,
            Sampling(
              title: "Middling",
              text: middling,
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 3,
          child: FadeIn(
            2,
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/pishi-m.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
