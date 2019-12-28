import 'package:flutter/material.dart';

import 'ability_list.dart';
import 'fade_in_ui.dart';
import 'other_components.dart';
import 'wave_view.dart';

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
                    height: MediaQuery.of(context).size.height * 0.4,
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
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 16, right: 8, top: 16),
                    child: Container(
                      width: 60,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(80.0),
                            bottomLeft: Radius.circular(80.0),
                            bottomRight: Radius.circular(80.0),
                            topRight: Radius.circular(80.0)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              offset: const Offset(2, 2),
                              blurRadius: 4),
                        ],
                      ),
                      child: WaveView(),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
