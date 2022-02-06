import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  PageController _pageController =
      PageController(initialPage: 0, keepPage: false);

  PageController get pageController => _pageController;

  void moveToPage(int index) => _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
}
