import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about2.dart';
import 'fade_in_ui.dart';

class AboutNow extends StatelessWidget {
  final String now =
      "On 2017, with 4 of my friends, made a small team and start working together with a lot of Motivation! After a year, we make the team bigger. And now I'm in ExceptionalDev Team! The best team that I ever had...";

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 3,
          child: FadeIn(
            2,
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/pishi-n.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              FadeIn(
              3,
              Sampling(
                title: "And Now...",
                text: now,
              ),
            ),
              SizedBox(height: 20),
              FadeIn(
                3.5,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/gmail.png',
                      width: 25,
                      height: 25,
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'akhlaghi.fatemeh@gmail.com',
                      style: TextStyle(
                        fontFamily: 'dekko',
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FadeIn(
                    4,
                    InkWell(
                      child: Image.asset(
                        'assets/github.png',
                        width: 50,
                        height: 50,
                      ),
                      onTap: githubLauncher,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FadeIn(
                    4.5,
                    InkWell(
                      child: Image.asset(
                        'assets/gitlab.png',
                        width: 50,
                        height: 50,
                      ),
                      onTap: gitlabLauncher,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FadeIn(
                    5,
                    InkWell(
                      child: Image.asset(
                        'assets/telegram.png',
                        width: 50,
                        height: 50,
                      ),
                      onTap: telegramLauncher,
                    ),
                  ),
                ],
              ),
    ],
          ),
        ),
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
