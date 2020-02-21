import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'my_custom_shape.dart';
import 'screen.dart';

class AboutTop extends StatelessWidget {
  final Screen screen;

  const AboutTop({Key key, @required this.screen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * screen.wSize,
          height: MediaQuery.of(context).size.height * screen.hSize,
          child: MyCustomShape(),
        ),
//        Align(
//          alignment: Alignment.center,
//          child: Container(
////            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
//            child: Row(
//              mainAxisSize: MainAxisSize.min,
//              mainAxisAlignment: MainAxisAlignment.center,
//              crossAxisAlignment: CrossAxisAlignment.center,
//              children: <Widget>[
//                Image.asset(
//                  'assets/csharp.png',
//                  width: 300,
//                  height: 300,
//                  fit: BoxFit.fill,
//                ),
//                Image.asset(
//                  'assets/cplus.png',
//                  width: 300,
//                  height: 300,
//                  fit: BoxFit.fill,
//                ),
//              ],
//            ),
//          ),
//        ),
//        Positioned(
//          top: MediaQuery.of(context).size.height * 0.15,
//          left: MediaQuery.of(context).size.width * 0.38,
//          child: Image.asset(
//            'assets/csh.png',
//            width: 300,
//            height: 300,
//            fit: BoxFit.fill,
//          ),
//        ),
//        Positioned(
//          top: MediaQuery.of(context).size.height * 0.15,
//          right: MediaQuery.of(context).size.width * 0.38,
//          child: Image.asset(
//            'assets/cplus.png',
//            width: 300,
//            height: 300,
//            fit: BoxFit.fill,
//          ),
//        )
      ],
    );
  }
}
