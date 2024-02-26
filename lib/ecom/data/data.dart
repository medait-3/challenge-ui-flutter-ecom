// data.dart



class Product {
  final int  id ;
  final String name;
  final String prix;
  final String image;
  final bool fav;
  final String category;
  final List<String> img;

  Product({
    required this.id,
    required this.name,
    required this.prix,
    required this.image,
    required this.fav,
    required this.category,
    required this.img,
  });
}

final List<Product> productList = [
  
  Product(
    id:1,
    name: "nike1",
    prix: "143.23",
    image: "assets/nike/nike1.png",
    fav: false,
    category: "assets/marks/nike.png",
    img: [
"assets/nike/nike1.png","assets/nike/nike1.png","assets/nike/nike1.png","assets/nike/nike1.png",
    ],
  ),
  Product(
    id:2,
    name: "adidas1",
    prix: "243.23",
    image: "assets/adidas/adidas1.png",
    fav: false,
    category: "assets/marks/adidas.png",
    img: [
"assets/adidas/adidas1.png","assets/adidas/adidas1.png","assets/adidas/adidas1.png","assets/adidas/adidas1.png",
    ],
  ),
  Product(
    id:3,
    name: "puma1",
    prix: "343.23",
    image: "assets/puma/puma1.png",
    fav: false,
    category: "assets/marks/puma.png",
    img: [
"assets/puma/puma1.png","assets/puma/puma1.png","assets/puma/puma1.png","assets/puma/puma1.png",
    ],
  ),
  Product(
    id:4,
    name: "jordan1",
    prix: "343.23",
    image: "assets/puma/puma1.png",
    fav: false,
    category: "assets/marks/jordan.png",
    img: [
"assets/puma/puma1.png","assets/puma/puma1.png","assets/puma/puma1.png","assets/puma/puma1.png",
    ],
  ),
  Product(
    id:5,
    name: "reebok1",
    prix: "343.23",
    image: "assets/puma/puma1.png",
    fav: false,
    category: "assets/marks/reebok.png",
    img: [
"assets/puma/puma1.png","assets/puma/puma1.png","assets/puma/puma1.png","assets/puma/puma1.png",
    ],
  ),
];


List brandes = [
  {"lable": "Nike", "image": "assets/marks/nike.png"},
  {"lable": "Adidas", "image": "assets/marks/adidas.png"},
  {"lable": "Puma", "image": "assets/marks/puma.png"},
  {"lable": "Reebok", "image": "assets/marks/reebok.png"},
  {"lable": "Jordan", "image": "assets/marks/jordan.png"},
];