class FunctModel {
  String title;
  String image;
  String image2;

  FunctModel({
    required this.title,
    required this.image,
    required this.image2
  });
}

List<FunctModel> funList = [
  FunctModel(title: 'Function', image: 'assets/images/f1.jpg', image2: 'assets/images/f11.jpg'),
  FunctModel(title: 'Call by Value', image: 'assets/images/f2.jpg', image2: 'assets/images/f22.jpg'),
  FunctModel(title: 'Call by Reference', image: 'assets/images/f3.jpg', image2: 'assets/images/f33.jpg'),
  FunctModel(title: 'Array', image: 'assets/images/f4.jpg', image2: 'assets/images/f44.jpg'),
  FunctModel(title: 'Array to Function', image: 'assets/images/f5.jpg', image2: 'assets/images/null.jpg'),
  FunctModel(title: 'Multidimensional Arrays', image: 'assets/images/f6.jpg', image2: 'assets/images/null.jpg'),
  FunctModel(title: 'Array Class', image: 'assets/images/f7.jpg', image2: 'assets/images/null.jpg'),
];