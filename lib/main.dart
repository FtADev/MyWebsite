import 'package:MyWebsite/routing/route_configuration.dart';
import 'package:MyWebsite/ui/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  // setPathUrlStrategy(); // Comment for firebase hosting
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FtaDev',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'dekko'
      ),
      initialRoute: MyHomePage.route,
      onGenerateRoute: RouteConfiguration.onGenerateRoute,
    );
  }
}
