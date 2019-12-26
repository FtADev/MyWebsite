import 'package:flutter/material.dart';

class Bio extends StatefulWidget {
  @override
  _BioState createState() => _BioState();
}

class _BioState extends State<Bio> with TickerProviderStateMixin {
  AnimationController nameController;

  @override
  void initState() {
    nameController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    nameController.forward();

    return FadeTransition(
      opacity: Tween(begin: 0.0, end: 1.0).animate(nameController),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Hi, It's Me!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
            ),
          ),
          Text(
            "Fatemeh Akhlaghi",
            style: TextStyle(
              color: Colors.white,
              fontSize: 70,
              fontWeight: FontWeight.bold,
              fontFamily: 'font1'
            ),
          ),
          Text(
            "I Am Developer",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          )
        ],
      ),
    );
  }
}
