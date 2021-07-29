import 'package:MyWebsite/ui/common/about/about_page_widget.dart';
import 'package:MyWebsite/ui/common/states.dart';
import 'package:MyWebsite/ui/component/dynamic_card.dart';
import 'package:MyWebsite/ui/component/fade_in_ui.dart';
import 'package:flutter/material.dart';

class WebAbout extends StatelessWidget {
  final screen;
  final Function changeState;

  const WebAbout({Key? key, this.screen, required this.changeState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DynamicCard(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        child: Column(children: [
          FadeIn(
            1.5,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () => changeState(States.HOME),
                  icon: Icon(
                    Icons.close,
                    color: Colors.red,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: AboutPageWidget(
              state: States.WEB,
            ),
          ),
        ]),
      ),
    );
  }
}
