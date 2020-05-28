import 'package:MyWebsite/ui/common/about_page.dart';
import 'package:MyWebsite/ui/common/my_custom_shape.dart';
import 'package:flutter/material.dart';

class WebAboutPage extends StatelessWidget {
  final PageViewModel viewModel;

  const WebAboutPage({Key key, this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.6,
            child: MyCustomShape(),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  viewModel.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'dekko',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  viewModel.text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'dekko',
                  ),
                ),
                SizedBox(height: 20),
                viewModel.isLastPage
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
                                    'assets/gmail.png',
                                    width: 25,
                                    height: 25,
                                    fit: BoxFit.fitWidth,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'akhlaghi.fatemeh@gmail.com',
                                    style: TextStyle(
                                      fontFamily: 'dekko',
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  InkWell(
                                    child: Image.asset(
                                      'assets/expteam.png',
                                      height: 40,
                                    ),
                                    onTap: siteLauncher,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
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
                                        'assets/github.png',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                    onTap: githubLauncher,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    child: Image.asset(
                                      'assets/gitlab.png',
                                      width: 50,
                                      height: 50,
                                    ),
                                    onTap: gitlabLauncher,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    child: Image.asset(
                                      'assets/telegram.png',
                                      width: 50,
                                      height: 50,
                                    ),
                                    onTap: telegramLauncher,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
