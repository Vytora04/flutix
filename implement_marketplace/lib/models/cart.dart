class CartItem {
  final String id;
  final String title;
  int quantity;
  final double price;

  CartItem({
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
  });

  // JSON serialization
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'quantity': quantity,
    'price': price,
  };

  factory CartItem.fromJson(Map<String, dynamic> json) => CartItem(
    id: json['id'],
    title: json['title'],
    quantity: json['quantity'],
    price: json['price'],
  );
}
