import 'package:MyWebsite/ui/common/other_project_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class OtherProjects extends StatelessWidget {
  final id;

  const OtherProjects({Key key, @required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      otherProjectList[id].title,
                      style: TextStyle(
                        fontFamily: 'dekko',
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      otherProjectList[id].detail,
                      style: TextStyle(
                        fontFamily: 'dekko',
                        fontSize: 30,
                      ),
                    ),
                  ]),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Swiper(
                fade: 0.1,
                itemCount: otherProjectList[id].image.length,
                loop: true,
                viewportFraction: 0.3,
                scale: 0.5,
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    otherProjectList[id].image[index],
                    fit: BoxFit.fitHeight,
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
