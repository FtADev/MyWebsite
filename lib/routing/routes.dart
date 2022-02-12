import 'package:MyWebsite/routing/route_handlers.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  static String root = "/";
  static String projects = "/projects/:name";

  static void configureRoutes(FluroRouter  router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });

    router.define(root, handler: rootHandler);
    router.define(projects, handler: projectHandler);
  }
}