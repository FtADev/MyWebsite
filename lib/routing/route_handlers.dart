import 'package:MyWebsite/ui/home/home_page.dart';
import 'package:MyWebsite/ui/projects/project_page.dart';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return MyHomePage();
});

var projectHandler = Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
  final String name = params["name"][0];
  return ProjectPage(name: name);
});
