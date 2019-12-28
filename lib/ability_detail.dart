import 'package:flutter/material.dart';

import 'ability_list.dart';
import 'fade_in_ui.dart';
import 'other_components.dart';

class AbilityDetail extends StatelessWidget {
  final int index;

  const AbilityDetail({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FadeIn(
                1.0,
                FadeIn(
                  2,
                  Image.asset(
                    abilitiesList[index].iconPath,
                    height: MediaQuery.of(context).size.height * 0.3,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 4,
              child: Column(
                children: <Widget>[
                  FadeIn(2.5, CardPlaceholder()),
                  FadeIn(3, CardPlaceholder()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
