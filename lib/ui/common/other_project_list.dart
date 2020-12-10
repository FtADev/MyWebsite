final otherProjectList = [
  OtherProjectModel(
    id: 0,
    title: "Yas",
    detail: "A charity application that collect money, equipments, ... from a person who wants to help others.",
    isHorizontal: false,
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
      detail: "A psychology application that has multiple personality tests, related posts, useful books, and ...",
      isHorizontal: false,
      image: [
        './assets/therappy/1.jpg',
            './assets/therappy/2.jpg',
            './assets/therappy/4.jpg',
            './assets/therappy/5.jpg',
            './assets/therappy/7.jpg',
            './assets/therappy/8.jpg',
      ]
  ),
  OtherProjectModel(
      id: 2,
      title: "Payatam (PartnerYab)",
      detail: "An application to find a teammate in sports, class, ...",
      isHorizontal: false,
      image: [
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
      ]
  ),
];

class OtherProjectModel {
  int id;
  String title;
  String detail;
  List<String> image;
  bool isHorizontal = false;

  OtherProjectModel({
    this.id,
    this.title,
    this.detail,
    this.image,
    this.isHorizontal,
  });
}
