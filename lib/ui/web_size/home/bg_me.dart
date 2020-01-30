import 'package:flutter/material.dart';

class MeBG extends StatefulWidget {
  @override
  _MeBGState createState() => _MeBGState();
}

class _MeBGState extends State<MeBG> with TickerProviderStateMixin {
  AnimationController animController;

  @override
  void initState() {
    animController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2)
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    animController.forward();

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
            child: FadeTransition(
              opacity: Tween(
                begin: 0.0,
                end: 1.0
              ).animate(animController),
              child: Image.asset(
                'assets/me.png',
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fill,
              ),
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
