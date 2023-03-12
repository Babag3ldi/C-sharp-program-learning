class ObjModel {
  String title;
  String image;
  String image2;

  ObjModel({
    required this.title,
    required this.image,
    required this.image2
  });
}

List<ObjModel> objList = [
  ObjModel(title: 'Object And Class', image: 'assets/images/o1.jpg', image2: 'assets/images/o11.jpg'),
  ObjModel(title: 'Constructor', image: 'assets/images/o2.jpg', image2: 'assets/images/null.jpg'),
  ObjModel(title: 'Distructor', image: 'assets/images/o3.jpg', image2: 'assets/images/null.jpg'),
  ObjModel(title: 'this', image: 'assets/images/o4.jpg', image2: 'assets/images/null.jpg'),
  ObjModel(title: 'static', image: 'assets/images/o5.jpg', image2: 'assets/images/null.jpg'),
  ObjModel(title: 'Enum', image: 'assets/images/o6.jpg', image2: 'assets/images/null.jpg'),
];