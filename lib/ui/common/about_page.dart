import 'package:flutter/material.dart';
import 'package:MyWebsite/ui/mobile/about/page.dart';
import 'package:MyWebsite/ui/web/about/page.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';
import 'screen.dart';

class PageViewModel {
  final String title;
  final String text;
  final bool isLastPage;

  PageViewModel(
    this.title,
    this.text,
    this.isLastPage,
  );
}

class AboutPage extends StatelessWidget {
  final PageViewModel viewModel;
  final States state;

  AboutPage(
    this.viewModel,
    this.state,
  );

  @override
  Widget build(BuildContext context) {
    return (state == States.MOBILE)
        ? MobileAboutPage(
            viewModel: viewModel,
          )
        : WebAboutPage(
            viewModel: viewModel,
          );
  }
}

siteLauncher() async {
  const url = 'https://expteam.ir/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

githubLauncher() async {
  const url = 'https://github.com/FtADev/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

gitlabLauncher() async {
  const url = 'https://gitlab.com/FtADev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

telegramLauncher() async {
  const url = 'https://t.me/ftadev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
