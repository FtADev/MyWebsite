import 'package:flutter/material.dart';
import 'package:MyWebsite/ui/common/project_list.dart';
import 'package:MyWebsite/ui/component/fade_in_ui.dart';
import 'package:MyWebsite/ui/component/project_item_mob.dart';

class Projects extends StatelessWidget {
  final screen;

  const Projects({Key key, @required this.screen}) : super(key: key);

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
      ),
    );
  }
}
