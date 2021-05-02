import 'package:flutter/material.dart';

class ProjectViewModel extends ChangeNotifier {
  bool? _loading;

  bool? get loading => _loading;

  set loading(bool? value) {
    _loading = value;
    notifyListeners();
  }

  Future delay() async {
    loading = true;
    await Future.delayed(Duration(seconds: 2));
    loading = false;
  }
}
