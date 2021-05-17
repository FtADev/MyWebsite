import 'package:MyWebsite/ui/common/about_page.dart';
import 'package:MyWebsite/ui/common/states.dart';
import 'package:MyWebsite/ui/component/dynamic_card.dart';
import 'package:flutter/material.dart';

class WebAbout extends StatelessWidget {
  final screen;

  const WebAbout({Key? key, this.screen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DynamicCard(
      child: Container(
        padding: EdgeInsets.all(50),
        child: AboutPageWidget(
          state: States.WEB,
        ),
      ),
    );
  }
}
