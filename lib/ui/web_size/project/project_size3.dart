import 'package:flutter/material.dart';

import '../../component/dynamic_card.dart';
import '../../component/fade_in_ui.dart';
import '../../component/project_item.dart';
import 'project_list.dart';

class ProjectsSize3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicCard(
      child: Container(
        padding: EdgeInsets.all(50),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeIn(
                2,
                Text(
                  "My Projects",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'dekko'),
                ),
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        FadeIn(
                          2.5,
                          ProjectItem(
                            title: projectList[0].title,
                            detail: projectList[0].detail,
                            image: projectList[0].image,
                            lang: projectList[0].lang,
                            colorLang: projectList[0].colorLang,
                            isTeamWork: projectList[0].isTeamWork,
                            url: projectList[0].url,
                          ),
                        ),
                        FadeIn(3, ProjectItem(
                          title: projectList[6].title,
                          detail: projectList[6].detail,
                          image: projectList[6].image,
                          lang: projectList[6].lang,
                          colorLang: projectList[6].colorLang,
                          isTeamWork: projectList[6].isTeamWork,
                          url: projectList[6].url,
                        )),
                        FadeIn(3.5, ProjectItem(
                          title: projectList[3].title,
                          detail: projectList[3].detail,
                          image: projectList[3].image,
                          lang: projectList[3].lang,
                          colorLang: projectList[3].colorLang,
                          isTeamWork: projectList[3].isTeamWork,
                          url: projectList[3].url,
                        ))
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        FadeIn(2.5, ProjectItem(
                          title: projectList[1].title,
                          detail: projectList[1].detail,
                          image: projectList[1].image,
                          lang: projectList[1].lang,
                          colorLang: projectList[1].colorLang,
                          isTeamWork: projectList[1].isTeamWork,
                          url: projectList[1].url,
                        )),
                        FadeIn(3, ProjectItem(
                          title: projectList[4].title,
                          detail: projectList[4].detail,
                          image: projectList[4].image,
                          lang: projectList[4].lang,
                          colorLang: projectList[4].colorLang,
                          isTeamWork: projectList[4].isTeamWork,
                          url: projectList[4].url,
                        )),
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        FadeIn(2.5, ProjectItem(
                          title: projectList[2].title,
                          detail: projectList[2].detail,
                          image: projectList[2].image,
                          lang: projectList[2].lang,
                          colorLang: projectList[2].colorLang,
                          isTeamWork: projectList[2].isTeamWork,
                          url: projectList[2].url,
                        )),
                        FadeIn(3, ProjectItem(
                          title: projectList[5].title,
                          detail: projectList[5].detail,
                          image: projectList[5].image,
                          lang: projectList[5].lang,
                          colorLang: projectList[5].colorLang,
                          isTeamWork: projectList[5].isTeamWork,
                          url: projectList[5].url,
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
