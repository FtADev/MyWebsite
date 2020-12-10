import 'package:MyWebsite/ui/config/route_handlers.dart';
import 'package:fluro_fork/fluro_fork.dart' as fluro;
import 'package:flutter/material.dart';

class Routes {
  static String root = "/";
  static String about = "/about";
  static String projects = "/projects/:id";

  static void configureRoutes(fluro.Router router) {
    router.notFoundHandler = fluro.Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });
    router.define(root, handler: rootHandler);
//    router.define(about, handler: aboutHandler);
    router.define(projects, handler: projectHandler);
  }
}
