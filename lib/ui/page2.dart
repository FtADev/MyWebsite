import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:page_indicator/page_indicator.dart';
import 'page.dart';

class Page2 extends StatefulWidget {
  final screen;

  const Page2({Key key, @required this.screen}) : super(key: key);

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
      appBar: AppBar(
        title: Text((MediaQuery.of(context).size.width < 600) ? "About Me" : "", style: TextStyle(fontFamily: 'dekko', fontSize: widget.screen.bioFont3, fontWeight: FontWeight.bold, color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          child: Container(
            child: Icon(Icons.chevron_left, color: Colors.grey[600],),
          ),
          onTap: () => Navigator.of(context).pop(),
        ),
      ),
      body: Stack(children: [
        Align(
          alignment: Alignment.topCenter,
          child: Directionality(
            child: PageIndicatorContainer(
              child: PageView.builder(
                  onPageChanged: (pos) {},
                  itemCount: pages.length,
                  controller: _pageController,
                  itemBuilder: (BuildContext context, index) {
                    return Page(pages[index], widget.screen);
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
    );
  }
}
