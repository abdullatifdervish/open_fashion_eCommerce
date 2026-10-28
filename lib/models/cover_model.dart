class CoverModel {
  final String image;
  final String name;

  CoverModel({required this.image, required this.name});

  static List<CoverModel> cover = [
    CoverModel(image: "images/cover/cover1.png", name: "Black collection"),
    CoverModel(image: "images/cover/cover2.png", name: "HAE BY HAEKIM"),
    CoverModel(image: "images/cover/cover.png", name: "HAE BY HAEKIM"),
  ];
}
