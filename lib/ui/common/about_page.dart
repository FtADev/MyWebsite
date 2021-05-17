import 'package:MyWebsite/ui/common/about_list.dart';
import 'package:MyWebsite/ui/common/screen.dart';
import 'package:MyWebsite/ui/common/states.dart';
import 'package:MyWebsite/ui/component/fade_in_ui.dart';
import 'package:MyWebsite/ui/mobile/about/page.dart';
import 'package:MyWebsite/ui/web/about/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class PageViewModel {
  final String title;
  final String text;
  final String image;
  final bool isLastPage;

  PageViewModel(
    this.title,
    this.text,
    this.image,
    this.isLastPage,
  );
}

class AboutPage extends StatelessWidget {
  final PageViewModel viewModel;
  final States state;

  AboutPage(
    this.viewModel,
    this.state,
  );

  @override
  Widget build(BuildContext context) {
    return (state == States.MOBILE)
        ? MobileAboutPage(
            viewModel: viewModel,
          )
        : WebAboutPage(
            viewModel: viewModel,
          );
  }
}

githubLauncher() async {
  const url = 'https://github.com/FtADev/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

telegramLauncher() async {
  const url = 'https://t.me/ftadev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

linkedInLauncher() async {
  const url = 'https://www.linkedin.com/in/fatemeh-akhlaghi-6a211615b';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class AboutPageWidget extends StatefulWidget {
  final States? state;

  const AboutPageWidget({Key? key, this.state})
      : super(key: key);

  @override
  _AboutPageWidgetState createState() => _AboutPageWidgetState();
}

class _AboutPageWidgetState extends State<AboutPageWidget> {
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, keepPage: false);
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      child: FadeIn(
        3,
        PageIndicatorContainer(
          child: PageView.builder(
              onPageChanged: (pos) {},
              itemCount: pages.length,
              controller: _pageController,
              itemBuilder: (BuildContext context, index) =>
                  AboutPage(pages[index], widget.state!)),
          align: IndicatorAlign.bottom,
          length: pages.length,
          indicatorColor: Colors.purple[100]!,
          indicatorSelectorColor: Colors.purple[200]!,
          // padding: const EdgeInsets.only(bottom: 15.0),
          shape: IndicatorShape.circle(size: 10.0),
        ),
      ),
      textDirection: TextDirection.ltr,
    );
  }
}

class GifPartWidget extends StatelessWidget {
  final PageViewModel? viewModel;
  final double? widthPercent;
  final double? heightPercent;

  const GifPartWidget({
    Key? key,
    this.viewModel,
    this.widthPercent,
    this.heightPercent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * widthPercent!,
      height: MediaQuery.of(context).size.height * heightPercent!,
      child: Image.asset(
        viewModel!.image,
      ),
    );
  }
}

class TextPartWidget extends StatelessWidget {
  final Screen? screen;
  final PageViewModel? viewModel;

  const TextPartWidget({
    Key? key,
    this.screen,
    this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          viewModel!.title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: screen?.bioFont3,
            fontFamily: 'dekko',
          ),
        ),
        SizedBox(
          height: screen?.boxSizeMedium,
        ),
        Text(
          viewModel!.text,
          style: TextStyle(
            color: Colors.black,
            fontSize: screen?.flatBtnFont,
            fontFamily: 'dekko',
          ),
        ),
        SizedBox(height: screen?.boxSizeLarge),
        viewModel!.isLastPage
            ? Center(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/network/email.png',
                            width: screen?.iconSize,
                            height: screen?.iconSize,
                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'akhlaghi.fatemeh@gmail.com',
                            style: TextStyle(
                              fontFamily: 'dekko',
                              fontSize: screen?.flatBtnFont,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: screen?.boxSizeMedium,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50.0),
                                    ),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white,
                                    )),
                                child: Image.asset(
                                  'assets/network/github.png',
                                  width: screen?.iconSize,
                                  height: screen?.iconSize,
                                ),
                              ),
                              onTap: githubLauncher,
                            ),
                          ),
                          SizedBox(
                            width: screen?.boxSizeLarge,
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              child: Image.asset(
                                'assets/network/linkedin.png',
                                width: screen?.iconSize,
                                height: screen?.iconSize,
                              ),
                              onTap: linkedInLauncher,
                            ),
                          ),
                          SizedBox(
                            width: screen?.boxSizeLarge,
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              child: Image.asset(
                                'assets/network/telegram.png',
                                width: screen?.iconSize,
                                height: screen?.iconSize,
                              ),
                              onTap: telegramLauncher,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}

class TrackedOutText extends StatefulWidget {
  final String text;

  final List<TextSpan> _slices;
  final List<TextSpan> _slicesTransparent;

  final Animation<double> progress;

  final TextAlign? textAlign;
  final TextStyle? style;

  TrackedOutText(
    this.text,
    this.progress, {
    this.textAlign,
    this.style,
  })  : _slices = _generateSlices(text, style!, false).toList(growable: false),
        _slicesTransparent =
            _generateSlices(text, style, true).toList(growable: false);

  static Iterable<TextSpan> _generateSlices(
      String text, TextStyle style, bool transparent) sync* {
    const step = 3;
    var i = 0;
    for (; i < text.length - step; i += step) {
      yield TextSpan(
        text: text.substring(i, i + step),
        style: transparent ? style.apply(color: Colors.transparent) : null,
      );
    }
    yield TextSpan(
      text: text.substring(i),
      style: transparent ? style.apply(color: Colors.transparent) : null,
    );
  }

  @override
  _TrackedOutTextState createState() => _TrackedOutTextState();
}

class _TrackedOutTextState extends State<TrackedOutText> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.progress,
      builder: (BuildContext context, Widget? child) {
        return Text.rich(
          TextSpan(
            children: [
              for (var i = 0; i < widget._slices.length; i++)
                (i / widget._slices.length < widget.progress.value)
                    ? widget._slices[i]
                    : widget._slicesTransparent[i],
            ],
          ),
          textAlign: widget.textAlign,
          style: widget.style,
        );
      },
    );
  }
}
