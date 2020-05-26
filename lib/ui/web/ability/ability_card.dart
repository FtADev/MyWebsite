import 'package:flutter/material.dart';

class AbilityCard extends StatefulWidget {
  final String name;
  final String iconPath;
  final bool moveIcon;

  AbilityCard({this.name, this.iconPath, this.moveIcon});

  @override
  _AbilityCardState createState() => _AbilityCardState();
}

class _AbilityCardState extends State<AbilityCard>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween<Offset>(begin: Offset(0, 0), end: Offset(0, -0.05))
        .animate(_animationController);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.moveIcon != null && widget.moveIcon)
      _animationController.repeat(reverse: true);
    else
      _animationController.stop();

    return Card(
      elevation: 7,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SlideTransition(
              position: _animation,
              child: Image.asset(
                widget.iconPath,
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(height: 10),
            Text(
              widget.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
