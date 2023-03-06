import 'package:MyWebsite/ui/about/about_page_model.dart';
import 'package:MyWebsite/ui/about/gif_part.dart';
import 'package:MyWebsite/ui/about/text_part.dart';
import 'package:MyWebsite/ui/about/information_part.dart';
import 'package:MyWebsite/ui/common/mobile_const.dart';
import 'package:flutter/material.dart';

class MobileAboutPage extends StatelessWidget {
  final AboutPageModel model;

  const MobileAboutPage({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          GifPartWidget(
            model: model,
            widthPercent: 0.8,
            heightPercent: 0.4,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: TextPartWidget(
              model: model,
              screen: MobileConst(),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: InformationPart(
              screen: MobileConst(),
            ),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
