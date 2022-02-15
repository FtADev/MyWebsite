import 'package:flutter/material.dart';

final projectList = [
  ProjectModel(
    id: 0,
    title: "Persian Calendar",
    name: "persiancalendar",
    isTeamWork: true,
    lang: "Kotlin",
    colorLang: Colors.red,
    image: "./assets/persian-cal.png",
    detail: "A persian calendar app for android device.",
    url: "https://github.com/persian-calendar/DroidPersianCalendar",
  ),
  ProjectModel(
    id: 1,
    title: "Timeset",
    name: "timeset",
    isTeamWork: true,
    lang: "Flutter",
    colorLang: Colors.blue,
    image: "./assets/timeset.png",
    detail: "An app that you can reserve a sport sans with it!",
    url: "https://cafebazaar.ir/app/ir.expteam.timeset",
  ),
  ProjectModel(
      id: 2,
      title: "Therappy",
      name: "therappy",
      isTeamWork: true,
      lang: "Flutter",
      colorLang: Colors.blue,
      image: "./assets/therappy/therappy-logo.png",
      detail:
          "A psychology application that has multiple personality tests, related posts, useful books, and ...",
      url: "https://ftadev.ir/projects/therappy",
      otherDetail:
          "A psychology application that has multiple personality tests, related posts, useful books, and ...",
      isHorizontal: false,
      imageList: [
        './assets/therappy/1.jpg',
        './assets/therappy/2.jpg',
        './assets/therappy/4.jpg',
        './assets/therappy/5.jpg',
        './assets/therappy/7.jpg',
        './assets/therappy/8.jpg',
      ]),
  ProjectModel(
      id: 3,
      title: "Payatam",
      name: "payatam",
      isTeamWork: true,
      lang: "Flutter",
      colorLang: Colors.blue,
      image: "./assets/payatam/partner-logo.png",
      detail: "An application to find a teammate in sports, class, ...",
      url: "https://ftadev.ir/projects/payatam",
      otherDetail: "An application to find a teammate in sports, class, ...",
      isHorizontal: false,
      imageList: [
        './assets/payatam/1.png',
        './assets/payatam/2.png',
        './assets/payatam/3.png',
        './assets/payatam/4.png',
        './assets/payatam/5.png',
        './assets/payatam/7.png',
        './assets/payatam/8.png',
        './assets/payatam/9.png',
        './assets/payatam/10.png',
        './assets/payatam/11.png',
        './assets/payatam/12.png',
        './assets/payatam/13.png',
        './assets/payatam/14.png',
        './assets/payatam/15.png',
        './assets/payatam/16.png',
      ]),
  ProjectModel(
      id: 4,
      title: "Yas",
      name: "yas",
      isTeamWork: true,
      lang: "Java",
      colorLang: Colors.orange,
      image: "./assets/yas/yas-logo.png",
      detail:
          "A charity application that collect money, equipments, ... from a person who wants to help others.",
      url: "https://ftadev.ir/projects/yas",
      otherDetail:
          "A charity application that collect money, equipments, ... from a person who wants to help others.",
      isHorizontal: false,
      imageList: [
        './assets/yas/1.png',
        './assets/yas/2.png',
        './assets/yas/3.png',
        './assets/yas/4.png',
        './assets/yas/5.png',
        './assets/yas/7.png',
        './assets/yas/8.png',
        './assets/yas/9.png',
        './assets/yas/10.png',
        './assets/yas/11.png',
        './assets/yas/12.png',
      ]),
  ProjectModel(
    id: 5,
    title: "Present",
    name: "present",
    isTeamWork: true,
    lang: "Kotlin",
    colorLang: Colors.red,
    image: "./assets/present.png",
    detail: "An android app that we use to set our enter/exit at work!",
    url: "https://gitlab.com/exceptionaldev-pub/mobileexception/present",
  ),
  ProjectModel(
    id: 6,
    title: "Twitter Word Cloud",
    name: "twitterwordcloud",
    isTeamWork: false,
    lang: "Python",
    colorLang: Colors.yellow,
    image: "./assets/twitter.png",
    detail: "Create a shape with the words of your tweets.",
    url: "https://github.com/FtADev/TwitterWordCloud",
  ),
  ProjectModel(
    id: 7,
    title: "Waka",
    name: "waka",
    isTeamWork: false,
    lang: "Flutter",
    colorLang: Colors.blue,
    image: "./assets/waka.png",
    detail: "Show track of your coding time based on watatime.com",
    url: "https://github.com/FtADev/WakaTime",
  ),
  ProjectModel(
    id: 8,
    title: "Broker",
    name: "broker",
    isTeamWork: false,
    lang: "Python",
    colorLang: Colors.yellow,
    image: "./assets/broker1.png",
    detail: "A broker that transfer data from sensors to server.",
    url:
        "https://gitlab.com/exceptionaldev-pub/pythonexception/playingwithbrokers",
  ),
  ProjectModel(
    id: 9,
    title: "My Website",
    name: "mywebsite",
    isTeamWork: false,
    lang: "Flutter",
    colorLang: Colors.blue,
    image: "./assets/website.png",
    detail: "This website! I made it with flutter web!",
    url: "https://github.com/FtADev/mywebsite",
  ),
  ProjectModel(
      id: 10,
      title: "Behinsource",
      name: "behinsource",
      isTeamWork: false,
      lang: "Flutter",
      colorLang: Colors.blue,
      image: "./assets/behin/behin-logo.png",
      detail: "A website for B2B shopping with seller and buyer mode",
      url: "https://ftadev.ir/projects/behinsource",
      otherDetail: "A website for B2B shopping with seller and buyer mode",
      isHorizontal: true,
      imageList: [
        './assets/behin/1.png',
        './assets/behin/2.png',
        './assets/behin/3.png',
        './assets/behin/4.png',
        './assets/behin/5.png',
        './assets/behin/6.png',
        './assets/behin/7.png',
      ]),
];

class ProjectModel {
  int id;
  String title;
  String name;
  String image;
  String detail;
  String lang;
  Color colorLang;
  bool isTeamWork;
  String url;
  String? otherDetail;
  List<String>? imageList;
  bool? isHorizontal = false;

  ProjectModel({
    required this.id,
    required this.title,
    required this.name,
    required this.image,
    required this.detail,
    required this.lang,
    required this.colorLang,
    required this.isTeamWork,
    required this.url,
    this.otherDetail,
    this.imageList,
    this.isHorizontal,
  });
}
