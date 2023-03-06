import 'package:MyWebsite/ui/about/about_page_model.dart';
import 'package:MyWebsite/ui/common/mobile_const.dart';
import 'package:MyWebsite/ui/common/screen.dart';
import 'package:MyWebsite/ui/common/styles.dart';
import 'package:flutter/material.dart';

class TextPartWidget extends StatelessWidget {
  final Screen screen;
  final AboutPageModel model;

  const TextPartWidget({
    Key? key,
    required this.screen,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.title,
          style: Styles.about1,
        ),
        SizedBox(
          height: screen.boxSizeMedium,
        ),
        SelectionArea(
          child: Text(
            model.text,
            style: Styles.about2,
            textAlign: (screen is MobileConst) ? null : TextAlign.justify,
          ),
        ),
        SizedBox(height: screen.boxSizeLarge),
      ],
    );
  }
}
