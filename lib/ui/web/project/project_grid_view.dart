import 'package:MyWebsite/ui/common/states.dart';
import 'package:MyWebsite/ui/provider/projects_view_model.dart';
import 'package:flutter/material.dart';
import 'package:MyWebsite/ui/common/project_list.dart';
import 'package:MyWebsite/ui/component/dynamic_card.dart';
import 'package:MyWebsite/ui/component/fade_in_ui.dart';
import 'package:MyWebsite/ui/component/project_item.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class ProjectsGridView extends StatefulWidget {
  final Function changeState;

  const ProjectsGridView({Key? key, required this.changeState})
      : super(key: key);

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
    return DynamicCard(
      child: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeIn(
              1.5,
              Row(
                children: [
                  Text(
                    "My Projects",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'dekko'),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () => widget.changeState(States.HOME),
                    icon: Icon(
                      Icons.close,
                      color: Colors.red,
                      size: 25,
                    ),
                  ),
                ],
              ),
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
                    child: model.loading!
                        ? SkeletonGridLoader(
                            itemsPerRow: screenSize < 1000
                                ? 1
                                : screenSize < 1600
                                    ? 2
                                    : 3,
                            childAspectRatio: 3 / 1,
                            builder: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 30,
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          width: double.infinity,
                                          height: 10,
                                          color: Colors.white,
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          width: double.infinity,
                                          height: 12,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            items: projectList.length,
                            period: Duration(microseconds: 1500),
                            highlightColor: Colors.lightBlue[300]!,
                            direction: SkeletonDirection.ltr,
                          )
                        : StaggeredGridView.count(
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
      ),
    );
  }
}
