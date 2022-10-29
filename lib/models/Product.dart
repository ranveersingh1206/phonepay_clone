class Product {
  final int id;
  final String productName;
  final String productImage;
  final String productDescription;
  final double price;
  bool fav;

  Product({
    required this.id,
    required this.productImage,
    required this.productName,
    required this.productDescription,
    required this.price,
    required this.fav,
  });
}
