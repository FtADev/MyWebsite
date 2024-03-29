import 'package:MyWebsite/ui/common/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

import '../common/styles.dart';

class ProjectItem extends StatelessWidget {
  final Screen screen;
  final String? image;
  final String? title;
  final String name;
  final String? detail;
  final Color? colorLang;
  final String? lang;
  final bool? isTeamWork;
  final String? url;

  const ProjectItem({
    Key? key,
    required this.screen,
    this.image,
    this.title,
    required this.name,
    this.detail,
    this.colorLang,
    this.lang,
    this.isTeamWork,
    this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: screen.projectBottomPadding),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () =>  urlLauncher(url!),
          child: Padding(
            padding: EdgeInsets.all(screen.projectCardPadding),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: screen.projectCardPadding),
                  child: ClipOval(
                    child: SizedBox(
                      // color:
                      //     (image == null) ? Colors.grey.shade300 : Colors.white,
                      width: 50,
                      height: 50,
                      child:
                          (image != null) ? Image.asset(image!) : Container(),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        (title != null) ? title! : "Project Title",
                        style: Styles.project2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        (detail != null)
                            ? detail!
                            : "Lorem Ipsum is simply dummy text of remaining of all.",
                        style: Styles.project3,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            width: screen.projectTeamWorkSize,
                            height: screen.projectTeamWorkSize,
                            decoration: BoxDecoration(
                              color: (colorLang != null)
                                  ? colorLang
                                  : Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            width: screen.projectLangSpace,
                          ),
                          Text(
                            (lang != null) ? lang! : "Language",
                            style: Styles.project4,
                          ),
                          SizedBox(
                            width: screen.projectSpace,
                          ),
                          (isTeamWork != null && isTeamWork!)
                              ? Container(
                                  width: screen.projectTeamWorkSize,
                                  height: screen.projectTeamWorkSize,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                )
                              : Container(),
                          SizedBox(
                            width: screen.projectLangSpace,
                          ),
                          (isTeamWork != null && isTeamWork!)
                              ? Text(
                                  "Team Work",
                                  style: Styles.project4,
                                )
                              : Container()
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  urlLauncher(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
