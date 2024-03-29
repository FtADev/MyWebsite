import 'package:MyWebsite/ui/background/fancy_background.dart';
import 'package:MyWebsite/ui/common/styles.dart';
import 'package:MyWebsite/ui/projects/project_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProjectPage extends StatelessWidget {
  static const String baseRoute = '/projects';
  static String Function(String name) routeFromName =
      (String name) => baseRoute + '/$name';

  final ProjectModel project;

  const ProjectPage({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenSize = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(children: [
        FancyBackgroundApp(),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        project.title,
                        style: Styles.project1,
                      ),
                      Text(
                        project.otherDetail!,
                        style: Styles.project3,
                      ),
                    ]),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: StaggeredGridView.count(
                    crossAxisCount: project.isHorizontal!
                        ? 1
                        : screenSize < 600
                            ? 4
                            : screenSize < 1000
                                ? 6
                                : screenSize < 1600
                                    ? 8
                                    : 10,
                    padding: const EdgeInsets.all(10),
                    children: project.imageList!
                        .map<Widget>(
                          (item) => InkWell(
                            onTap: () => showDialog(context: context, builder: (_) => SimpleDialog(
                              contentPadding: EdgeInsets.zero,
                              children: [
                                Image.asset(
                                  item,
                                  fit: project.isHorizontal!
                                      ? BoxFit.fitWidth
                                      : BoxFit.fitHeight,
                                )
                              ],
                            )),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                item,
                                fit: project.isHorizontal!
                                    ? BoxFit.fitWidth
                                    : BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    staggeredTiles: project.imageList!
                        .map<StaggeredTile>((_) => StaggeredTile.fit(2))
                        .toList(),
                    mainAxisSpacing: 50,
                    crossAxisSpacing: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
