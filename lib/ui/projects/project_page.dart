import 'package:MyWebsite/ui/projects/project_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ProjectPage extends StatelessWidget {
  static const String baseRoute = '/projects';
  static String Function(String name) routeFromName =
      (String name) => baseRoute + '/$name';

  final ProjectModel project;

  const ProjectPage({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
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
                      style: TextStyle(
                        fontFamily: 'dekko',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      project.otherDetail!,
                      style: TextStyle(
                        fontFamily: 'dekko',
                        fontSize: 20,
                      ),
                    ),
                  ]),
            ),
            Container(
              height: width > 1000
                  ? MediaQuery.of(context).size.height * 0.8
                  : MediaQuery.of(context).size.height * 0.5,
              child: Swiper(
                fade: 0.1,
                itemCount: project.imageList!.length,
                loop: true,
                viewportFraction: project.isHorizontal!
                    ? 0.6
                    : width > 600
                        ? 0.2
                        : 0.5,
                scale: 0.5,
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    project.imageList![index],
                    fit: BoxFit.fitWidth,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
