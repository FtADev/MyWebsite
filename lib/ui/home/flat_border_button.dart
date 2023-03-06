import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../common/styles.dart';

class FlatBorderButton extends StatelessWidget {
  final text;
  final onTap;
  final screen;

  const FlatBorderButton({Key? key, this.text, this.onTap, this.screen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.all(7),
          child: Text(
            text,
            style: Styles.flatBtn,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            shape: BoxShape.rectangle,
            border: Border.all(width: 1, color: Colors.white),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
