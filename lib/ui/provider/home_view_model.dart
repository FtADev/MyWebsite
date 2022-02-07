import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set currentIndex(int value) {
    if (value != _currentIndex) {
      _currentIndex = value;
      notifyListeners();
    }
  }

  PageController _pageController =
      PageController(initialPage: 0, keepPage: false);

  PageController get pageController => _pageController;

  void moveToPage(int index) {
    _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    currentIndex = index;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
