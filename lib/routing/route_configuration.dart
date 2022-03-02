import 'package:MyWebsite/ui/404_unknown_page.dart';
import 'package:MyWebsite/ui/home/home_page.dart';
import 'package:MyWebsite/ui/projects/project_page.dart';
import 'package:flutter/material.dart';

class RouteConfiguration {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '/') {
      return MaterialPageRoute(builder: (context) => MyHomePage());
    }

    // Handle '/details/:id'
    var uri = Uri.parse(settings.name!);
    if (uri.pathSegments.length == 2 && uri.pathSegments.first == 'projects') {
      var id = uri.pathSegments[1];
      List availableProjects = ['2', '3', '4', '10'];
      if (availableProjects.contains(id))
        return MaterialPageRoute(
          builder: (context) => ProjectPage(
            id: int.parse(id),
          ),
        );
    }

    return MaterialPageRoute(builder: (context) => UnknownPage());
  }
}
