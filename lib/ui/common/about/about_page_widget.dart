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
    return Directionality(
      child: PageIndicatorContainer(
        child: PageView.builder(
            scrollDirection: Axis.vertical,
            onPageChanged: (pos) {},
            itemCount: pages.length,
            controller: _pageController,
            itemBuilder: (BuildContext context, index) =>
                AboutPage(pages[index], widget.state)),
        align: IndicatorAlign.bottom,
        length: pages.length,
        indicatorColor: Colors.purple[100]!,
        indicatorSelectorColor: Colors.purple[200]!,
        // padding: const EdgeInsets.only(bottom: 15.0),
        shape: IndicatorShape.circle(size: 10.0),
      ),
      textDirection: TextDirection.ltr,
    );
  }
}
