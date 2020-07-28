import 'package:MyWebsite/ui/home_page.dart';
import 'package:MyWebsite/ui/mobile/about/about.dart';
import 'package:MyWebsite/ui/mobile/mobile_const.dart';
import 'package:MyWebsite/ui/other_projects.dart';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return MyHomePage();
});

var aboutHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return MobileAbout(
        screen: MobileConst(),
      );
    });

var projectHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  final int id = int.parse(params["id"][0]);
  return OtherProjects(id: id);
});
