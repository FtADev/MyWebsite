import 'package:flutter/material.dart';

class FlatBorderButton extends StatelessWidget {
  final text;
  final onTap;

  const FlatBorderButton({Key key, this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(7),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'dekko'),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          shape: BoxShape.rectangle,
          border: Border.all(width: 1, color: Colors.white),
        ),
      ),
      onTap: onTap,
    );
  }
}
