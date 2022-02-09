import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectItem extends StatelessWidget {
  final String? image;
  final String? title;
  final String? detail;
  final Color? colorLang;
  final String? lang;
  final bool? isTeamWork;
  final String? url;

  const ProjectItem(
      {Key? key,
      this.image,
      this.title,
      this.detail,
      this.colorLang,
      this.lang,
      this.isTeamWork,
      this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: GestureDetector(
        onTap: () => urlLauncher(url!),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: ClipOval(
                    child: Container(
                      color: (image == null) ? Colors.grey.shade300 : Colors.white,
                      width: 50,
                      height: 50,
                      child: (image != null) ? Image.asset(image!) : Container(),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text((title != null) ? title! : "Project Title",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'dekko',
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        (detail != null)
                            ? detail!
                            : "Lorem Ipsum is simply dummy text of remaining of all.",
                        style: TextStyle(fontSize: 16, fontFamily: 'dekko'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                              color:
                                  (colorLang != null) ? colorLang : Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            (lang != null) ? lang! : "Language",
                            style: TextStyle(fontSize: 14, fontFamily: 'dekko'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          (isTeamWork != null && isTeamWork!)
                              ? Container(
                                  width: 5,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                  ),
                                )
                              : Container(),
                          SizedBox(
                            width: 3,
                          ),
                          (isTeamWork != null && isTeamWork!)
                              ? Text(
                                  "Team Work",
                                  style: TextStyle(
                                      fontSize: 14, fontFamily: 'dekko'),
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
