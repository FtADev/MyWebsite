import 'package:flutter/material.dart';

import '../../component/fade_in_ui.dart';
import '../../component/project_item_mob.dart';
import 'project_list.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Projects", style: TextStyle(fontFamily: 'dekko',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          child: Container(
            child: Icon(Icons.chevron_left, color: Colors.grey[600],),
          ),
          onTap: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: ListView.builder(
          itemCount: projectList.length,
          itemBuilder: (context, index) {
            return FadeIn(
              index + 0.5,
              ProjectItem(
                title: projectList[index].title,
                detail: projectList[index].detail,
                image: projectList[index].image,
                lang: projectList[index].lang,
                colorLang: projectList[index].colorLang,
                isTeamWork: projectList[index].isTeamWork,
                url: projectList[index].url,
              ),
            );
          },
        ),


//        SingleChildScrollView(
//          child: Column(
//            mainAxisSize: MainAxisSize.min,
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: [
//              FadeIn(
//                2.5,
//                ProjectItem(
//                  title: projectList[0].title,
//                  detail: projectList[0].detail,
//                  image: projectList[0].image,
//                  lang: projectList[0].lang,
//                  colorLang: projectList[0].colorLang,
//                  isTeamWork: projectList[0].isTeamWork,
//                  url: projectList[0].url,
//                ),
//              ),
//              FadeIn(3, ProjectItem(
//                title: projectList[6].title,
//                detail: projectList[6].detail,
//                image: projectList[6].image,
//                lang: projectList[6].lang,
//                colorLang: projectList[6].colorLang,
//                isTeamWork: projectList[6].isTeamWork,
//                url: projectList[6].url,
//              )),
//              FadeIn(3.5, ProjectItem(
//                title: projectList[3].title,
//                detail: projectList[3].detail,
//                image: projectList[3].image,
//                lang: projectList[3].lang,
//                colorLang: projectList[3].colorLang,
//                isTeamWork: projectList[3].isTeamWork,
//                url: projectList[3].url,
//              )),
//              FadeIn(2.5, ProjectItem(
//                title: projectList[2].title,
//                detail: projectList[2].detail,
//                image: projectList[2].image,
//                lang: projectList[2].lang,
//                colorLang: projectList[2].colorLang,
//                isTeamWork: projectList[2].isTeamWork,
//                url: projectList[2].url,
//              )),
//              FadeIn(2.5, ProjectItem(
//                title: projectList[1].title,
//                detail: projectList[1].detail,
//                image: projectList[1].image,
//                lang: projectList[1].lang,
//                colorLang: projectList[1].colorLang,
//                isTeamWork: projectList[1].isTeamWork,
//                url: projectList[1].url,
//              )),
//              FadeIn(3, ProjectItem(
//                title: projectList[4].title,
//                detail: projectList[4].detail,
//                image: projectList[4].image,
//                lang: projectList[4].lang,
//                colorLang: projectList[4].colorLang,
//                isTeamWork: projectList[4].isTeamWork,
//                url: projectList[4].url,
//              )),
//              FadeIn(3, ProjectItem(
//                title: projectList[5].title,
//                detail: projectList[5].detail,
//                image: projectList[5].image,
//                lang: projectList[5].lang,
//                colorLang: projectList[5].colorLang,
//                isTeamWork: projectList[5].isTeamWork,
//                url: projectList[5].url,
//              )),
//            ],
//          ),
//        ),
      ),
    );
  }
}
