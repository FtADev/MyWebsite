import 'package:flutter/material.dart';

final projectList = [
  ProjectModel(
    title: "Persian Calendar",
    isTeamWork: true,
    lang: "Kotlin",
    colorLang: Colors.red,
    image: "./assets/persian-cal.png",
    detail: "A persian calendar app for android device.",
    url: "https://github.com/persian-calendar/DroidPersianCalendar",
  ),
  ProjectModel(
    title: "Timeset",
    isTeamWork: true,
    lang: "Flutter",
    colorLang: Colors.blue,
    image: "./assets/timeset.png",
    detail: "An app that you can reserve a sport sans with it!",
    url: "https://cafebazaar.ir/app/ir.expteam.timeset",
  ),
  ProjectModel(
    title: "Therappy",
    isTeamWork: true,
    lang: "Flutter",
    colorLang: Colors.blue,
    image: "./assets/therappy/therappy-logo.png",
    detail:
        "A psychology application that has multiple personality tests, related posts, useful books, and ...",
    url: "https://ftadev.github.io/#/projects/1",
  ),
  ProjectModel(
    title: "Payatam",
    isTeamWork: true,
    lang: "Flutter",
    colorLang: Colors.blue,
    image: "./assets/payatam/partner-logo.png",
    detail: "An application to find a teammate in sports, class, ...",
    url: "https://ftadev.github.io/#/projects/2",
  ),
  ProjectModel(
    title: "Yas",
    isTeamWork: true,
    lang: "Java",
    colorLang: Colors.orange,
    image: "./assets/yas/yas-logo.png",
    detail:
        "A charity application that collect money, equipments, ... from a person who wants to help others.",
    url: "https://ftadev.github.io/#/projects/0",
  ),
  ProjectModel(
    title: "Present",
    isTeamWork: true,
    lang: "Kotlin",
    colorLang: Colors.red,
    image: "./assets/present.png",
    detail: "An android app that we use to set our enter/exit at work!",
    url: "https://gitlab.com/exceptionaldev-pub/mobileexception/present",
  ),
  ProjectModel(
    title: "Twitter Word Cloud",
    isTeamWork: false,
    lang: "Python",
    colorLang: Colors.yellow,
    image: "./assets/twitter-blue.png",
    detail: "Create a shape with the words of your tweets.",
    url: "https://github.com/FtADev/TwitterWordCloud",
  ),
  ProjectModel(
    title: "Waka",
    isTeamWork: false,
    lang: "Flutter",
    colorLang: Colors.blue,
    image: "./assets/waka.png",
    detail: "Show track of your coding time based on watatime.com",
    url: "https://github.com/FtADev/WakaTime",
  ),
  ProjectModel(
    title: "Broker",
    isTeamWork: false,
    lang: "Python",
    colorLang: Colors.yellow,
    image: "./assets/broker.png",
    detail: "A broker that transfer data from sensors to server.",
    url:
        "https://gitlab.com/exceptionaldev-pub/pythonexception/playingwithbrokers",
  ),
  ProjectModel(
    title: "My Website",
    isTeamWork: false,
    lang: "Flutter",
    colorLang: Colors.blue,
    image: "./assets/website.png",
    detail: "This website! I made it with flutter web!",
    url: "https://github.com/FtADev/MyWebsite",
  ),
  ProjectModel(
    title: "Behinsource",
    isTeamWork: false,
    lang: "Flutter",
    colorLang: Colors.blue,
    image: "./assets/behin/behin-logo.png",
    detail: "A website for B2B shopping with seller and buyer mode",
    url: "https://ftadev.github.io/#/projects/3",
  ),
];

class ProjectModel {
  String title;
  String image;
  String detail;
  String lang;
  Color colorLang;
  bool isTeamWork;
  String url;

  ProjectModel(
      {required this.title,
      required this.image,
      required this.detail,
      required this.lang,
      required this.colorLang,
      required this.isTeamWork,
      required this.url});
}
