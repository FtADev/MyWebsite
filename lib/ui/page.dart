import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about_icons.dart';
import 'my_custom_shape.dart';
import 'screen.dart';

final pages = [
  PageViewModel(
      'Starting',
      'My programming world was created on 2015 since I went to college! I said \'Hello, World\' with C++, and learnt basics of programming with it. After that I started to learn Java. I practice more and learnt Java Core. And then I tested a bit C# as a Windows Form, too :)',
      false),
  PageViewModel(
      'Middling',
      'After one year, rolling stone, I found my way arround Android Developing! I started android developing with java and after some experiences I switched to Kotlin, my lovely language!',
      false),
  PageViewModel(
      'And Now...',
      'On 2017, with 4 of my friends, made a small team and start working together with a lot of Motivation! After a year, we make the team bigger. And now I\'m in ExceptionalDev Team! The best team that I ever had...',
      true),
];

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

  Page(
    this.viewModel,
    this.screen,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
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
