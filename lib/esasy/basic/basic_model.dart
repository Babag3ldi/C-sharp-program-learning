class BasicModel {
  String title;
  String image;
  String image2;

  BasicModel({
    required this.title,
    required this.image,
    required this.image2
  });
}

List<BasicModel> basicList = [
  BasicModel(title: 'Learn C#', image: 'assets/images/b1.jpg', image2: 'assets/images/b11.jpg'),
  BasicModel(title: 'History Of C#', image: 'assets/images/b2.jpg', image2: 'assets/images/null.jpg'),
  BasicModel(title: 'Features Of C#', image: 'assets/images/b3.jpg', image2: 'assets/images/b33.jpg'),
  BasicModel(title: 'Variable Of C#', image: 'assets/images/b4.jpg', image2: 'assets/images/null.jpg'),
  BasicModel(title: 'C# Data Types', image: 'assets/images/b5.jpg', image2: 'assets/images/null.jpg'),
  BasicModel(title: 'C# Operator', image: 'assets/images/b6.jpg', image2: 'assets/images/null.jpg'),
  BasicModel(title: 'C# KeyWords', image: 'assets/images/b7.jpg', image2: 'assets/images/null.jpg'),
];