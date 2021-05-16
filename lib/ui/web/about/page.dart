import 'package:MyWebsite/ui/common/about_page.dart';
import 'package:MyWebsite/ui/web/web_const.dart';
import 'package:flutter/material.dart';

class WebAboutPage extends StatefulWidget {
  final PageViewModel? viewModel;

  const WebAboutPage({Key? key, this.viewModel}) : super(key: key);

  @override
  _WebAboutPageState createState() => _WebAboutPageState();
}

class _WebAboutPageState extends State<WebAboutPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: TextPartWidget(
              viewModel: widget.viewModel,
              screen: WebConst(),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: GifPartWidget(
            viewModel: widget.viewModel,
            widthPercent: 0.8,
            heightPercent: 0.6,
          ),
        ),
      ],
    );
  }
}
