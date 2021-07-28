import 'package:MyWebsite/ui/common/bio.dart';
import 'package:MyWebsite/ui/common/states.dart';
import 'package:MyWebsite/ui/component/fancy_background.dart';
import 'package:MyWebsite/ui/component/flat_border_button.dart';
import 'package:MyWebsite/ui/mobile/about/about.dart';
import 'package:MyWebsite/ui/mobile/home/top_buttons.dart';
import 'package:MyWebsite/ui/mobile/mobile_const.dart';
import 'package:MyWebsite/ui/mobile/project/Projects.dart';
import 'package:MyWebsite/ui/provider/home_view_model.dart';
import 'package:MyWebsite/ui/web/about/about.dart';
import 'package:MyWebsite/ui/web/home/top_buttons.dart';
import 'package:MyWebsite/ui/web/project/project_grid_view.dart';
import 'package:MyWebsite/ui/web/web_const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isWeb = true;
  double screenSize = 0.0;
  var screen;

  mobileChangeState(States newState) => Navigator.of(context).push(createRoute(
        newState,
      ));

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
                    child: model.currentState == States.HOME
                        ? Bio(
                            screen: screen,
                          )
                        : isWeb
                            ? model.currentState == States.ABOUT
                                ? WebAbout(screen: screen, changeState: model.changeState,)
                                : model.currentState == States.PROJECTS
                                    ? ProjectsGridView(
                      changeState: model.changeState,
                    )
                                    : Container()
                            : Container(),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(
                        top: screen.marginTop,
                        left: screen.marginLeft,
                      ),
                      child: FlatBorderButton(
                        text: isWeb ? "Home" : "About Me",
                        onTap: () => isWeb
                            ? model.changeState(States.HOME)
                            : mobileChangeState(States.ABOUT),
                        screen: screen,
                      ),
                    ),
                  ),
                  isWeb
                      ? WebTopButtons(
                          changeState: model.changeState,
                          screen: screen,
                        )
                      : MobileTopButtons(
                          changeState: mobileChangeState,
                          screen: screen,
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Route createRoute(States state) {
    late Widget page;
    if (state == States.PROJECTS)
      page = Projects(
        screen: MobileConst(),
      );
    else if (state == States.ABOUT)
      page = MobileAbout(
        screen: MobileConst(),
      );
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionDuration: Duration(seconds: 2),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.fastOutSlowIn;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
