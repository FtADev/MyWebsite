import 'package:MyWebsite/ui/about/about_list.dart';
import 'package:MyWebsite/ui/about/about_page_model.dart';
import 'package:MyWebsite/ui/common/screen.dart';
import 'package:MyWebsite/ui/common/states.dart';
import 'package:MyWebsite/ui/component/fade_in_ui.dart';
import 'package:MyWebsite/ui/about/mobile/page.dart';
import 'package:MyWebsite/ui/about/web/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
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


