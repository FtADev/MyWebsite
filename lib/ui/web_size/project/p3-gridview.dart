import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../component/dynamic_card.dart';
import '../../component/fade_in_ui.dart';
import '../../component/project_item.dart';
import '../../mobile_size/project/project_list.dart';

class ProjectsSize3 extends StatelessWidget {
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
                "My Projects",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'dekko'),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              child:  StaggeredGridView.countBuilder(
                crossAxisCount: 6, // It's doubles of your horizontal items ! I don't know why?!
                itemCount: projectList.length,
                itemBuilder: (BuildContext context, int index) => FadeIn(
                  2.5,
                  ProjectItem(
                    title: projectList[index].title,
                    detail: projectList[index].detail,
                    image: projectList[index].image,
                    lang: projectList[index].lang,
                    colorLang: projectList[index].colorLang,
                    isTeamWork: projectList[index].isTeamWork,
                    url: projectList[index].url,
                  ),
                ),
                staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
