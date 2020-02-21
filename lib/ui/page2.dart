import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:page_indicator/page_indicator.dart';
import 'page.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 10, top: 20),
                child: Icon(Icons.chevron_left, color: Colors.grey[600], size: 30,),
              ),
              onTap: () => Navigator.of(context).pop(),
            )
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Directionality(
              child: PageIndicatorContainer(
                child: PageView.builder(
                    onPageChanged: (pos) {},
                    itemCount: pages.length,
                    controller: _pageController,
                    itemBuilder: (BuildContext context, index) {
                      return Page(pages[index]);
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
        ),
      ]),
    );
  }
}
