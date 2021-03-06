import 'package:flutter/material.dart';
import 'package:MyWebsite/ui/common/project_list.dart';
import 'package:MyWebsite/ui/component/dynamic_card.dart';
import 'package:MyWebsite/ui/component/fade_in_ui.dart';
import 'package:MyWebsite/ui/component/project_item_mob.dart';

class ProjectsSize1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicCard(
      child: Container(
        padding: EdgeInsets.all(30),
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
      ),
    );
  }
}
