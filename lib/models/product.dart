class Product {
  final int id;
  final String title;
  final String description;
  final num price;
  final String thumbnail;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.thumbnail,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    price: json['price'],
    thumbnail: json['thumbnail'],
  );
}
