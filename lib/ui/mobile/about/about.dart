import 'package:MyWebsite/ui/common/about_page.dart';
import 'package:MyWebsite/ui/common/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MobileAbout extends StatefulWidget {
  final screen;

  const MobileAbout({Key? key, required this.screen}) : super(key: key);

  @override
  _MobileAboutState createState() => _MobileAboutState();
}

class _MobileAboutState extends State<MobileAbout> {
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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About Me",
          style: TextStyle(
            fontFamily: 'dekko',
            fontSize: widget.screen.bioFont3,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          child: Container(
            child: Icon(
              Icons.chevron_left,
              color: Colors.grey[600],
            ),
          ),
          onTap: () => Navigator.of(context).pop(),
        ),
      ),
      body: AboutPageWidget(
        pageController: _pageController,
        state: States.MOBILE,
      ),
    );
  }
}
