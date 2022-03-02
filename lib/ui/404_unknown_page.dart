import 'package:MyWebsite/ui/background/fancy_background.dart';
import 'package:flutter/material.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FancyBackgroundApp(),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Error 404",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontFamily: 'dekko',
                  ),
                ),
                Text(
                  "This Page Not Found!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'dekko',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
