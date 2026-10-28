class ProductModel {
  final String image;
  final String name;
  final double price;
  final String description;

  ProductModel({
    required this.image,
    required this.name,
    required this.price,
    required this.description,
  });

 static List<ProductModel> products = [
    ProductModel(
      image: "images/products/product6.png",
      name: "October",
      price: 120,
      description: "reversible angora cardigan",
    ),
    ProductModel(
      image: "images/products/product1.png",
      name: "October",
      price: 100,
      description: "mnemo",
    ),
    ProductModel(
      image: "images/products/product2.png",
      name: "October",
      price: 50,
      description: "mnemo",
    ),
    ProductModel(
      image: "images/products/product3.png",
      name: "October",
      price: 70,
      description: "reversible angora cardigan",
    ),
    ProductModel(
      image: "images/products/product4.png",
      name: "October",
      price: 65,
      description: "reversible angora cardigan",
    ),
    ProductModel(
      image: "images/products/product5.png",
      name: "October",
      price: 150,
      description: "reversible angora cardigan",
    ),
  ];
}
