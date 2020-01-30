import 'package:flutter/material.dart';


class AbilityCard extends StatelessWidget {
  final String name;
  final String iconPath;

  AbilityCard({this.name, this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              iconPath,
              width: 100,
              height: 100,
            ),
            SizedBox(height: 10),
            Text(
              name,
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
