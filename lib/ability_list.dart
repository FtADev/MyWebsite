final abilitiesList = [
  AbilityModel(name: "Android", iconPath: "assets/android.png"),
  AbilityModel(name: "Flutter", iconPath: "assets/flutter.png"),
  AbilityModel(name: "Kotlin", iconPath: "assets/kotlin.png"),
  AbilityModel(name: "Java", iconPath: "assets/java.png"),
  AbilityModel(name: "GNU/Linux", iconPath: "assets/gnulin.png"),
  AbilityModel(name: "Git", iconPath: "assets/git.jpeg"),
  AbilityModel(name: "Mysql", iconPath: "assets/mysql.png"),
  AbilityModel(name: "IoT", iconPath: "assets/iot.png"),
];

class AbilityModel {
  String name;
  String iconPath;
  String detail;

  AbilityModel({this.name, this.iconPath, this.detail});
}
