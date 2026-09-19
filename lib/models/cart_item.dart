class CartItem {
  final String id;
  final String title;
  final double price;
  final String company;
  final String imageUrl;
  final int size;

  CartItem({
    required this.id,
    required this.title,
    required this.price,
    required this.company,
    required this.imageUrl,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'company': company,
      'image_url': imageUrl,
      'size': size,
    };
  }

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      id: json['id'] as String,
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      company: json['company'] as String,
      imageUrl: json['image_url'] as String,
      size: json['size'] as int,
    );
  } 
}