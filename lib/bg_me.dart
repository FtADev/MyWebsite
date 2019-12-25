import 'package:flutter/material.dart';

class MeBG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
        ),
        Container(
          padding: EdgeInsets.only(top: 30, right: 20),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/me.png',
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Opacity(
          opacity: 0.6,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
