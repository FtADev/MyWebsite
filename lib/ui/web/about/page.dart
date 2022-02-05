import 'package:MyWebsite/ui/common/about/about_page_model.dart';
import 'package:MyWebsite/ui/common/about/gif_part.dart';
import 'package:MyWebsite/ui/common/about/text_part.dart';
import 'package:MyWebsite/ui/web/web_const.dart';
import 'package:flutter/material.dart';

class WebAboutPage extends StatelessWidget {
  final AboutPageModel model;

  const WebAboutPage({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 150),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20,),
                child: TextPartWidget(
                  model: model,
                  screen: WebConst(),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GifPartWidget(
              model: model,
              widthPercent: 0.8,
              heightPercent: 0.6,
            ),
          ),
        ],
      ),
    );
  }
}
