class ProductDataModel {
  final String category;
  final String name;
  final String price;
  final String imageUrl;
  ProductDataModel({
    required this.category,
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'category': category,
      'name': name,
      'price': price,
      'imageUrl': imageUrl,
    };
  }

  factory ProductDataModel.fromMap(Map<String, dynamic> map) {
    return ProductDataModel(
      category: map['category'] ?? '',
      name: map['name'] ?? '',
      price: map['price'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
    );
  }
}
