import 'package:MyWebsite/ui/common/screen.dart';
import 'package:MyWebsite/ui/projects/project_item.dart';
import 'package:MyWebsite/ui/projects/project_list.dart';
import 'package:MyWebsite/ui/projects/project_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProjectsListPage extends StatelessWidget {
  final Screen screen;

  const ProjectsListPage({Key? key, required this.screen}) : super(key: key);

  static Widget findProject(String? name) {
    for (ProjectModel project in projectList)
      if (project.name == name) return ProjectPage(id: project.id);
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    final double screenSize = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(screen.projectWholePadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screen.projectAboveSpace,
          ),
          Text(
            "My Projects",
            style: TextStyle(
                fontSize: screen.bioFont3,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'dekko'),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: StaggeredGridView.count(
                crossAxisCount: screenSize < 600
                    ? 1
                    : screenSize < 1000
                        ? 2
                        : screenSize < 1600
                            ? 4
                            : 6,
                padding: const EdgeInsets.all(2.0),
                children: projectList
                    .map<Widget>(
                      (item) => ProjectItem(
                        screen: screen,
                        title: item.title,
                        name: item.name,
                        detail: item.detail,
                        image: item.image,
                        lang: item.lang,
                        colorLang: item.colorLang,
                        isTeamWork: item.isTeamWork,
                        url: item.url,
                      ),
                    )
                    .toList(),
                staggeredTiles: projectList
                    .map<StaggeredTile>((_) => StaggeredTile.fit(2))
                    .toList(),
                mainAxisSpacing: 3.0,
                crossAxisSpacing: 2.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
