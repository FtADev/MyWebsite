import 'package:flutter/material.dart';

import '../../component/dynamic_card.dart';
import '../../component/fade_in_ui.dart';
import '../../component/other_components.dart';

class Projects extends StatelessWidget {
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
                "My Projects",
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
                  flex: 1,
                  child: Column(
                    children: [
                      FadeIn(2.5, CardPlaceholder()),
                      FadeIn(3, CardPlaceholder()),
                      FadeIn(3.5, CardPlaceholder()),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      FadeIn(2.5, CardPlaceholder()),
                      FadeIn(3, CardPlaceholder()),
                      FadeIn(3.5, CardPlaceholder()),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      FadeIn(2.5, CardPlaceholder()),
                      FadeIn(3, CardPlaceholder()),
                      FadeIn(3.5, CardPlaceholder()),
                    ],
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
