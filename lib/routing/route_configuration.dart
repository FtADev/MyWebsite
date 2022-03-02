import 'package:MyWebsite/routing/path.dart';
import 'package:MyWebsite/ui/404_unknown_page.dart';
import 'package:MyWebsite/ui/about/about_list.dart';
import 'package:MyWebsite/ui/about/about_page.dart';
import 'package:MyWebsite/ui/common/states.dart';
import 'package:MyWebsite/ui/common/web_const.dart';
import 'package:MyWebsite/ui/home/home_page.dart';
import 'package:MyWebsite/ui/projects/project_page.dart';
import 'package:MyWebsite/ui/projects/projects_list_page.dart';
import 'package:flutter/material.dart';

class RouteConfiguration {
  /// List of [Path] to for route matching. When a named route is pushed with
  /// [Navigator.pushNamed], the route name is matched with the [Path.pattern]
  /// in the list below. As soon as there is a match, the associated builder
  /// will be returned. This means that the paths higher up in the list will
  /// take priority.
  static List<Path> paths = [
    Path(
      r'^' + MyHomePage.route,
      (context, match) => MyHomePage(),
    ),
    Path(
      r'^' + AboutPage.route,
      (context, match) => AboutPage(pages[3], States.WEB),
    ),
    Path(
      r'^' + ProjectsListPage.route,
      (context, match) => ProjectsListPage(screen: WebConst()),
    ),
    Path(
      r'^' + ProjectPage.baseRoute + r'/([\w-]+)$',
      (context, match) => ProjectsListPage.findProject(match),
    ),
  ];

  /// The route generator callback used when the app is navigated to a named
  /// route. Set it on the [MaterialApp.onGenerateRoute] or
  /// [WidgetsApp.onGenerateRoute] to make use of the [paths] for route
  /// matching.
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
            builder: (context) => ProjectPage(id: int.parse(id)));
    }

    return MaterialPageRoute(builder: (context) => UnknownPage());

    //   for (Path path in paths) {
    //     final regExpPattern = RegExp(path.pattern);
    //     if (regExpPattern.hasMatch(settings.name!)) {
    //       final firstMatch = regExpPattern.firstMatch(settings.name!);
    //       final match = (firstMatch?.groupCount == 1) ? firstMatch?.group(1) : null;
    //       return MaterialPageRoute<void>(
    //         builder: (context) => path.builder(context, match),
    //         settings: settings,
    //       );
    //     }
    //   }
    //
    //   // If no match was found, we let [WidgetsApp.onUnknownRoute] handle it.
    //   return null;
  }
}
