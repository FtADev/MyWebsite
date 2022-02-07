import 'package:MyWebsite/ui/common/about/about_list.dart';
import 'package:MyWebsite/ui/common/about/about_page.dart';
import 'package:MyWebsite/ui/common/bio.dart';
import 'package:MyWebsite/ui/common/states.dart';
import 'package:MyWebsite/ui/component/fancy_background.dart';
import 'package:MyWebsite/ui/component/flat_border_button.dart';
import 'package:MyWebsite/ui/mobile/home/top_buttons.dart';
import 'package:MyWebsite/ui/mobile/mobile_const.dart';
import 'package:MyWebsite/ui/provider/home_view_model.dart';
import 'package:MyWebsite/ui/web/home/top_buttons.dart';
import 'package:MyWebsite/ui/web/project/project_grid_view.dart';
import 'package:MyWebsite/ui/web/web_const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  bool isWeb = true;
  double screenSize = 0.0;
  var screen;

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
                                pages[3], isWeb ? States.WEB : States.MOBILE);
                          else // Projects
                            return ProjectsGridView();
                        }),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(
                        top: screen.marginTop,
                        left: screen.marginLeft,
                      ),
                      child: FlatBorderButton(
                        text: isWeb
                            ? "Home"
                            : model.currentIndex == 0
                                ? "About Me"
                                : "Home",
                        onTap: () => isWeb
                            ? model.moveToPage(0) // Home
                            : model.currentIndex == 0
                                ? model.moveToPage(1)
                                : model.moveToPage(0),
                        screen: screen,
                      ),
                    ),
                  ),
                  isWeb
                      ? WebTopButtons(
                          moveToPage: model.moveToPage,
                          screen: screen,
                        )
                      : MobileTopButtons(
                          moveToPage: model.moveToPage,
                          screen: screen,
                          index: model.currentIndex,
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
