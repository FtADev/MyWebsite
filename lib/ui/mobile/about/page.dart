import 'package:flutter/material.dart';
import 'package:MyWebsite/ui/common/about_page.dart';
import 'package:MyWebsite/ui/common/my_custom_shape.dart';

class MobileAboutPage extends StatelessWidget {
  final PageViewModel? viewModel;

  const MobileAboutPage({Key? key, this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Image.asset(
            viewModel!.image,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                viewModel!.title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'dekko',
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                viewModel!.text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'dekko',
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        viewModel!.isLastPage
            ? Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/network/email.png',
                    width: 25,
                    height: 25,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(width: 3),
                  Text(
                    'akhlaghi.fatemeh@gmail.com',
                    style: TextStyle(
                        fontFamily: 'dekko',
                        fontSize: 18,
                        color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InkWell(
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
                        width: 25,
                        height: 25,
                      ),
                    ),
                    onTap: githubLauncher,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: Image.asset(
                      'assets/network/linkedin.png',
                      width: 25,
                      height: 25,
                    ),
                    onTap: linkedInLauncher,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: Image.asset(
                      'assets/network/telegram.png',
                      width: 25,
                      height: 25,
                    ),
                    onTap: telegramLauncher,
                  ),
                ],
              ),
            ],
          ),
        )
            : Container(),
      ],
    );
  }
}
