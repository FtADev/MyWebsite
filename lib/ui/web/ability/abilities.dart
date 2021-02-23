import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:MyWebsite/ui/component/dynamic_card.dart';
import 'package:MyWebsite/ui/component/fade_in_ui.dart';

import 'ability_card.dart';
import 'ability_detail.dart';
import 'ability_list.dart';

class Abilities extends StatefulWidget {

  @override
  _AbilitiesState createState() => _AbilitiesState();
}

class _AbilitiesState extends State<Abilities> {
  int index = 0;

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
                      "My Abilities",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'dekko',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  FadeIn(
                    2.5,
                    AbilityDetail(
                      index: index,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(bottom: 60),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [..._makeCard()]),
            ),
          ),
        ),
      ],
    );
  }

  _makeCard() {
    List<Widget> list = [];
    double delay = 2.5;
    list.add(SizedBox(width: 5));
    for (int i = 0; i < abilitiesList.length; i++) {
      list.add(GestureDetector(
        child: FadeIn(
          delay + 0.5,
          AbilityCard(
            name: abilitiesList[i].name,
            iconPath: abilitiesList[i].iconPath,
            moveIcon: abilitiesList[i].moveIcon,
          ),
        ),
        onTap: () {
          // setState(() {
          //   index = i;
          //   for(var ability in abilitiesList)
          //     ability.moveIcon = false;
          //   abilitiesList[i].moveIcon = true;
          // });
        },
      ));
      list.add(SizedBox(width: 5));
    }
    return list;
  }
}
