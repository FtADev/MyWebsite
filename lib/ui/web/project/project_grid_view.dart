import 'package:MyWebsite/ui/config/routes.dart';
import 'package:flutter/material.dart';
import 'package:MyWebsite/ui/common/project_list.dart';
import 'package:MyWebsite/ui/component/dynamic_card.dart';
import 'package:MyWebsite/ui/component/fade_in_ui.dart';
import 'package:MyWebsite/ui/component/project_item.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProjectsGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenSize = MediaQuery.of(context).size.width;
    return DynamicCard(
        child: Container(
      padding: EdgeInsets.all(50),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Projects",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'dekko'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: StaggeredGridView.count(
                crossAxisCount: screenSize < 1000
                    ? 2 : screenSize < 1600 ? 4 : 6,
                padding: const EdgeInsets.all(2.0),
                children: projectList.map<Widget>((item) => ProjectItem(
                    title: item.title,
                    detail: item.detail,
                    image: item.image,
                    lang: item.lang,
                    colorLang: item.colorLang,
                    isTeamWork: item.isTeamWork,
                    url: item.url,
                  )).toList(),

                staggeredTiles: projectList
                    .map<StaggeredTile>((_) => StaggeredTile.fit(2))
                    .toList(),
                mainAxisSpacing: 3.0,
                crossAxisSpacing: 2.0,
              ),
            ),
          ],),
    ),);
  }
}
