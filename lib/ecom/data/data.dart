// data.dart



class Product {
  final String name;
  final String prix;
  final String image;
  final String category;
  final List<String> img;

  Product({
    required this.name,
    required this.prix,
    required this.image,
    required this.category,
    required this.img,
  });
}

final List<Product> productList = [
  
  Product(
    name: "nike1",
    prix: "143.23",
    image: "assets/nike/nike1.png",
    category: "assets/marks/nike.png",
    img: [
"assets/nike/nike1.png","assets/nike/nike1.png","assets/nike/nike1.png","assets/nike/nike1.png",
    ],
  ),
  Product(
    name: "adidas1",
    prix: "243.23",
    image: "assets/adidas/adidas1.png",
    category: "assets/marks/adidas.png",
    img: [
"assets/adidas/adidas1.png","assets/adidas/adidas1.png","assets/adidas/adidas1.png","assets/adidas/adidas1.png",
    ],
  ),
  Product(
    name: "puma1",
    prix: "343.23",
    image: "assets/puma/puma1.png",
    category: "assets/marks/puma.png",
    img: [
"assets/puma/puma1.png","assets/puma/puma1.png","assets/puma/puma1.png","assets/puma/puma1.png",
    ],
  ),
  Product(
    name: "jordan1",
    prix: "343.23",
    image: "assets/puma/puma1.png",
    category: "assets/marks/jordan.png",
    img: [
"assets/puma/puma1.png","assets/puma/puma1.png","assets/puma/puma1.png","assets/puma/puma1.png",
    ],
  ),
  Product(
    name: "reebok1",
    prix: "343.23",
    image: "assets/puma/puma1.png",
    category: "assets/marks/reebok.png",
    img: [
"assets/puma/puma1.png","assets/puma/puma1.png","assets/puma/puma1.png","assets/puma/puma1.png",
    ],
  ),
];
