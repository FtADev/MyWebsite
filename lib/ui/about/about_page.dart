import 'package:MyWebsite/ui/about/about_page_model.dart';
import 'package:MyWebsite/ui/about/mobile/page.dart';
import 'package:MyWebsite/ui/about/web/page.dart';
import 'package:MyWebsite/ui/common/states.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static const String route = '/about';

  final AboutPageModel model;
  final States state;

  AboutPage(
    this.model,
    this.state,
  );

  @override
  Widget build(BuildContext context) {
    return (state == States.MOBILE)
        ? MobileAboutPage(
            model: model,
          )
        : WebAboutPage(
            model: model,
          );
  }
}
