import 'package:MyWebsite/ui/common/project_list.dart';
import 'package:MyWebsite/ui/component/project_item_mob.dart';
import 'package:MyWebsite/ui/provider/projects_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class Projects extends StatefulWidget {
  final screen;

  Projects({Key? key, required this.screen}) : super(key: key);

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  ProjectViewModel viewModel = ProjectViewModel();

  @override
  void initState() {
    super.initState();
    viewModel.delay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Projects",
          style: TextStyle(
            fontFamily: 'dekko',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          child: Container(
            child: Icon(
              Icons.chevron_left,
              color: Colors.grey[600],
            ),
          ),
          onTap: () => Navigator.of(context).pop(),
        ),
      ),
      body: ChangeNotifierProvider<ProjectViewModel>(
        create: (context) => viewModel,
        child: Consumer<ProjectViewModel>(
          builder:
              (BuildContext context, ProjectViewModel model, Widget? child) =>
                  Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: model.loading!
                ? SingleChildScrollView(
                    child: SkeletonLoader(
                      builder: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                      period: Duration(seconds: 2),
                      highlightColor: Colors.lightBlue[300]!,
                      direction: SkeletonDirection.ltr,
                    ),
                  )
                : ListView.builder(
                    itemCount: projectList.length,
                    itemBuilder: (context, index) => ProjectItem(
                      title: projectList[index].title,
                      detail: projectList[index].detail,
                      image: projectList[index].image,
                      lang: projectList[index].lang,
                      colorLang: projectList[index].colorLang,
                      isTeamWork: projectList[index].isTeamWork,
                      url: projectList[index].url,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
