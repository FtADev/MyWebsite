import 'package:MyWebsite/ui/common/about_page.dart';
import 'package:MyWebsite/ui/common/states.dart';
import 'package:MyWebsite/ui/component/dynamic_card.dart';
import 'package:flutter/material.dart';

class WebAbout extends StatefulWidget {
  final screen;

  const WebAbout({Key? key, this.screen}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<WebAbout> {
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, keepPage: false);
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DynamicCard(
      child: Container(
        padding: EdgeInsets.all(50),
        child: AboutPageWidget(
          pageController: _pageController,
          state: States.WEB,
        ),
      ),
    );
  }
}
