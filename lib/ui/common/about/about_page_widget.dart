import 'package:MyWebsite/ui/common/states.dart';
import 'package:MyWebsite/ui/component/fade_in_ui.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

import 'about_list.dart';
import 'about_page.dart';

class AboutPageWidget extends StatefulWidget {
  final States state;

  const AboutPageWidget({Key? key, required this.state}) : super(key: key);

  @override
  _AboutPageWidgetState createState() => _AboutPageWidgetState();
}

class _AboutPageWidgetState extends State<AboutPageWidget> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, keepPage: false);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AboutPage(pages[2], widget.state);
  }
}
