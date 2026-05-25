class Product {
  final int id;
  final String title; // ← API uses 'title' not 'name'
  final String description;
  final double price;
  final String image; // ← API uses 'thumbnail' not 'imageUrl'

  const Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
  });

  // ← add this to convert JSON to Product
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: (json['price'] as num).toDouble(),
      image: json['thumbnail'],
    );
  }
}
