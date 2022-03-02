import 'package:MyWebsite/ui/about/about_list.dart';
import 'package:MyWebsite/ui/about/about_page.dart';
import 'package:MyWebsite/ui/background/fancy_background.dart';
import 'package:MyWebsite/ui/common/mobile_const.dart';
import 'package:MyWebsite/ui/common/screen.dart';
import 'package:MyWebsite/ui/common/states.dart';
import 'package:MyWebsite/ui/common/web_const.dart';
import 'package:MyWebsite/ui/home/bio.dart';
import 'package:MyWebsite/ui/home/flat_border_button.dart';
import 'package:MyWebsite/ui/home/home_view_model.dart';
import 'package:MyWebsite/ui/projects/projects_list_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  bool isWeb = true;
  double screenSize = 0.0;
  late Screen screen;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size.width;
    isWeb = screenSize > 600;
    screen = isWeb ? WebConst() : MobileConst();

    return Scaffold(
      body: Stack(
        children: <Widget>[
          FancyBackgroundApp(),
          ChangeNotifierProvider<HomeViewModel>(
            create: (context) => HomeViewModel(),
            child: Consumer<HomeViewModel>(
              builder: (BuildContext context, model, Widget? child) => Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: PageView.builder(
                      scrollDirection: Axis.vertical,
                      onPageChanged: (pos) => model.currentIndex = pos,
                      itemCount: 3,
                      controller: model.pageController,
                      itemBuilder: (BuildContext context, index) {
                        if (index == 0) // Home
                          return Bio(
                            screen: screen,
                          );
                        else if (index == 1) // About
                          return AboutPage(
                            pages[3],
                            isWeb ? States.WEB : States.MOBILE,
                          );
                        else // Projects
                          return ProjectsListPage(
                            screen: screen,
                          );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(
                        top: screen.marginTop,
                        left: screen.marginLeft,
                      ),
                      child: FlatBorderButton(
                        text: (model.currentIndex == 0 && !isWeb)
                            ? "About Me"
                            : "Home",
                        onTap: () => (model.currentIndex == 0 && !isWeb)
                            ? model.moveToPage(1)
                            : model.moveToPage(0),
                        screen: screen,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(
                        top: screen.marginTop,
                        right: screen.marginLeft,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          isWeb
                              ? FlatBorderButton(
                                  text: "About Me",
                                  onTap: () => model.moveToPage(1),
                                  screen: screen,
                                )
                              : Container(
                                  width: 10,
                                  height: 10,
                                ),
                          SizedBox(
                            width: 20,
                          ),
                          FlatBorderButton(
                            text: (model.currentIndex == 2 && !isWeb)
                                ? "About Me"
                                : "My Projects",
                            onTap: () => (model.currentIndex == 2 && !isWeb)
                                ? model.moveToPage(1)
                                : model.moveToPage(2),
                            screen: screen,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

// Route createRoute(States state) {
//   late Widget page;
//   if (state == States.PROJECTS)
//     page = Projects(
//       screen: MobileConst(),
//     );
//   else if (state == States.ABOUT)
//     page = MobileAbout(
//       screen: MobileConst(),
//     );
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => page,
//     transitionDuration: Duration(seconds: 2),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       var begin = Offset(0.0, 1.0);
//       var end = Offset.zero;
//       var curve = Curves.fastOutSlowIn;
//
//       var tween =
//           Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//
//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     },
//   );
// }
}
