import 'package:MyWebsite/ui/common/states.dart';
import 'package:MyWebsite/ui/component/flat_border_button.dart';
import 'package:flutter/material.dart';

class WebTopButtons extends StatelessWidget {
  final Function? moveToPage;
  final screen;

  const WebTopButtons({Key? key, this.moveToPage, this.screen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: EdgeInsets.only(
          top: 50,
          right: 50,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlatBorderButton(
              text: "About Me",
              onTap: () => moveToPage!(1),
              screen: screen,
            ),
            SizedBox(
              width: 20,
            ),
            FlatBorderButton(
              text: "My Projects",
              onTap: () => moveToPage!(2),
              screen: screen,
            ),
          ],
        ),
      ),
    );
  }
}
