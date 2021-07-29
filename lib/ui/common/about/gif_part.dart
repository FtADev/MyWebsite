import 'package:flutter/material.dart';

import 'about_page_model.dart';

class GifPartWidget extends StatelessWidget {
  final AboutPageModel model;
  final double widthPercent;
  final double heightPercent;

  const GifPartWidget({
    Key? key,
    required this.model,
    required this.widthPercent,
    required this.heightPercent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * widthPercent,
      height: MediaQuery.of(context).size.height * heightPercent,
      child: Image.asset(
        model.image,
      ),
    );
  }
}