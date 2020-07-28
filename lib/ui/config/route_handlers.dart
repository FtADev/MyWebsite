import 'package:MyWebsite/ui/home_page.dart';
import 'package:MyWebsite/ui/mobile/about/about.dart';
import 'package:MyWebsite/ui/mobile/mobile_const.dart';

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

