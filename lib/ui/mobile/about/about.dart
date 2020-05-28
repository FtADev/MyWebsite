import 'package:MyWebsite/ui/common/about_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:page_indicator/page_indicator.dart';
import '../../../main.dart';
import '../../common/about_list.dart';

class MobileAbout extends StatefulWidget {
  final screen;

  const MobileAbout({Key key, @required this.screen}) : super(key: key);

  @override
  _MobileAboutState createState() => _MobileAboutState();
}

class _MobileAboutState extends State<MobileAbout> {
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
                    return AboutPage(pages[index], States.MOBILE);
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
