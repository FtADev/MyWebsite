import 'package:MyWebsite/ui/common/about_page.dart';
import 'package:MyWebsite/ui/mobile/mobile_const.dart';
import 'package:flutter/material.dart';

class MobileAboutPage extends StatelessWidget {
  final PageViewModel? viewModel;

  const MobileAboutPage({Key? key, this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GifPartWidget(
          viewModel: viewModel,
          widthPercent: 0.8,
          heightPercent: 0.4,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: TextPartWidget(
            viewModel: viewModel,
            screen: MobileConst(),
          ),
        ),
      ],
    );
  }
}
