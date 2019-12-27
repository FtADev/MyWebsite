import 'package:flutter/material.dart';

import 'ability_card.dart';
import 'dynamic_card.dart';
import 'fade_in_ui.dart';

class Abilities extends StatelessWidget {


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
                "My Abilities",
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
                      FadeIn(2.5, AbilityCard(name: "Android", iconPath: "assets/android.png")),
                      FadeIn(3, AbilityCard(name: "GNU/Linux", iconPath: "assets/gnulin.png")),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      FadeIn(3, AbilityCard(name: "Flutter", iconPath: "assets/flutter.png")),
                      FadeIn(3.5, AbilityCard(name: "Git", iconPath: "assets/git.jpeg")),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      FadeIn(3.5, AbilityCard(name: "Kotlin", iconPath: "assets/kotlin.png")),
                      FadeIn(2.5, AbilityCard(name: "Mysql", iconPath: "assets/mysql.png")),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      FadeIn(2.5, AbilityCard(name: "Java", iconPath: "assets/java.png")),
                      FadeIn(3, AbilityCard(name: "IoT", iconPath: "assets/iot.png")),
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

class AbilityModel {
  String name;
  String iconPath;

  AbilityModel({this.name, this.iconPath});
}
