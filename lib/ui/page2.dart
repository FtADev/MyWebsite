import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              child: Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Image.asset('assets/back.png'),
              ),
              onTap: () => Navigator.of(context).pop(),
            )
          )
        ],
      ),
    );
  }
}
