class ControlModel {
  String title;
  String image;
  String image2;

  ControlModel({
    required this.title,
    required this.image,
    required this.image2
  });
}

List<ControlModel> controlList = [
  ControlModel(title: 'If else', image: 'assets/images/c1.jpg', image2: 'assets/images/c11.jpg'),
  ControlModel(title: 'Switch', image: 'assets/images/c2.jpg', image2: 'assets/images/null.jpg'),
  ControlModel(title: 'For Loop', image: 'assets/images/c3.jpg', image2: 'assets/images/c33.jpg'),
  ControlModel(title: 'While Loop', image: 'assets/images/c4.jpg', image2: 'assets/images/c44.jpg'),
  ControlModel(title: 'Do-While Loop', image: 'assets/images/c5.jpg', image2: 'assets/images/c55.jpg'),
  ControlModel(title: 'Break', image: 'assets/images/c6.jpg', image2: 'assets/images/c66.jpg'),
  ControlModel(title: 'Continue', image: 'assets/images/c7.jpg', image2: 'assets/images/c77.jpg'),
  ControlModel(title: 'Goto', image: 'assets/images/c8.jpg', image2: 'assets/images/null.jpg'),
];