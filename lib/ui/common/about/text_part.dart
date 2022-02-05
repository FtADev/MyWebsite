import 'package:MyWebsite/ui/common/about/about_page_model.dart';
import 'package:MyWebsite/ui/common/screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TextPartWidget extends StatelessWidget {
  final Screen screen;
  final AboutPageModel model;

  const TextPartWidget({
    Key? key,
    required this.screen,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: screen.bioFont3,
            fontFamily: 'dekko',
          ),
        ),
        SizedBox(
          height: screen.boxSizeMedium,
        ),
        Text(
          model.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: screen.flatBtnFont,
            fontFamily: 'dekko',
          ),
        ),
        SizedBox(height: screen.boxSizeLarge),
        model.isLastPage
            ? Center(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/network/email.png',
                                width: screen.iconSize,
                                height: screen.iconSize,
                                fit: BoxFit.fitWidth,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'akhlaghi.fatemeh@gmail.com',
                                style: TextStyle(
                                  fontFamily: 'dekko',
                                  fontSize: screen.flatBtnFont,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          onTap: mailLauncher,
                        ),
                      ),
                      SizedBox(
                        height: screen.boxSizeMedium,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50.0),
                                    ),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white,
                                    )),
                                child: Image.asset(
                                  'assets/network/github.png',
                                  width: screen.iconSize,
                                  height: screen.iconSize,
                                ),
                              ),
                              onTap: githubLauncher,
                            ),
                          ),
                          SizedBox(
                            width: screen.boxSizeLarge,
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              child: Image.asset(
                                'assets/network/linkedin.png',
                                width: screen.iconSize,
                                height: screen.iconSize,
                              ),
                              onTap: linkedInLauncher,
                            ),
                          ),
                          SizedBox(
                            width: screen.boxSizeLarge,
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              child: Image.asset(
                                'assets/network/telegram.png',
                                width: screen.iconSize,
                                height: screen.iconSize,
                              ),
                              onTap: telegramLauncher,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}

Future githubLauncher() async {
  const url = 'https://github.com/FtADev/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future telegramLauncher() async {
  const url = 'https://t.me/ftadev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future linkedInLauncher() async {
  const url = 'https://www.linkedin.com/in/fatemeh-akhlaghi-6a211615b';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future mailLauncher() async {
  const url = 'mailto:akhlaghi.fatemeh@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
