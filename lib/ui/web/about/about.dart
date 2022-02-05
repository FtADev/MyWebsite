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
    return AboutPageWidget(
      state: States.WEB,
    );
  }
}
