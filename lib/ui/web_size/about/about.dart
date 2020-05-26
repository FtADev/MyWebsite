import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

import '../../../main.dart';
import '../../about_page.dart';
import '../../component/dynamic_card.dart';
import 'about_list.dart';

class About extends StatefulWidget {
  final screen;

  const About({Key key, this.screen}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  PageController _pageController;

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
    return DynamicCard(
      child: Container(
        padding: EdgeInsets.all(50),
        child:  Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Directionality(
              child: PageIndicatorContainer(
                child: PageView.builder(
                    onPageChanged: (pos) {},
                    itemCount: pages.length,
                    controller: _pageController,
                    itemBuilder: (BuildContext context, index) {
                      return AboutPage(pages[index], widget.screen, States.WEB);
                    }),
                align: IndicatorAlign.bottom,
                length: pages.length,
                indicatorColor: Colors.grey[300],
                indicatorSelectorColor: Colors.grey,
                padding: const EdgeInsets.only(bottom: 36.0),
                shape: IndicatorShape.circle(size: 15.0),
              ),
              textDirection: TextDirection.ltr,
            ),
          ),
        ]),
      ),
    );
  }
}
