final otherProjectList = [
  OtherProjectModel(
    id: 0,
    title: "Yas",
    detail: "Yechi",
    image: [
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
    ]
  ),
  OtherProjectModel(
      id: 1,
      title: "Therappy",
      detail: "An application that has a physiological post, multiple test, useful books and ...  ",
      image: [
        './assets/therappy/1.jpg',
            './assets/therappy/2.jpg',
            './assets/therappy/3.jpg',
            './assets/therappy/4.jpg',
            './assets/therappy/5.jpg',
            './assets/therappy/7.jpg',
            './assets/therappy/8.jpg',
      ]
  ),
  OtherProjectModel(
      id: 2,
      title: "Payatam",
      detail: "",
      image: [
        ''
      ]
  ),
];

class OtherProjectModel {
  int id;
  String title;
  String detail;
  List<String> image;

  OtherProjectModel({
    this.id,
    this.title,
    this.detail,
    this.image,
  });
}
