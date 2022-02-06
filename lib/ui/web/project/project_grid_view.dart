import 'package:MyWebsite/ui/common/states.dart';
import 'package:MyWebsite/ui/provider/projects_view_model.dart';
import 'package:flutter/material.dart';
import 'package:MyWebsite/ui/common/project/project_list.dart';
import 'package:MyWebsite/ui/component/dynamic_card.dart';
import 'package:MyWebsite/ui/component/fade_in_ui.dart';
import 'package:MyWebsite/ui/component/project_item.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

class ProjectsGridView extends StatefulWidget {
  const ProjectsGridView({
    Key? key,
  }) : super(key: key);

  @override
  _ProjectsGridViewState createState() => _ProjectsGridViewState();
}

class _ProjectsGridViewState extends State<ProjectsGridView> {
  ProjectViewModel viewModel = ProjectViewModel();

  @override
  void initState() {
    super.initState();
    viewModel.delay();
  }

  @override
  Widget build(BuildContext context) {
    final double screenSize = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "My Projects",
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'dekko'),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ChangeNotifierProvider<ProjectViewModel>(
              create: (context) => viewModel,
              child: Consumer<ProjectViewModel>(
                builder: (BuildContext context, ProjectViewModel model,
                        Widget? child) =>
                    Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: StaggeredGridView.count(
                    crossAxisCount: screenSize < 1000
                        ? 2
                        : screenSize < 1600
                            ? 4
                            : 6,
                    padding: const EdgeInsets.all(2.0),
                    children: projectList
                        .map<Widget>(
                          (item) => ProjectItem(
                            title: item.title,
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
            ),
          ),
        ],
      ),
    );
  }
}
