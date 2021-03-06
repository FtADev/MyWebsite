import 'package:MyWebsite/ui/config/route_handlers.dart';
import 'package:fluro_fork/fluro_fork.dart';
import 'package:flutter/material.dart';

class Routes {
  static String root = "/";
  static String about = "/about";
  static String projects = "/projects/:id";

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
        });
    router.define(root, handler: rootHandler);
//    router.define(about, handler: aboutHandler);
    router.define(projects, handler: projectHandler);
  }
}
