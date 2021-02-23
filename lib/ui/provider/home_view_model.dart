import 'package:MyWebsite/ui/common/states.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  States _currentState = States.HOME;

  States get currentState => _currentState;

  set currentState(States value) {
    if (value != _currentState) {
      _currentState = value;
      notifyListeners();
    }
  }

  void changeState(States state) => currentState = state;
}
