import 'package:MyWebsite/ui/projects/project_model.dart';
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
      image: "./assets/timeset/timeset.png",
      detail: "A sports reservation application in collaboration with Tehran Municipality. ",
      url: "https://ftadev.github.io/#/projects/timeset",
      otherDetail:
          "A sports reservation application in collaboration with Tehran Municipality. "
              "This application allows users to reserve sports facilities at a complex and "
              "purchase tickets online, making it more convenient for them to access the facilities "
              "they need.",
      isHorizontal: false,
      imageList: [
        './assets/timeset/1.png',
        './assets/timeset/2.png',
        './assets/timeset/3.png',
        './assets/timeset/4.png',
        './assets/timeset/5.png',
        './assets/timeset/7.png',
        './assets/timeset/8.png',
        './assets/timeset/9.png',
        './assets/timeset/10.png',
        './assets/timeset/11.png',
        './assets/timeset/12.png',
      ]),
  ProjectModel(
      id: 2,
      title: "Therappy",
      name: "therappy",
      isTeamWork: true,
      lang: "Flutter",
      colorLang: Colors.blue,
      image: "./assets/therappy/therappy-logo.png",
      detail: "An innovative application focused on psychology to help "
          "users gain a deeper understanding of themselves.",
      url: "https://ftadev.github.io/#/projects/therappy",
      otherDetail:
          "Innovative application focused on psychology. "
              "This application includes a range of personality tests designed to help "
              "users gain a deeper understanding of themselves. "
              "Additionally, it features a library of books and articles related to the field of "
              "psychology, as well as news and posts to keep users up-to-date with the latest "
              "achievement in this area.",
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
      title: "Payatam (PartnerYaab)",
      name: "payatam",
      isTeamWork: true,
      lang: "Flutter",
      colorLang: Colors.blue,
      image: "./assets/payatam/partner-logo.png",
      detail: "An application that facilitates finding partners "
          "for various activities such as sports, education, and work. ",
      url: "https://ftadev.github.io/#/projects/payatam",
      otherDetail: "An innovative application that facilitates finding partners "
          "for various activities such as sports, education, and work. "
          "This app allows users to easily request and connect with others who share "
          "similar interests and goals. "
          "For instance, users can request a chess partner or find classmates for a math class "
          "with just a few clicks.",
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
          "A charity application that allows users to donate money or everything they want.",
      url: "https://ftadev.github.io/#/projects/yas",
      otherDetail:
          "Our first Android application called YAS (Yaran Salamat), which is focused on charity. "
              "The app allows users to donate money or equipment to various causes, "
              "as well as volunteer their time to help others. "
              "Additionally, the app features news and videos related to charity work.",
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
      url: "https://ftadev.github.io/#/projects/behinsource",
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
  ProjectModel(
    id: 11,
    title: "Books World",
    name: "booksworld",
    isTeamWork: false,
    lang: "Kotlin",
    colorLang: Colors.red,
    image: "./assets/books-logo.png",
    detail: "An application with list of books that you can bookmark any of them",
    url: "https://github.com/FtADev/BooksWorld",
  ),
];
