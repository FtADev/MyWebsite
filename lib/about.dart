import 'package:flutter/material.dart';

import 'dynamic_card.dart';
import 'fade_in_ui.dart';
import 'other_components.dart';

class About extends StatelessWidget {
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
                      FadeIn(2.5, CardPlaceholder()),
                      FadeIn(3, CardPlaceholder()),
                      FadeIn(3.5, CardPlaceholder()),
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
