import 'package:flutter/material.dart';

import 'dynamic_card.dart';
import 'fade_in_ui.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicCard(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              FadeIn(1.0, HeaderPlaceholder()),
              WhitespaceSeparator(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FadeIn(2, CirclePlaceholder()),
                  FadeIn(2.33, CirclePlaceholder()),
                  FadeIn(2.66, CirclePlaceholder())
                ],
              ),
              WhitespaceSeparator(),
              FadeIn(4, CardPlaceholder()),
              FadeIn(4.5, CardPlaceholder()),
              FadeIn(5, CardPlaceholder()),
              FadeIn(5.5, CardPlaceholder()),
              FadeIn(6, CardPlaceholder()),
              FadeIn(6.5, CardPlaceholder()),
              FadeIn(7, CardPlaceholder())
            ],
          ),
        ),
      ),
    );
  }
}


class WhitespaceSeparator extends StatelessWidget {
  const WhitespaceSeparator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
    );
  }
}

class HeaderPlaceholder extends StatelessWidget {
  const HeaderPlaceholder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.all(Radius.circular(5))),
    );
  }
}

class CirclePlaceholder extends StatelessWidget {
  const CirclePlaceholder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: 50,
        height: 50,
        color: Colors.grey.shade300,
      ),
    );
  }
}

class CardPlaceholder extends StatelessWidget {
  const CardPlaceholder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: ClipOval(
                  child: Container(
                    color: Colors.grey.shade300,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.grey,
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 5, 0, 0),
                      color: Colors.grey.shade300,
                      height: 7,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 5, 0, 0),
                      color: Colors.grey.shade300,
                      height: 7,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 5, 0, 0),
                      color: Colors.grey.shade300,
                      height: 7,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}