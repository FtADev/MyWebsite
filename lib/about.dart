import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'dynamic_card.dart';
import 'fade_in_ui.dart';

class About extends StatelessWidget {
  final String startingText =
      "I started programming from 2015 since I went to college. I started with C++! After ..., I tested Java! I learn it's intermediate rules and program more efficient! I tried a bit C# as a Windows Form, too";
  final String middling =
      "After one year, rolling stone, I found my way, Android Developing! I started android developing with java and after some experiences I switched to Kotlin, my lovely language!";
  final String now =
      "On 2017, with 4 of my friends, made a small team and start working together with a lot of Motivation! After a year, we make the team bigger. And now I'm in ExceptionalDev Team! The best team that I ever had...";

  @override
  Widget build(BuildContext context) {
    return DynamicCard(
      child: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeIn(
              2,
              Text(
                "About Me",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'dekko',
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.5,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          FadeIn(
                            2.5,
                            Sampling(
                              title: "Starting",
                              text: startingText,
                            ),
                          ),
                          FadeIn(
                            3,
                            Sampling(
                              title: "Middeling",
                              text: middling,
                            ),
                          ),
                          FadeIn(
                            3.5,
                            Sampling(
                              title: "And Now...",
                              text: now,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: FadeIn(
                    1.0,
                    Stack(
                      children: [
                        Column(
                          children: [
                            FadeIn(
                              2,
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/pishi.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/gmail.png',
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.fitWidth,),
                                SizedBox(width: 10,),
                                Text(
                                    'akhlaghi.fatemeh@gmail.com',
                                    style: TextStyle(
                                        fontFamily: 'dekko', fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            FadeIn(
                              2.5,
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  InkWell(
                                    child: Image.asset(
                                      'assets/github.png',
                                      width: 50,
                                      height: 50,
//                                    fit: BoxFit.fill,
                                    ),
                                    onTap: githubLauncher,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    child: Image.asset(
                                      'assets/gitlab.png',
                                      width: 50,
                                      height: 50,
//                                    fit: BoxFit.fill,
                                    ),
                                    onTap: gitlabLauncher,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    child: Image.asset(
                                      'assets/telegram.png',
                                      width: 50,
                                      height: 50,
//                                    fit: BoxFit.fill,
                                    ),
                                    onTap: telegramLauncher,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
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

class Sampling extends StatelessWidget {
  final String title;
  final String text;

  const Sampling({Key key, this.text, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: 'dekko',
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        text,
                        style: TextStyle(fontFamily: 'dekko', fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
