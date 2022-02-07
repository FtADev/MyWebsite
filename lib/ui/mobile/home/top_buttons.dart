import 'package:MyWebsite/ui/common/states.dart';
import 'package:flutter/material.dart';
import 'package:MyWebsite/ui/component/flat_border_button.dart';


class MobileTopButtons extends StatelessWidget {
  final Function? moveToPage;
  final screen;
  late final int? index;

  MobileTopButtons({Key? key, this.screen, this.moveToPage, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: EdgeInsets.only(
          top: 26,
          right: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlatBorderButton(
              text: index == 2 ? "About" : "My Projects",
              onTap: () => index == 2 ? moveToPage!(1) : moveToPage!(2),
              screen: screen,
            ),
          ],
        ),
      ),
    );
  }
}
