import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../common/screen.dart';
import '../common/styles.dart';

class InformationPart extends StatelessWidget {
  final Screen screen;

  const InformationPart({Key? key, required this.screen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
                    const SizedBox(width: 10),
                    const Text(
                      'akhlaghi.fatemeh@gmail.com',
                      style: Styles.email,
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
                    child: Image.asset(
                      'assets/network/github.png',
                      width: screen.iconSize,
                      height: screen.iconSize,
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
                SizedBox(
                  width: screen.boxSizeLarge,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    child: Image.asset(
                      'assets/network/cv.png',
                      width: screen.iconSize,
                      height: screen.iconSize,
                    ),
                    onTap: cvLauncher,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
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
    const url = 'https://www.linkedin.com/in/fatemeh-akhlaghi';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future cvLauncher() async {
    const url =
        'https://drive.google.com/file/d/1Uh527WQecgft57pILoLBuutVaZLkrB1G/view?usp=sharing';
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
}
