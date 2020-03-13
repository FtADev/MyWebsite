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
    url: "https://gitlab.com/exceptionaldev-pub/pythonexception/playingwithbrokers",
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
      {this.title,
      this.image,
      this.detail,
      this.lang,
      this.colorLang,
      this.isTeamWork,
      this.url});
}
