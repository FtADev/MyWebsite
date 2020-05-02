import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';
import 'about_icons.dart';
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

class Page extends StatelessWidget {
  final PageViewModel viewModel;
  final Screen screen;
  final States state;

  Page(
    this.viewModel,
    this.screen,
      this.state,
  );

  @override
  Widget build(BuildContext context) {
    return (state == States.MOBILE) ?
      Column(
      children: <Widget>[
        AboutTop(screen: screen,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: screen.hPaddingAbout),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                viewModel.title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: screen.titleAbout,
                  fontFamily: 'dekko',
                ),
              ),
              SizedBox(
                height: screen.sizedBox15,
              ),
              Text(
                viewModel.text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screen.textAbout,
                  fontFamily: 'dekko',
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: screen.sizedBox),
        viewModel.isLastPage
            ? Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/gmail.png',
                          width: screen.icon2About,
                          height: screen.icon2About,
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(width: screen.sizedBox10),
                        Text(
                          'akhlaghi.fatemeh@gmail.com',
                          style: TextStyle(
                              fontFamily: 'dekko',
                              fontSize: screen.textAbout,
                              color: Colors.black),
                        )
                      ],
                    ),
                    SizedBox(
                      height: screen.sizedBox15,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.0)),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.white,
                                )),
                            child: Image.asset(
                              'assets/github.png',
                              width: screen.iconAbout,
                              height: screen.iconAbout,
                            ),
                          ),
                          onTap: githubLauncher,
                        ),
                        SizedBox(
                          width: screen.sizedBox,
                        ),
                        InkWell(
                          child: Image.asset(
                            'assets/gitlab.png',
                            width: screen.iconAbout,
                            height: screen.iconAbout,
                          ),
                          onTap: gitlabLauncher,
                        ),
                        SizedBox(
                          width: screen.sizedBox,
                        ),
                        InkWell(
                          child: Image.asset(
                            'assets/telegram.png',
                            width: screen.iconAbout,
                            height: screen.iconAbout,
                          ),
                          onTap: telegramLauncher,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : Container(),
      ],
    )
    : Row(
      children: <Widget>[
        Expanded(
            flex: 1,
            child: AboutTop(screen: screen,)),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  viewModel.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: screen.titleAbout,
                    fontFamily: 'dekko',
                  ),
                ),
                SizedBox(
                  height: screen.sizedBox15,
                ),
                Text(
                  viewModel.text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: screen.textAbout,
                    fontFamily: 'dekko',
                  ),
                ),
                SizedBox(height: screen.sizedBox),
                viewModel.isLastPage
                    ? Center(
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/gmail.png',
                              width: screen.icon2About,
                              height: screen.icon2About,
                              fit: BoxFit.fitWidth,
                            ),
                            SizedBox(width: screen.sizedBox10),
                            Text(
                              'akhlaghi.fatemeh@gmail.com',
                              style: TextStyle(
                                  fontFamily: 'dekko',
                                  fontSize: screen.textAbout,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        SizedBox(
                          height: screen.sizedBox15,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(50.0)),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white,
                                    )),
                                child: Image.asset(
                                  'assets/github.png',
                                  width: screen.iconAbout,
                                  height: screen.iconAbout,
                                ),
                              ),
                              onTap: githubLauncher,
                            ),
                            SizedBox(
                              width: screen.sizedBox,
                            ),
                            InkWell(
                              child: Image.asset(
                                'assets/gitlab.png',
                                width: screen.iconAbout,
                                height: screen.iconAbout,
                              ),
                              onTap: gitlabLauncher,
                            ),
                            SizedBox(
                              width: screen.sizedBox,
                            ),
                            InkWell(
                              child: Image.asset(
                                'assets/telegram.png',
                                width: screen.iconAbout,
                                height: screen.iconAbout,
                              ),
                              onTap: telegramLauncher,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
                    : Container(),
              ],
            ),
          ),
        ),
      ],
    )
    ;
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
}
