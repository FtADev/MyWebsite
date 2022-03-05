import 'package:flutter/material.dart';

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